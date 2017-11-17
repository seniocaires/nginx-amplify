#!/bin/bash
sh -c "sed -i.old -e 's/api_key.*$/api_key = ${API_KEY}/' /etc/amplify-agent/agent.conf"
sh -c "sed -i.old -e 's/hostname.*$/hostname = ${HOSTNAME}/' /etc/amplify-agent/agent.conf"
sh -c "sed -i.old -e 's/uuid.*$/uuid = ${HOSTNAME}/' /etc/amplify-agent/agent.conf"
sh -c "sed -i.old -e 's/imagename.*$/imagename = ${IMAGE_NAME}/' /etc/amplify-agent/agent.conf"
service amplify-agent start
nginx -g 'daemon off;'
