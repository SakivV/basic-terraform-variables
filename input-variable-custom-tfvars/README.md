# Terraform Variable
1. Define Terraform variable using `variable` keyword and `{}`.
   
   ```
   variable "myname"{
      type = string
      default = "vikas"
   }
   ```
2. Access variable as `var.variable_name`. Like `var.myname`
3. You can override default values by defining `.tfvars` files. `terraform.tfvars` is generic file to override values. You can define your own tfvars.
4. You can also create file with `.auto.tfvars` extension
5. You can override default values using CLI using -var and --var-file option. Like `-var="variable_name=variable_value" ` or `-var-file="filename.tfvars" `