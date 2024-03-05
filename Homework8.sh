
==============Creating VPC=======================

aws ec2 create-vpc --cidr-block 10.0.0.0/16
{
    "Vpc": {
        "CidrBlock": "10.0.0.0/16",
        "DhcpOptionsId": "dopt-03f4453d9f03e1552",
        "State": "pending",
        "VpcId": "vpc-08c3c548be7f1f987",
        "OwnerId": "767397926973",
        "InstanceTenancy": "default",
        "Ipv6CidrBlockAssociationSet": [],
        "CidrBlockAssociationSet": [
            {
                "AssociationId": "vpc-cidr-assoc-0a3d319af91023d9e",
                "CidrBlock": "10.0.0.0/16",
                "CidrBlockState": {
                    "State": "associated"
                }
            }
        ],
        "IsDefault": false
    }
}
==============Creating Subnet=======================
 aws ec2 create-subnet --vpc-id vpc-08c3c548be7f1f987 --cidr-block 10.0.1.0/16 --availability-zone us-west-1c --query Subnet.SubnetId --output text

subnet-05bbb6dc3d283be73

================Creating Internet Gateway===========================
$ aws ec2 create-internet-gateway
{
    "InternetGateway": {
        "Attachments": [],
        "InternetGatewayId": "igw-06287a6cfedd8faa1",
        "OwnerId": "767397926973",
        "Tags": []
    }
}
==========Attaching Gateway to VPC=================================
$ aws ec2 attach-internet-gateway \
 --internet-gateway-id igw-06287a6cfedd8faa1 \
 --vpc-id vpc-08c3c548be7f1f987\

