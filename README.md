### OracleDB on K8s:
# Sign-in to: https://container-registry.oracle.com/
  & Accept license terms.
$ kubectl create secret docker-registry dockerstore --docker-username=daniel.h@develeap.com --docker-password=Daniel570 --docker-server=container-registry.oracle.com
# template.spec.containers.image: container-registry.oracle.com/database/enterprise:12.2.0.1
# template.spec.imagePullSecrets: - name: dockerstore
