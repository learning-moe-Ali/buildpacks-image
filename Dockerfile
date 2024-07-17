FROM paketobuildpacks/builder:base
USER root

RUN mkdir /platform/bindings
RUN mkdir /platform/bindings/maven-settings
RUN echo -n "maven" > /platform/bindings/maven-settings/type
COPY ./code/settings.xml /platform/bindings/maven-settings/settings.xml

RUN chmod 777 -R /platform

