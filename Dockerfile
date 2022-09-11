ARG IMAGE=intersystemsdc/iris-community:2021.2.0.617.0-zpm
FROM $IMAGE

USER root
RUN apt-get update && apt-get install -y curl && apt-get install -y unzip
RUN pip3 install --target /usr/irissys/mgr/python/ openpyxl
WORKDIR /opt/irisapp
RUN chown ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} /opt/irisapp
USER ${ISC_PACKAGE_MGRUSER}

COPY  src src
COPY module.xml module.xml
COPY iris.script /tmp/iris.script

RUN iris start IRIS \
	&& iris session IRIS < /tmp/iris.script \
    && iris stop IRIS quietly
