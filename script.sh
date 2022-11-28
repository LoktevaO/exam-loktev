rm -rf exam-loktev
git clone git@github.com:LoktevaO/exam-loktev.git
touch /root/exam-loktev/hosts
cd ".."
cd "/root/site"

git checkout main
git clone https://gitlab.com/staskuznetsov/site.git /root/site -b main
echo 40.113.116.5> /root/exam-loktev/hosts
ansible-playbook -i /root/exam-loktev/hosts /root/exam-loktev/playbook.yml

git checkout dev
git clone https://gitlab.com/staskuznetsov/site.git /root/site -b dev
echo 13.80.138.171> /root/exam-loktev/hosts
ansible-playbook -i /root/exam-loktev/hosts /root/exam-loktev/playbook.yml

git checkout feature
git clone https://gitlab.com/staskuznetsov/site.git /root/site -b feature
echo 20.107.209.6> /root/exam-loktev/hosts
ansible-playbook -i /root/exam-loktev/hosts /root/exam-loktev/playbook.yml
