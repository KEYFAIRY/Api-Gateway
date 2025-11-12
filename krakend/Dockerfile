FROM krakend:2.12.0

# Copia template y entrypoint
COPY krakend.tmpl.json /etc/krakend/krakend.tmpl.json
COPY entrypoint.sh /entrypoint.sh

# Quita CRLF/BOM y da permisos
RUN sed -i 's/\r$//' /entrypoint.sh && \
    sed -i '1s/^\xEF\xBB\xBF//' /entrypoint.sh && \
    chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]