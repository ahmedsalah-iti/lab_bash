    #!/usr/bin/bash
    mymail="/var/mail/as"

    old_mailsize=$(du -b "$mymail" | awk '{print $1}' )

    while true
    do
            current_mailsize=$(du -b "$mymail" | awk '{print $1}' )
            if [[ $current_mailsize -gt $old_mailsize ]]
            then
                    echo "you have new message"
                    old_mailsize=$current_mailsize
            else
                echo "No message yet"
            fi

            sleep 10
    done
