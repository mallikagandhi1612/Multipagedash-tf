variable "dashboard" {
  type = map(object({
    name        = string
    permissions = string
    pages       = list(object({
      name    = string
      widgets = list(object({
        type         = string
        title        = string
        row          = number
        column       = number
        width        = number
        height       = number
        query        = string
        nrql_queries = optional(list(object({
          account_id = number
          query      = string
        })), [])
        y_axis_left_zero = optional(bool, false)
      }))
    }))
  }))
}

variable "api_key" {
  type = string
}

variable "account_id" {
  type = number
}