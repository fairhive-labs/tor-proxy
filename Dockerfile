FROM nginx:alpine
RUN apk update && apk add tor
COPY torrc /etc/tor/torrc
COPY nginx.conf /etc/nginx/nginx.conf
# COPY --from=node /app/dist/ /usr/share/nginx/html/
COPY index.html /usr/share/nginx/html/index.html
COPY start-tor.sh /docker-entrypoint.d/40-start-tor.sh
RUN chmod +x /docker-entrypoint.d/40-start-tor.sh
EXPOSE 9050