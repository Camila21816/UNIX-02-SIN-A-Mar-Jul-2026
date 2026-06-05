#!/usr/bin/env bash
# top #It displays a real-time list of all processes running on the system, sorted by CPU usage by default.
# top& #It tries to run the top monitor, but tells the system: "run this in the background and give me back control of the terminal immediately."

touch test && touch test123
(ls; ps)
ls; ps; whoami
lzl || echo "El comando lzl falló"

echo "Hello World!" > output.txt
cat output.txt
echo "Chao mundo" > output.txt
 cat output.txt
 echo "Chao chao  mundo" >> output.txt
cat output.txt

ls -l / &> stdout_and_stderr.txt
cat stdout_and_stderr.txt
ls -l / &>> stdout_and_stderr.txt
cat stdout_and_stderr.txt
ls -l / 1> stdout.txt 2> stderr.txt
cat stdout.txt
lzl 2> error.txt
cat error.txt

cat < output.txt
cat << EOF
    Black hat Bash
    by No starch Press
EOF

ls -l
ls -l / | grep "bin"
