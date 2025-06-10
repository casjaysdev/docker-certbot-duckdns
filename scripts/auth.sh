#!/usr/bin/env bash
[[ "$(curl -s "https://www.duckdns.org/update?domains=${DUCKDNS_DOMAIN%.duckdns.org}&token=${DUCKDNS_TOKEN}&txt=${CERTBOT_VALIDATION}")" = "OK" ]]
