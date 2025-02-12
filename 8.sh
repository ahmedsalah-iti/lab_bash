#!/usr/bin/bash
select options in "press 1 to ls." "press 2 to ls -a" "press 3 to exit"
do
case $options in
"press 1 to ls.")
    ls
;;
"press 2 to ls -a")
    ls -a
;;
"press 3 to exit")
    echo "exit done"
    exit
;;
*)
    echo "invalid input"
;;
esac
done