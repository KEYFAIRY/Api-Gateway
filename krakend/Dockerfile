FROM devopsfaith/krakend:latest

# Instalar envsubst (intenta Alpine o Debian)
RUN /bin/sh -c 'apk add --no-cache gettext || (apt-get update && apt-get install -y --no-install-recommends gettext-base && rm -rf /var/lib/apt/lists/*)'

# Copiar template y entrypoint
COPY krakend.tmpl.json /etc/krakend/krakend.tmpl.json
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]