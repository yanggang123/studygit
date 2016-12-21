给定参数：
host   主机
port   nginx监听端口
path   nginx安装路径
user   master进程启动用户

安装
ansible-playbook install.yml --extra-vars "{'host':'10.86.87.177','port':'80','user':'nginx','path':'/usr/local/nginx','url':'http://10.86.87.142/evunsoft/ansible-nginx/nginx-1.9.3.tar.gz'}"

启动
ansible-playbook start.yml --extra-vars  "{'host':'10.86.87.177'}"
停止
ansible-playbook stop.yml --extra-vars  "{'host':'10.86.87.177'}"
重启
ansible-playbook restart.yml --extra-vars  "{'host':'10.86.87.177'}"