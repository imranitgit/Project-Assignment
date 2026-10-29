LOC=centralindia
TF_RG=rg-tfstate
TF_SA=sttfstate$RANDOM$RANDOM

echo "Storage account name: $TF_SA"     # WRITE THIS DOWN

az group create -n $TF_RG -l $LOC

az storage account create -n $TF_SA -g $TF_RG -l $LOC \
  --sku Standard_LRS \
  --allow-blob-public-access false \
  --min-tls-version TLS1_2