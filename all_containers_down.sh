#!/bin/bash
echo "- Nginx"
docker compose -f docker-compose-nginx.yml down
cd jitsi 
echo "- Jitsi"
docker compose down
cd ..
cd keycloak-auth
echo "- Övriga"
docker compose -f docker-compose-keycloak.yml down
