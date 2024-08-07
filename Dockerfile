FROM paketobuildpacks/builder-jammy-full
USER root

RUN mkdir /platform/bindings
RUN mkdir /platform/bindings/maven-settings
RUN echo -n "maven" > /platform/bindings/maven-settings/type
COPY ./code/settings.xml /platform/bindings/maven-settings/settings.xml
RUN mkdir /.m2

RUN chmod 777 -R /platform
RUN chmod 777 -R /.m2

