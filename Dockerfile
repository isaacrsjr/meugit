FROM centos
# argumentos usados para o build
# docker build -t meugit --build-arg userName='' --build-arg email='' .
ARG userName
ARG email
LABEL maintainer="Isaac Roque Sartori Junior <isaacrsjr@hotmail.com>" \
      description="Container para usar git em qualquer S.O."
VOLUME [ "/fontes" ]
RUN yum update -y && \
    yum install git git-svn -y && \
    yum clean all && \
    git config --global user.name "${userName}"; \
    git config --global user.email "${email}"
WORKDIR /fontes
ENTRYPOINT ["git"]
CMD ["--help"]