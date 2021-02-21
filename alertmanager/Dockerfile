FROM prom/alertmanager
ARG SMTP_HOST
ARG SMTP_AUTH_USERNAME
ARG SMTP_AUTH_PASSWORD
ARG ALERT_EMAIL_ADDRESS
COPY alertmanager.yml /etc/alertmanager/
RUN sed -i "s/SMTP_HOST/$SMTP_HOST/" /etc/alertmanager/alertmanager.yml
RUN sed -i "s/SMTP_AUTH_USERNAME/$SMTP_AUTH_USERNAME/" /etc/alertmanager/alertmanager.yml
RUN sed -i "s/SMTP_AUTH_PASSWORD/$SMTP_AUTH_PASSWORD/" /etc/alertmanager/alertmanager.yml
RUN sed -i "s/ALERT_EMAIL_ADDRESS/$ALERT_EMAIL_ADDRESS/" /etc/alertmanager/alertmanager.yml
