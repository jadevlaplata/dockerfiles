FROM httpd:2.4
COPY ./index.php /usr/local/apache2/htdocs/
#RUN mv /usr/local/apache2/htdocs/index.php /var/www/html/
RUN cd /usr/local/apache2/htdocs/

RUN apt update
#RUN apt install -y wget 
RUN apt install -y php libapache2-mod-php 
#RUN chmod 777 -Rf /usr/local/apache2/
#RUN wget https://sourceforge.net/projects/apachegui/files/1.12-Linux-Solaris-Mac/ApacheGUI-1.12.0.tar.gz 
#RUN mv /usr/local/apache2/ApacheGUI-1.12.0.tar.gz /usr/local/apache2/htdocs/
#RUN chmod 777 -Rf /opt
#RUN tar xfz /usr/local/apache2/htdocs/ApacheGUI-1.12.0.tar.gz -C /opt/
#RUN /opt/ApacheGUI/bin/run.sh 
EXPOSE 9990

ENTRYPOINT ["/bin/echo"]
CMD ["Hello"]
VOLUME /usr/local/apache2/htdocs/
#USER juan

#ENV HTTP_PROXY 172.16.1.238:3128
#ENV HTTPS_PROXY 172.16.1.238:3128