ansible-playbook -i \
 /home/spark/Documentos/repositorios/kubernetes_v2/ansible/inventories/packtclusters/ \
 -e "worker_iam_role_arn=$(terraform output worker_iam_role_arn)" \
   -vvv /home/spark/Documentos/repositorios/kubernetes_v2/ansible/cluster.yaml