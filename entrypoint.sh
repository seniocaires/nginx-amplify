#!/bin/bash

if [ -n "${API_KEY}" ]; then
    sh -c "sed -i.old -e 's/api_key.*$/api_key = ${API_KEY}/' /etc/amplify-agent/agent.conf"
fi

sh -c "sed -i.old -e 's/hostname.*$/hostname = ${HOSTNAME}/' /etc/amplify-agent/agent.conf"
sh -c "sed -i.old -e 's/uuid.*$/uuid = ${HOSTNAME}/' /etc/amplify-agent/agent.conf"

if [ -n "${IMAGE_NAME}" ]; then
    sh -c "sed -i.old -e 's/imagename.*$/imagename = ${IMAGE_NAME}/' /etc/amplify-agent/agent.conf"
fi

service amplify-agent start
nginx -g 'daemon off;'
