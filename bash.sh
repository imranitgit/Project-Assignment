LOC=centralindia                 # if quota errors appear, try eastus / westeurope
TF_RG=rg-tfstate
TF_SA=sttfstate$RANDOM$RANDOM    # globally unique, lowercase, 3-24 chars

az group create -n $TF_RG -l $LOC
az storage account create -n $TF_SA -g $TF_RG -l $LOC --sku Standard_LRS \
  --allow-blob-public-access false --min-tls-version TLS1_2
az storage container create -n tfstate --account-name $TF_SA --auth-mode login
echo $TF_SA     # write this down