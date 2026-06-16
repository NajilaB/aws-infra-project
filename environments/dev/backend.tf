terraform {
  backend "s3" {
    bucket         = "proj-devops-tfstate-2026-terr"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    use_lockfile   = true
  }
}