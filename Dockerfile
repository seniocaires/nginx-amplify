ARG NGINX_VERSION=1.13
FROM nginx:${NGINX_VERSION}

LABEL maintainer="seniocaires@gmail.com"

ARG API_KEY
ARG AMPLIFY_IMAGENAME

RUN apt-get update \
    && apt-get install -y --no-install-recommends apt-utils apt-transport-https python sudo gnupg curl ca-certificates \
    && cd /tmp && curl -L -O https://github.com/nginxinc/nginx-amplify-agent/raw/master/packages/install.sh \
    && yes | sh /tmp/install.sh \
    && rm /tmp/install.sh \
    && apt-get purge -y curl apt-transport-https apt-utils gnupg ca-certificates

CMD ["bash", "-c", "service amplify-agent start && nginx -g 'daemon off;'"]
