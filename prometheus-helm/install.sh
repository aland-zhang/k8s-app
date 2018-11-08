helm install --namespace monitor --name prometheus stable/prometheus \
  --set alertmanager.persistentVolume.storageClass="nfs-storage" \
  --set server.persistentVolume.storageClass="nfs-storage"

helm install  --namespace monitor --name grafana stable/grafana \
  --set persistence.storageClassName="nfs-storage"
