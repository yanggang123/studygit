jdk安装命令
ansible-playbook jdk.yml --extra-vars "{'host':'10.86.87.173','jdk_version':'sap-jdk1.7.0_79'}"
ansible-playbook jdk-new.yml --extra-vars "{'host':'10.86.95.28','url':'http://10.86.87.142/evunsoft/ansiblesoft/sap-jdk1.7.0_79.tar.gz'}"

必填项：
host: 10.86.87.112                  #目标主机
jdk_version: sap-jdk1.7.0_79        #jdk版本（使用jdk.yml）
或者：
url:                                #jdk下载url（使用jdk-new.yml）

jdk安装包制作：
jdk解压后的名称需与jdk压缩包名称一致。(使用jdk.yml）
jdk解压后不能带有文件夹。（使用jdk-new.yml）

----------------------------------------------------
tomcat安装命令 
ansible-playbook tomcat-install.yml --extra-vars "{'host':'10.86.87.112', 'tomcat_home':'/geelyapp/tomcat-mes', 'url':'http://10.86.87.142/evunsoft/ansiblesoft/tomcat.tar.gz'}"

必填项：
host: 10.86.87.112                                    #目标主机
tomact_home: /geelyapp/tomcat-mes                     #tomcat安装路径
url: http://10.86.87.142/evunsoft/tomcat.tar.gz       #软件下载路径
tomcat_close_port: 8005                               #tomcat关闭端口，同一台服务器不能重复
tomcat_app_port: 8080                                 #tomcat启动端口，同一台服务器不能重复
jmx_port: 7091                                        #jmx监控端口，同一台服务器不能重复
java_home: /usr/local/java                            #可接收参数，自定义java路径

tomcat安装包制作：
解压后不能带有文件夹

注意：
1、playbook安装使用的软件包必须按公司标准制作好，放到软件库中。
临时软件库：10.86.87.150  /var/www/html/evunsoft/ansiblesoft

-----------------------------------------------------
tomcat启动与停止
ansible-playbook main.yml --tags "start" --extra-vars  "{'host':'10.86.87.112', 'tomcat_home':'/geelyapp/tomcat-mes'}"
ansible-playbook main.yml --tags "stop"  --extra-vars  "{'host':'10.86.87.112', 'tomcat_home':'/geelyapp/tomcat-mes'}"
ansible-playbook main.yml --tags "restart" --extra-vars  "{'host':'10.86.87.112', 'tomcat_home':'/geelyapp/tomcat-mes'}"

必填项：
host: 10.86.87.112                                    #目标主机
tomact_home: /geelyapp/tomcat-mes                     #tomcat运行路径
java_home: /usr/local/java                            #可接收参数，自定义java路径

tomcat应用部署
ansible-playbook main.yml --tags "deploy" --extra-vars  "{'host':'10.86.87.112', 'project_name':'mes', 'url':'http://10.86.87.142/evunsoft/mes.war', 'tomcat_home':'/geelyapp/tomcat-mes'}"

必填项：
host: 10.86.87.112                                    #目标主机
tomact_home: /geelyapp/tomcat-mes                     #tomcat运行路径
project_name: mes                                     #app名称，与war包名称一致
url: http://10.86.87.142/evunsoft/mes.war             #war包下载路径
java_home: /usr/local/java                            #可接收参数，自定义java路径

