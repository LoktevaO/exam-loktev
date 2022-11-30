cd".."
cd "/var/exam"
git clone git@github.com:LoktevaO/exam-loktev.git
touch /var/exam/exam-loktev/hosts
cd ".."
cd "/root/site"

git checkout main
git clone https://gitlab.com/staskuznetsov/site.git /var/exam/exam-loktev/site -b main
echo 40.113.116.5> /var/exam/exam-loktev/hosts
ansible-playbook -i /var/exam/exam-loktev/hosts /var/exam/exam-loktev/playbook.yml

git checkout dev
git clone https://gitlab.com/staskuznetsov/site.git /var/exam/exam-loktev/site -b dev
echo 13.80.138.171> /var/exam/exam-loktev/hosts
ansible-playbook -i /root/exam-loktev/hosts /var/exam/exam-loktev/playbook.yml

git checkout feature
git clone https://gitlab.com/staskuznetsov/site.git /varexam/exam-loktev/site -b feature
echo 20.107.209.6> /var/exam/exam-loktev/hosts
ansible-playbook -i /var/exam/exam-loktev/hosts /var/exam/exam-loktev/playbook.yml
