FROM gcr.io/buildpacks/builder
RUN chmod 777 /layers

ENTRYPOINT ["tail","-f","/dev/null"]
