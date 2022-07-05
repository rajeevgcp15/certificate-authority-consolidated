module "tfplan-functions" {
  source = "../../../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

mock "tfplan/v2" {
  module {
    source = "./mock-tfplan-privateca-ca-pool-expression-undefined-null.sentinel"
  }
}

test {
  rules = {
    main = false
  }
}