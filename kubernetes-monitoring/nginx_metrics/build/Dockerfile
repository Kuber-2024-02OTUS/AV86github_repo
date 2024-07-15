FROM nginx:1.25.3

RUN usermod -u 1001 nginx

WORKDIR /homework
COPY nginx.conf /etc/nginx/nginx.conf
COPY docker_entry.sh /opt/
RUN chmod +x /opt/docker_entry.sh
COPY homework.html ./
COPY index.html ./
RUN touch /var/run/nginx.pid && chown 1001:101 /var/run/nginx.pid && chown -R 1001:101 /homework
#RUN chown -R 1001:101 /docker-entrypoint.sh && chmod 777 /docker-entrypoint.sh
RUN chown -R 1001:101 /var/cache/nginx

USER nginx
ENTRYPOINT ["bash", "/opt/docker_entry.sh"]