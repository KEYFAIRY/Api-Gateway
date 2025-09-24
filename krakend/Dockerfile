FROM devopsfaith/krakend:latest

# Instala envsubst (Alpine o Debian)
RUN (apk add --no-cache gettext || (apt-get update && apt-get install -y --no-install-recommends gettext-base && rm -rf /var/lib/apt/lists/*)) || true

# Copia template y entrypoint
COPY krakend.tmpl.json /etc/krakend/krakend.tmpl.json
COPY entrypoint.sh /entrypoint.sh

# Quita CRLF/BOM y da permisos
RUN sed -i 's/\r$//' /entrypoint.sh \
 && sed -i '1s/^\xEF\xBB\xBF//' /entrypoint.sh || true \
 && chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]