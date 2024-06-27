provider "aws" {
  alias  = "east-2"
  region = "us-east-2"
}

provider "aws" {
  alias  = "virginia"
  region = "us-east-1"
}

resource "aws_instance" "east-2_instance" {
  provider      = aws.east-2
  ami           = "ami-09040d770ffe2224f"
  instance_type = "t2.micro"

  tags = {
    Name = "hello-ohio"
  }
}

resource "aws_instance" "virginia_instance" {
  provider      = aws.virginia
  ami           = "ami-04b70fa74e45c3917"
  instance_type = "t2.micro"

  tags = {
    Name = "hello-virginia"
  }
}


