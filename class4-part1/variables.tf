variable key_name {
    default  = "my_key"
    type = string
    description = "Provide key name"
}

variable port {
    default = [22, 80]
    type = list(number)
    description = "Provide port"

}