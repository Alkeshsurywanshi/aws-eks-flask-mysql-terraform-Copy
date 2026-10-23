
variable "project_name" {
  description = "The name of the project"
  type        = string
}

variable "kubernetes_version" {
  description = "kubernetes version for EKS cluster"
  type        = string

}

variable "subnet_ids" {
  description = "subnet ids for cluster"
  type        = list(string)
}

variable "cluster_endpoint_public_access_cidrs" {
  description = "Public IP ranges allowed to access the EKS API"
  type        = list(string)
}