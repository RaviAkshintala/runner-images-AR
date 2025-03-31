####################################################################################
##  File:  Install-AzureCosmosDbEmulator.ps1
##  Desc:  Install Azure CosmosDb Emulator
####################################################################################

Install-Binary -Type MSI `
    -Url "https://aka.ms/cosmosdb-emulator" `
    -ExpectedSHA256Sum "1597C1809DCF8E3270E7B1972B05EEFED4055B8BE9B33BA17B72AAD799DE70F5"

Invoke-PesterTests -TestFile "Tools" -TestName "Azure Cosmos DB Emulator"
