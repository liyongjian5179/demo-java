FROM openjdk:8
LABEL maintainer="liyongjian5179@163.com"
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
COPY init.sh /init.sh
COPY target/demo-java-1.0.0.jar /usr/local/demo-java-1.0.0.jar
EXPOSE 8080
#ENTRYPOINT ["/bin/sh", "/init.sh"]
CMD ["/bin/sh", "/init.sh"]
