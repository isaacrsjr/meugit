FROM centos
LABEL maintainer="Isaac Roque Sartori Junior <isaacrsjr@hotmail.com>"
VOLUME [ "/fontes" ]
RUN yum update -y && \
    yum install git git-svn -y && \
    yum clean all
WORKDIR /fontes
ENTRYPOINT ["git"]
CMD ["--help"]