public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
private_subnet_cidrs = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
availability_zones   = ["us-east-1a", "us-east-1b", "us-east-1c"]

instance_ami    = "ami-00ca32bbc84273381"
instance_type = "t3.small"
public_key_path = "/home/codespace/.ssh/id_rsa.pub"

