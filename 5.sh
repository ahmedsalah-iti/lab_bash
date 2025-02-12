#!/usr/bin/bash
#mymail

if [ -f mtemplate ]
then
    
    for i in `awk -F: '{print $1}' /etc/passwd`
    do
        echo "sending test message to -> [$i]"
        cat mtemplate | mail -s "hi $i this is test msg to all users." $i >> /dev/null
        #cat mtemplate | mail -s "hi root this is test msg to all users." root
    done

else
    echo "mtemplate file isn't found ! "
fi
