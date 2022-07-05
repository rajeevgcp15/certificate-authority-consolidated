module "tfplan-functions" {
  source = "../../../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
    source = "../../../common-functions/tfstate-functions/tfstate-functions.sentinel"
}

mock "tfplan/v2" {
  module {
    source = "./mock-tfplan-v2-gcp_cas_caroothsm_pass.sentinel"
  }
}
mock "tfstate/v2" {
  module {
    source = "./mock-tfstate-v2-gcp_cas_caroothsm_pass.sentinel"
  }
}

test {
  rules = {
    main = true
  }
}