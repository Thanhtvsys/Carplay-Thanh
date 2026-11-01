FROM quay.io/invidious/invidious:latest

# Tạo thư mục cấu hình và tự sinh file config.yml bên trong container
RUN mkdir -p /config
RUN echo 'db:' > /config/config.yml && \
    echo '  user: "invidious"' >> /config/config.yml && \
    echo '  password: "invidious"' >> /config/config.yml && \
    echo '  host: "localhost"' >> /config/config.yml && \
    echo '  port: 5432' >> /config/config.yml && \
    echo '  dbname: "invidious"' >> /config/config.yml && \
    echo 'domain: "localhost"' >> /config/config.yml && \
    echo 'http_proxy: ""' >> /config/config.yml && \
    echo 'hmac_key: "Thanh@12042015"' >> /config/config.yml

EXPOSE 3000
