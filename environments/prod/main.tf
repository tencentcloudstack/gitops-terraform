module "submodule_cicd" {
    source = "./cicd"
    count = terraform.workspace == local.workspace_cicd ? 1 : 0
}

module "submodule_qta" {
    source = "./qta"
    count = terraform.workspace == local.workspace_qta ? 1 : 0
}