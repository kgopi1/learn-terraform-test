run "create_rg" {
    command = plan 

  # Check that the bucket name is correct
  assert {
    condition     = module.rg.rg_name == "tftestrg"
    error_message = "RG failed"
  }
  assert {
    condition = module.rg.location == "northeurope"
    error_message = "RG location failed"
  }
  }

  run "create_group" {
    command = plan 
    assert {
        condition = azurerm_resource_group.group.name == "testrg02"
        error_message = "Group creation failed"
    }
  }