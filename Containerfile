# CoreOS Base
FROM fedora:latest
# Install httpd
#RUN echo "Installing httpd"; yum -y install httpd
RUN yum install -y emacs
# Expose the default httpd port 80
EXPOSE 80
# Run httpd
#CMD ["/usr/sbin/httpd", "-DFOREGROUND"]
CMD ["/bin/bash"]