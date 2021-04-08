provider "aws"{
    region = "ap-souteast-2" 
    access_key = "AKIA2HGPF37UINGC7LNL"
    secret_key = "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"

}

resource "aws_vpc" "mydemo-vpc" {
    cidr_blocks = var.vpc_cidr_block
    tags = {
        Name: "${var.env_prefix}-vpc"
    }
}

resource "aws_subnet" "mydemo-subnet-1"{
    vpc_id = aws_vpc.mydemo-vpc.vpc_id
    cidr_blocks = var.subnet_cidr_block
     availability_zone = var.avail_zone
     tags = {
         Name: "${var.env_prefix}-subnet-1"
     }
}