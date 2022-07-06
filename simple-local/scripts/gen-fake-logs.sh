#!/bin/bash

LOG_FILE="fake.log"

while true ;
do
    stamp=$(date -Iseconds)
    foo=$(shuf -i0-6 -n1)
    case "$foo" in
        "0") echo "$stamp kamailio INFO: core/forward.h blah" | tee -a $LOG_FILE
        ;;
        "1") echo "$stamp kamailio INFO: failed to reply to stateful blah" | tee -a $LOG_FILE
        ;;
        "2") echo "$stamp kamailio WARN: tcp_read_req: error reading" | tee -a $LOG_FILE
        ;;
        "3") echo "$stamp kamailio WARN: SSL routines:ssl3_read_bytes:sslv3 alert bad certificate" | tee -a $LOG_FILE
        ;;
        "4") echo "$stamp kamailio ERROR: blah blah blah" | tee -a $LOG_FILE
        ;;
        "5") echo "$stamp kamailio INFO: destination down: OPTIONS foo" | tee -a $LOG_FILE
        ;;
        "6") echo "$stamp kamailio INFO: core/tcp_main send_fd_queue_run(): send_fd failed on socket" | tee -a $LOG_FILE
        ;;
    esac
    sleep .5s
done
