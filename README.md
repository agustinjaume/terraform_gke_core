## Terraform GKE code

### Configure

```
export GOOGLE_APPLICATION_CREDENTIALS="./credentials/credentials.json"
gcloud projects list
```

### Deploy and destroy 

```
terraform plan -out='./variables/terraform-dev.tfplan'
terraform apply "./variables/terraform-dev.tfplan"
terraform destroy
```