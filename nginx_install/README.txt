����������
host   ����
port   nginx�����˿�
path   nginx��װ·��
user   master���������û�

��װ
ansible-playbook install.yml --extra-vars "{'host':'10.86.87.177','port':'80','user':'nginx','path':'/usr/local/nginx','url':'http://10.86.87.142/evunsoft/ansible-nginx/nginx-1.9.3.tar.gz'}"

����
ansible-playbook start.yml --extra-vars  "{'host':'10.86.87.177'}"
ֹͣ
ansible-playbook stop.yml --extra-vars  "{'host':'10.86.87.177'}"
����
ansible-playbook restart.yml --extra-vars  "{'host':'10.86.87.177'}"