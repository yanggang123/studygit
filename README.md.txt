jdk��װ����
ansible-playbook jdk.yml --extra-vars "{'host':'10.86.87.173','jdk_version':'sap-jdk1.7.0_79'}"
ansible-playbook jdk-new.yml --extra-vars "{'host':'10.86.95.28','url':'http://10.86.87.142/evunsoft/ansiblesoft/sap-jdk1.7.0_79.tar.gz'}"

�����
host: 10.86.87.112                  #Ŀ������
jdk_version: sap-jdk1.7.0_79        #jdk�汾��ʹ��jdk.yml��
���ߣ�
url:                                #jdk����url��ʹ��jdk-new.yml��

jdk��װ��������
jdk��ѹ�����������jdkѹ��������һ�¡�(ʹ��jdk.yml��
jdk��ѹ���ܴ����ļ��С���ʹ��jdk-new.yml��

----------------------------------------------------
tomcat��װ���� 
ansible-playbook tomcat-install.yml --extra-vars "{'host':'10.86.87.112', 'tomcat_home':'/geelyapp/tomcat-mes', 'url':'http://10.86.87.142/evunsoft/ansiblesoft/tomcat.tar.gz'}"

�����
host: 10.86.87.112                                    #Ŀ������
tomact_home: /geelyapp/tomcat-mes                     #tomcat��װ·��
url: http://10.86.87.142/evunsoft/tomcat.tar.gz       #�������·��
tomcat_close_port: 8005                               #tomcat�رն˿ڣ�ͬһ̨�����������ظ�
tomcat_app_port: 8080                                 #tomcat�����˿ڣ�ͬһ̨�����������ظ�
jmx_port: 7091                                        #jmx��ض˿ڣ�ͬһ̨�����������ظ�
java_home: /usr/local/java                            #�ɽ��ղ������Զ���java·��

tomcat��װ��������
��ѹ���ܴ����ļ���

ע�⣺
1��playbook��װʹ�õ���������밴��˾��׼�����ã��ŵ�������С�
��ʱ����⣺10.86.87.150  /var/www/html/evunsoft/ansiblesoft

-----------------------------------------------------
tomcat������ֹͣ
ansible-playbook main.yml --tags "start" --extra-vars  "{'host':'10.86.87.112', 'tomcat_home':'/geelyapp/tomcat-mes'}"
ansible-playbook main.yml --tags "stop"  --extra-vars  "{'host':'10.86.87.112', 'tomcat_home':'/geelyapp/tomcat-mes'}"
ansible-playbook main.yml --tags "restart" --extra-vars  "{'host':'10.86.87.112', 'tomcat_home':'/geelyapp/tomcat-mes'}"

�����
host: 10.86.87.112                                    #Ŀ������
tomact_home: /geelyapp/tomcat-mes                     #tomcat����·��
java_home: /usr/local/java                            #�ɽ��ղ������Զ���java·��

tomcatӦ�ò���
ansible-playbook main.yml --tags "deploy" --extra-vars  "{'host':'10.86.87.112', 'project_name':'mes', 'url':'http://10.86.87.142/evunsoft/mes.war', 'tomcat_home':'/geelyapp/tomcat-mes'}"

�����
host: 10.86.87.112                                    #Ŀ������
tomact_home: /geelyapp/tomcat-mes                     #tomcat����·��
project_name: mes                                     #app���ƣ���war������һ��
url: http://10.86.87.142/evunsoft/mes.war             #war������·��
java_home: /usr/local/java                            #�ɽ��ղ������Զ���java·��

