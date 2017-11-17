ARG NGINX_VERSION=1.13
FROM nginx:${NGINX_VERSION}

LABEL maintainer="seniocaires@gmail.com"

ARG API_KEY

COPY ./entrypoint.sh /entrypoint.sh

RUN apt-get update \
    && apt-get install -y --no-install-recommends apt-utils apt-transport-https python sudo gnupg curl ca-certificates \
    && cd /tmp && curl -L -O https://github.com/nginxinc/nginx-amplify-agent/raw/master/packages/install.sh \
    && yes | sh /tmp/install.sh \
    && rm /tmp/install.sh \
    && export SUDO_FORCE_REMOVE=yes && apt-get purge -y curl apt-transport-https apt-utils gnupg ca-certificates sudo \
    && chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
