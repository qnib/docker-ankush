FROM qnib/java8:fd22

RUN dnf install -y bsdtar maven net-tools
RUN curl -sLf https://github.com/impetus-opensource/ankush/archive/v2.0.10.zip|bsdtar xf - -C /opt/
RUN mv /opt/ankush-2.0.10 /opt/ankush
RUN cd /opt/ankush/ && mvn package

