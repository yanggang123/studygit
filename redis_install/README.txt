������
host  ����
url   ��װ����ַ
port  ���ö˿�
path  ��װ·�� 

��װ
ansible-playbook install.yml --extra-vars "{'host':'10.86.87.177','url':'http://mon.evun.cn/evunsoft/redis-3.2.0/redis-3.2.0.tar.gz','port':'6379','path':'/usr/local/redis-dms'}"
����
ansible-playbook start.yml --extra-vars "{'host':10.86.87.177,'port':'6379'}"
ֹͣ
ansible-playbook stop.yml --extra-vars "{'host':10.86.87.177,'port':'6379'}"
����
ansible-playbook restart.yml --extra-vars "{'host':10.86.87.177,'port':'6379'}"