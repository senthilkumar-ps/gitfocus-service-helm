FROM adoptopenjdk
RUN apt-get -y update
RUN apt-get -y install git
RUN mkdir /home/springprofile
WORKDIR /home/springprofile
RUN git clone https://github.com/senthilkumar-ps/springprofile.git
WORKDIR /home/springprofile/springprofile
#EXPOSE 8888
ENTRYPOINT ["java","-jar","/home/springprofile/springprofile/Springbootprofiles-0.0.1-SNAPSHOT.jar"]