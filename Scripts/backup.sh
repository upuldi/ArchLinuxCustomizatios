#!/bin/bash

if [ $# -lt 1 ]; then 
    echo "No destination defined. Usage: $0 destination" >&2
    exit 1
elif [ $# -gt 1 ]; then
    echo "Too many arguments. Usage: $0 destination" >&2
    exit 1
elif [ ! -d "$1" ]; then
   echo "Invalid path: $1" >&2
   exit 1
elif [ ! -w "$1" ]; then
   echo "Directory not writable: $1" >&2
   exit 1
fi

#case "$1" in
# "/mnt") ;;
#  "/mnt/"*) ;;
#  "/media") ;;
#  "/media/"*) ;;
#  *) echo "Destination not allowed." >&2 
#     exit 1 
#     ;;
#esac

START=$(date +%s)
rsync -aAXvs /* $1 --exclude={/dev/*,/proc/*,/sys/*,/tmp/*,/run/*,/mnt/*,/media/*,/lost+found,/var/lib/pacman/sync/*,/var/log/journal/*,/home/*/.thumbnails/*,/home/udoluweera/.davfs2/cache/*,/home/*/.mozilla/firefox/*.default/Cache/*,/home/*/.cache/chromium/*,/home/*/.cache/google-chrome/*,/home/udoluweera/.mozilla/firefox/*/Cach/*,/home/udoluweera/.thumbnails/*,/home/udoluweera/.local/share/Trash/*,/home/udoluweera/.local/share/user-places*/*,/home/udoluweera/.cache/*,/home/udoluweera/.config/chromium/*,/home/udoluweera/.mozilla/*,/home/udoluweera/Software/*,/home/udoluweera/webdav/*,/home/udoluweera/VirtualBox\ VMs/*,/home/udoluweera/Linux\ Distros/*,/home/udoluweera/Downloads/*,/home/udoluweera/SVN/*,/home/udoluweera/TempWork/*,/home/udoluweera/Documents/*,/home/udoluweera/IELTS\ SPEAKING\ VIDEO/*,/home/udoluweera/Pictures/*,/home/udoluweera/Flareget/*,/home/udoluweera/Experiements/*,/home/udoluweera/Music/*,/home/udoluweera/Torrents/*,/home/udoluweera/Servers/*,/home/udoluweera/Servers/shipx-prod-apache-tomcat-5.5.28/webapps/*} --include={/home/udoluweera/Servers/shipx-prod-apache-tomcat-5.5.28/}
FINISH=$(date +%s)
echo "total time: $(( ($FINISH-$START) / 60 )) minutes, $(( ($FINISH-$START) % 60 )) seconds" | tee $1/"Backup from $(date '+%A, %d %B %Y, %T')"