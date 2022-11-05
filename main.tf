provider "aws" {
  region = "us-east-1"
  access_key = "AKIAT5FAP2W4PL7T6OPJ"
  secret_access_key = "qxAmFSMhMcKia+ixuqflH+jkAPHPUtILbWLn7NgN"
}

resource "aws_instance" "example" {
 for_each = {
    host-1= "ANSIBLE"
    host-2= "Docker"
}
  ami           = "ami-09d3b3274b6c5d4aa"
  instance_type = "t2.medium"
  tags= {
    Name = "${each.value}" 
  }
}

