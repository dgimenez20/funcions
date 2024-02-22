#/bin/bash

ssh -T root@192.168.1.1 <<- EOF
lshw -short>lshw.txt;
cat lshw.txt
EOF
