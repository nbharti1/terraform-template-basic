provider "ibm" {
}

# data "ibm_resource_group" "cos_group" {
#   name = "Default"
# }

module "cos" {
  # Uncommnet the following line to point the source to registry level
  source = "terraform-ibm-modules/cos/ibm//modules/instance"

  //source = "../../modules/instance"
  # bind_resource_key = var.bind_resource_key
  service_name      = "test_cos_bucket"
#   resource_group_id= "66e101aa10194a809c39227c95aa8e94" #p
#   resource_group_id= "959a39a9a19e46d9b7e772e239ddf25d" #s
  resource_group_id="f8ceaec00ee14de48ee802cf11202a81" #poc
#   plan              = "lite"
  plan = "lite"
#    plan     = "standard"
  region            = "global"
  create_timeout    = "15m"
  update_timeout    = "15m"
  delete_timeout    = "15m"
}

# provider "ibm" {
#     region ="us-south"
# }    

# data "ibm_resource_group" "resource_group" {
#     is_default = "true"
# }

# resource "ibm_is_vpc" "vpc" {
#     name = "vpc212"
# }

# resource "ibm_is_subnet" "subnet" {
#     name                     = "subnet2"
#     vpc                      = ibm_is_vpc.vpc.id
#     zone                     = "us-south-1"
#     total_ipv4_address_count = 256
# }

