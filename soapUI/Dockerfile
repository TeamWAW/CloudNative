FROM java:openjdk-8-jdk
ENV   SOAPUI_VERSION  5.5.0
COPY testcasecheck.sh /opt/bin/testcasecheck.sh
COPY samplerest.xml /opt/samplerest.xml

RUN mkdir -p /opt &&\curl  http://s3.amazonaws.com/downloads.eviware/soapuios/${SOAPUI_VERSION}/SoapUI-${SOAPUI_VERSION}-linux-bin.tar.gz |\gunzip -c - | tar -xf - -C /opt && \ln -s /opt/SoapUI-${SOAPUI_VERSION} /opt/SoapUI

CMD ["/opt/bin/testcasecheck.sh"]