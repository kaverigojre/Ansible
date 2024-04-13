terraform {

  required_providers {

    aws ={

        source = "hashicorp/aws"

        version = "5.44.0"

    }

  }

}

provider "aws" {

  region = "eu-west-2"

}

resource "aws_instance" "suraj_tf" {

  ami           = "ami-0b9932f4918a00c4f"

  instance_type = "t3.micro"

 

  key_name = "suraj_vired"

  security_groups = [ "suraj_vired" ]

  user_data ="${file("user-data-nging.sh")}"

  tags = {

    Name = "suraj_tf"

  }

}