FROM gcr.io/buildpacks/builder
USER root
RUN chmod 777 /layers
RUN mkdir /home/cnb/.m2
COPY ./code/settings.xml /home/cnb/.m2/settings.xml
RUN chmod 777 -R /home/cnb/
RUN mkdir /tmp/code
COPY ./code/ /tmp/code

RUN mkdir /platform/bindings
RUN mkdir /platform/bindings/maven-settigns
RUN touch /platform/bindings/maven-settings/type
RUN echo -n "maven" > /platform/bindings/maven-settings/type
COPY ./code/settings.xml /platform/bindings/maven-settigns/settings.xml

RUN chomd 777 -R /platform
