FROM gcr.io/buildpacks/builder
RUN apt update
RUN apt install git
RUN apt install curl

ENTRYPOINT ["tail","-f","/dev/null"]
