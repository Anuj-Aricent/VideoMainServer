#! /bin/sh
#

# Carry out specific functions when asked to by the system
case "$1" in
  start)
    nohup python /opt/dtedge/VideoMainServer/mainServer.py > /var/log/mainServer.log 2>&1 &
    ;;
  stop)
    killall python
    ;;
  *)
    echo "Usage: /etc/init.d/start_app.sh {start|stop}"
    exit 1
    ;;
esac

exit 0
