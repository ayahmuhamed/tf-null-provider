resource "null_resource" "null" {}

resource "null_resource" "HelloWorld"{
     provisioner "local-exec" {
     
      command = "echo hello world"
   }
     
   }     
