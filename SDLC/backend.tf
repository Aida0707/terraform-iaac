terraform { 
backend "s3" { 
bucket = "sdlc-aida-dev" 
key = "vet/us-east-1/sharedtools/aida/aida.tfstate" 
region = "us-east-1" 
  } 
} 
