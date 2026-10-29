SA_ID=$(az storage account show -n $TF_SA -g $TF_RG --query id -o tsv)
ME=$(az ad signed-in-user show --query id -o tsv)
az role assignment create --assignee-object-id $ME --assignee-principal-type User \
  --role "Storage Blob Data Contributor" --scope $SA_ID