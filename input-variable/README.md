# Terraform Variable
1. Define Terraform variable using `variable` keyword and `{}`.
   
   ```
   variable "myname"{
      type = string
      default = "vikas
   }
   ```
   
2. Access variable as `var.variable_name`. Like `var.myname`
3. You can override default values by defining `.tfvars` files.
4. You can override default values using CLI using -var option. Like `-var="variable_name=variable_value" `.