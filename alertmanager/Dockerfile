FROM prom/alertmanager
ENV PAGERDUTY_INTEGRATION_KEY
COPY alertmanager.yml /etc/alertmanager/
RUN sed -i "s/PAGERDUTY_INTEGRATION_KEY/${PAGERDUTY_INTEGRATION_KEY}/" /etc/alertmanager/alertmanager.yml
