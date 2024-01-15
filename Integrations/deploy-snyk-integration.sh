#!/bin/bash
helm repo add --force-update port-labs https://port-labs.github.io/helm-charts
helm upgrade --install snyk port-labs/port-ocean \
        --set port.clientId="PORT_CLIENT_ID"  \
        --set port.clientSecret="PORT_CLIENT_SECRET"  \
        --set port.baseUrl="https://api.getport.io"  \
        --set initializePortResources=true  \
        --set integration.identifier="snyk"  \
        --set integration.type="snyk"  \
        --set scheduledResyncInterval="5" \
        --set integration.eventListener.type="POLLING"  \
        --set integration.secrets.token="string"  \
        --set integration.config.organizationId="string"