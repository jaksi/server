#!/bin/bash

set -euo pipefail

NOW="$(date -I)"

UNIFI_BACKUP="$(find /unifi_data/backup/autobackup -name '*.unf' -printf '%T@ %f\n' | sort -rn | head -1 | cut -d ' ' -f 2)"
/dbxcli put "/unifi_data/backup/autobackup/${UNIFI_BACKUP}" "backup/unifi/${UNIFI_BACKUP}"

tar -czf deconz.tar.gz -C /deconz --exclude=*.tar.gz .
/dbxcli put deconz.tar.gz "backup/deconz/${NOW}.tar.gz"

/dbxcli put /grafana/grafana.db "backup/grafana/${NOW}.db"

tar -czf prometheus.tar.gz -C "/prometheus/data/snapshots/$(curl -s -XPOST http://prometheus:9090/api/v1/admin/tsdb/snapshot | jq -r .data.name)" .
/dbxcli put prometheus.tar.gz "backup/prometheus/${NOW}.tar.gz"

tar -czf home.tar.gz -C /host_home .
/dbxcli put home.tar.gz "backup/home/${NOW}.tar.gz"
