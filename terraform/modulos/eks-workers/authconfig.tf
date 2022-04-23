
#para autenticar nossos nodes no cluster automaticamente
locals {
  authconfig = <<AUTHCONFIG
apiVersion: v1
kind: ConfigMap
metadata:
  name: aws-auth
  namespace: kube-system
data:
  mapRoles: |
    - rolearn: "${aws_iam_role.workers.arn}"
      username: system:node:{{EC2PrivateDNSName}}
      groups:
        - system:bootstrappers
        - system:nodes
AUTHCONFIG
}