terraform { 
backend "s3" { 
bucket = "aida-terraform-eks" 
key = "application/us-east-1/state/dev/infrastructure.tfstate.json" 
region = "us-east-1" 
  } 
} 
