FROM gcr.io/buildpacks/builder
USER root
RUN chmod 777 /layers
RUN chmod 777 -R /home/cnb/
RUN mkdir /home/cnb/.m2
COPY ./code/settings.xml /home/cnb/.m2/settings.xml
RUN mkdir /tmp/code
COPY ./code/ /tmp/code
