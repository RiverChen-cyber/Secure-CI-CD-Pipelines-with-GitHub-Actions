FROM alpine:latest

RUN  apk --no-cache add openjdk11 git

RUN \ 
    git clone https://github.com/RiverChen-cyber/Secure-CI-CD-Pipelines-with-GitHub-Actions.git && \
    cd Secure-CI-CD-Pipelines-with-GitHub-Actions && \
    ./mvnw clean package

WORKDIR /Secure-CI-CD-Pipelines-with-GitHub-Actions

CMD ["./mvnw","cargo:run","-P tomcat90"]

EXPOSE 8080
