#!/bin/sh

REPOSITORY=/home/barnacker/backup
LOG=/home/barnacker/backup.log

echo "START-BACKUP >>>>>>>>>>>>>>>>>>>" | tee -a $LOG

#Bail if borg is already running, maybe previous run didn't finish
if pidof -x borg >/dev/null; then
    echo "Backup already running" | tee -a $LOG
    echo "END-BACKUP   >>>>>>>>>>>>>>>>>>>" | tee -a $LOG
    exit
fi

# Setting this, so you won't be asked for your repository passphrase:
export BORG_PASSPHRASE='yourpassphrase'
# or this to ask an external program to supply the passphrase:
#export BORG_PASSCOMMAND='pass show backup'

# Backup all of /home and /var/www except a few
# excluded directories
borg create -v --stats --compression lz4        \
    $REPOSITORY::'{hostname}-{now:%Y-%m-%d-%H}'    \
    /home/barnacker                             \
    --exclude '/home/barnacker/.cache'                \
    --exclude '/home/barnacker/Downloads'             \
    --exclude '/home/barnacker/Videos'                \
    --exclude '/home/barnacker/Music'                 \
    --exclude '/home/barnacker/backup' \
    2>&1| tee -a $LOG

# Use the `prune` subcommand to maintain 7 daily, 4 weekly and 6 monthly
# archives of THIS machine. The '{hostname}-' prefix is very important to
# limit prune's operation to this machine's archives and not apply to
# other machine's archives also.
borg prune -v --list $REPOSITORY --prefix '{hostname}-' \
    --keep-hourly=24 --keep-daily=7 --keep-weekly=4 --keep-monthly=12  \
    --keep-yearly=1 \
    2>&1| tee -a $LOG

rclone sync -v ./backup remote:barnaback 2>&1| tee -a $LOG

echo "END-BACKUP   >>>>>>>>>>>>>>>>>>>" | tee -a $LOG
