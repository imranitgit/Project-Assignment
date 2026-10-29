SUB=$(az account show --query id -o tsv)
SP_APPID=<client-id-from-service-connection>

# Simplest for an assignment (in real life, scope down to Contributor + User Access Administrator with conditions)
az role assignment create --assignee $SP_APPID --role Owner --scope /subscriptions/$SUB

# Data-plane access to the state blob
az role assignment create --assignee $SP_APPID --role "Storage Blob Data Contributor" \
  --scope $(az storage account show -n $TF_SA -g $TF_RG --query id -o tsv)