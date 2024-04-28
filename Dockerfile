FROM gcr.io/buildpacks/builder
RUN chmod 777 /layers
RUN chmod 777 -R /cnb/
RUN mkdir /tmp/code
COPY ./code/ /tmp/code

ENTRYPOINT ["tail","-f","/dev/null"]
