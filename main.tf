data "aws_organizations_organization" "sks" {}

resource "aws_organizations_organizational_unit" "prod" {
name = "prod"
parent_id =  "data.aws_organizations_organization.sks.roots.0.id"
}

resource "aws_organizations_organizational_unit" "dev" {
name = "dev"
parent_id =  "data.aws_organizations_organization.sks.roots.0.id"
}

resource "aws_organizations_organizational_unit" "prod" {
name = ""
parent_id =  "data.aws_organizations_organization.sks.roots.0.id"
}