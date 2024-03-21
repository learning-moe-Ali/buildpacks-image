FROM gcr.io/buildpacks/builder
RUN chmod 777 /layers
RUN mkdir /tmp/code
COPY ./code/ /tmp/code

ENTRYPOINT ["tail","-f","/dev/null"]
