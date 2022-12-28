variable "location" {       #nome para indicar aos outros arquivos o nome do arquivo de variaveis
    description = "variavel de indicação de regiao"
    type = string
    default = "us-east"
  
}

variable "account_tier" {
    description = "tier de storage na azure"
    type = string
    default = "Standard"
  
}

variable "account_replication_type" {
    description = "Replicação de dados da storage"
    type = string
    default = "LRS"
}