


容器挂在了宿主机的docker，docker-compose没有想到怎么挂，所以就自己手动在容器里边安装了

# https://blog.csdn.net/pushiqiang/article/details/78682323

# 下载二进制文件
sudo curl -L https://get.daocloud.io/docker/compose/releases/download/1.25.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
# 添加可执行权限
chmod +x /usr/local/bin/docker-compose

# 测试安装
$ docker-compose --version






# 环境变量直接拷贝如下内容，如果有修改自行调整

# jdk : /usr/src/jdk1.8.0_281
export JAVA_HOME=/usr/src/jdk1.8.0_281
export CLASSPATH=.:$JAVA_HOME/jre/lib/rt.jar:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
export PATH=$PATH:$JAVA_HOME/bin

# maven /usr/src/apache-maven-3.8.1
export MAVEN_HOME=/usr/src/apache-maven-3.8.1
export PATH=${PATH}:${MAVEN_HOME}/bin

# node : /usr/src/node-v14.16.1-linux-x64
export NODE_HOME=/usr/src/node-v14.16.1-linux-x64
export PATH=$PATH:$NODE_HOME/bin

export GOROOT=/usr/src/go
export GOPATH=～/Documents/GoprojectLinux  #路径自定义，多GOPATH以 ： 分割
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOROOT/bin:$GOBIN



jenkins挂在docker可能出现的问题 

Got permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock
…………………………………………………………
dial unix /var/run/docker.sock: connect: permission denied

查看jenkins容器 /var/run/docker.sock的用户组 
然后 groupadd -g 994 docker 创建用户组
最后 gpasswd -a jenkins docker 把jenkins用户添加到docker用户组当中