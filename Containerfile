# CoreOS Base
FROM fedora:latest
# Install httpd
#RUN echo "Installing httpd"; yum -y install httpd
RUN yum install -y emacs
# Expose the default httpd port 80
EXPOSE 80
# Run httpd
#CMD ["/usr/sbin/httpd", "-DFOREGROUND"]
RUN yum install python3-pip -y
RUN yum install python-devel -y
RUN yum install python3.8 -y
COPY install_ollama.sh /opt/
WORKDIR /opt
RUN ./install_ollama.sh
COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
CMD ["/bin/bash"]
