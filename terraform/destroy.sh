cd clusters
terraform destroy --auto-approve

cd ..
cd clusters-vpc
terraform destroy --auto-approve

cd ..
cd shared-state
terraform destroy --auto-approve

