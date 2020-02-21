### OracleDB on K8s:
# Sign-in to: https://container-registry.oracle.com/
  & Accept license terms.
$ kubectl create secret docker-registry dockerstore --docker-username=<docker-registry-username> --docker-password=<docker-registry-password> --docker-server=container-registry.oracle.com
