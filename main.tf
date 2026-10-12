resource "vault_kubernetes_auth_backend_config" "kubernetes_auth_backend_configs" {
  for_each = var.kubernetes_auth_backend_configs

  kubernetes_host                   = each.value.kubernetes_host
  backend                           = each.value.backend
  disable_iss_validation            = each.value.disable_iss_validation
  disable_local_ca_jwt              = each.value.disable_local_ca_jwt
  issuer                            = each.value.issuer
  kubernetes_ca_cert                = each.value.kubernetes_ca_cert
  namespace                         = each.value.namespace
  pem_keys                          = each.value.pem_keys
  token_reviewer_jwt                = each.value.token_reviewer_jwt
  token_reviewer_jwt_wo             = each.value.token_reviewer_jwt_wo
  token_reviewer_jwt_wo_version     = each.value.token_reviewer_jwt_wo_version
  use_annotations_as_alias_metadata = each.value.use_annotations_as_alias_metadata
}

