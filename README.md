# azure-terraform-cicd
.
├── app/
│   ├── server.js
│   ├── package.json
│   ├── package-lock.json
│   ├── .dockerignore
│   └── Dockerfile
├── infra/
│   ├── providers.tf  variables.tf  main.tf  outputs.tf
│   └── envs/ dev.tfvars  prod.tfvars
├── pipelines/
│   ├── infra-pipeline.yml
│   └── app-pipeline.yml
├── docs/screenshots/
├── .gitignore
└── README.md