FROM centos
LABEL maintainer="Isaac Roque Sartori Junior <isaacrsjr@hotmail.com>" \
      description="Container para usar git em qualquer S.O."
VOLUME [ "/fontes" ]
RUN yum update -y && \
    yum install git git-svn -y && \
    yum clean all
WORKDIR /fontes
ENTRYPOINT ["git"]
CMD ["--help"]