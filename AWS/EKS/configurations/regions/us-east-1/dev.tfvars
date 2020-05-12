environment = "dev"
region = "us-east-1"
s3_bucket = "aida-terraform-eks"              #Will be used to set backend.tf
s3_folder_project = "application"            #Will be used to set backend.tf
s3_folder_region = "us-east-1"               #Will be used to set backend.tf
s3_folder_type = "state"                     #Will be used to set backend.tf
s3_tfstate_file = "infrastructure.tfstate.json"   #Will be used to set backend.tf




vpc_id = "vpc-0d3eb93523eb68a6b"
subnet1 = "subnet-0057bc4e25b4c227e"
subnet2 = "subnet-018b04497331ff9cb"
subnet3 = "subnet-0518a74682b69d6aa"
cluster_name = "my-cluster"
instance_type = "m4.large"
asg_max_size = "48" 
asg_min_size = "3"
asg_desired_capacity = "3"
cluster_version = "1.14"
