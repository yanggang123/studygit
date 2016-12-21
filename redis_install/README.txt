参数：
host  主机
url   安装包地址
port  启用端口
path  安装路径 

安装
ansible-playbook install.yml --extra-vars "{'host':'10.86.87.177','url':'http://mon.evun.cn/evunsoft/redis-3.2.0/redis-3.2.0.tar.gz','port':'6379','path':'/usr/local/redis-dms'}"
启动
ansible-playbook start.yml --extra-vars "{'host':10.86.87.177,'port':'6379'}"
停止
ansible-playbook stop.yml --extra-vars "{'host':10.86.87.177,'port':'6379'}"
重启
ansible-playbook restart.yml --extra-vars "{'host':10.86.87.177,'port':'6379'}"