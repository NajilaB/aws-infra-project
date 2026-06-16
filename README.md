# My DevoPS Learning Project

This is my first real Infrastructure project. I'm learning Terraform, AWS, Git, and eventually Jenkins, Docker, and Kubernetes. Everything here is built from scratch as I follow tutorials and figure things out.

## What I'm Building

A basic AWS infra with:

- A VPC (Virtual Private Cloud) with CIDR blocks
- EC2 instances for dev (t2.micro) and prod (t2.small)
- S3 bucket to store Terraform state files
- Dynamo table for state locking (so I dont break things if I       work from two places)

## Project Strucute

my-devops-project/
├── .gitignore
├── README.md
│
├── environments/
│   ├── dev/
│   │   ├── backend.tf
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   ├── provider.tf
│   │   ├── terraform.tfvars
│   │   └── variables.tf
│   │
│   ├── prod/
│   │   ├── backend.tf
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   ├── provider.tf
│   │   ├── terraform.tfvars
│   │   └── variables.tf
│   │
│   └── staging/
│       ├── backend.tf
│       ├── main.tf
│       ├── outputs.tf
│       ├── provider.tf
│       ├── terraform.tfvars
│       └── variables.tf
│
└── modules/
├── ec2/
│   ├── main.tf
│   ├── outputs.tf
│   └── variables.tf
│
├── security/
│   ├── main.tf
│   ├── outputs.tf
│   └── variables.tf
│
└── vpc/
├── main.tf
├── outputs.tf
└── variables.tf


## What I Have Done So Far

- [x] Set up AWS account with IAM users
- [x] Created S3 buckey and DynamoDB table for Terraform state
- [X] Wrote Terraform modules for VPC, EC2, and security groups
- [X] Set up dev, staging, and prod environment folder
- [X] Ran 'terraform validate' and 'terraform fmt'
- [X] Tested 'terraform init' in dev env first (to make sure backend/S3 works)
- [X] Ran 'terraform init -reconfigure' 
- [X] Create .gitignore
- [X] Pushed everything to GitHub

## Things I Have NOT Approached YET 

- [] Run 'terraform plan' in dev 
- [] Run 'terraform apply' in dev
- [] Repeat init/plan/apply for staging and prod env
- [] Install Jenkins
- [] Set up TomCat on EC2
- [] Learn Docker and containerise anything
- [] Figure out Kubernetes
- [] Add a database