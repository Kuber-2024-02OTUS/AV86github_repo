- Состояние кластера в *cluster-info.txt* (k get nodes, k get po -A)

- добавляем репо

	helm repo add yandex-s3 https://yandex-cloud.github.io/k8s-csi-s3/charts

- в minio через ui создаем бакет и токены доступа к нему

- устанавливаем yandex s3 provisioner

	helm upgrade --install --namespace kube-system csi-s3 yandex-s3/csi-s3 -f ./s3-csi.yaml

- проверяем работу PVC, убеждаемся что pv создалось *pvc-info.txt*

	k apply -f pvc.yaml  (https://github.com/yandex-cloud/k8s-csi-s3/blob/master/deploy/kubernetes/examples/pvc.yaml)

- проверяем работу PVC в поде (далее убеждаемся через UI minio, что создаются новые бакеты для каждого PV и пишутся данные. Например на скрине bucket.info)

	k apply -f pod.yaml (https://github.com/yandex-cloud/k8s-csi-s3/blob/master/deploy/kubernetes/examples/pod.yaml)
