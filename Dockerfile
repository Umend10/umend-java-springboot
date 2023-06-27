FROM oraclelinux:8.4 
LABEL name=umend-maven
RUN dnf install java-1.8.0-openjdk.x86_64 java-1.8.0-openjdk-devel.x86_64 maven git  -y 
RUN mkdir /umend-project
WORKDIR /umend-project
RUN git clone https://github.com/redashu/umend-java-springboot.git
WORKDIR umend-java-springboot
RUN mvn clean package
