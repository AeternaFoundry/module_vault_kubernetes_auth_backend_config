variable "kubernetes_auth_backend_configs" {
  description = <<EOT
Map of kubernetes_auth_backend_configs, attributes below
Required:
    - kubernetes_host
Optional:
    - backend
    - disable_iss_validation
    - disable_local_ca_jwt
    - issuer
    - kubernetes_ca_cert
    - namespace
    - pem_keys
    - token_reviewer_jwt
    - token_reviewer_jwt_wo
    - token_reviewer_jwt_wo_version
    - use_annotations_as_alias_metadata
EOT

  type = map(object({
    kubernetes_host                   = string
    backend                           = optional(string)
    disable_iss_validation            = optional(bool)
    disable_local_ca_jwt              = optional(bool)
    issuer                            = optional(string)
    kubernetes_ca_cert                = optional(string)
    namespace                         = optional(string)
    pem_keys                          = optional(list(string))
    token_reviewer_jwt                = optional(string)
    token_reviewer_jwt_wo             = optional(string)
    token_reviewer_jwt_wo_version     = optional(number)
    use_annotations_as_alias_metadata = optional(bool)
  }))
}

