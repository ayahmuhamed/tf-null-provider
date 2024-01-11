# tf-null-provider[update file]
This repo serves as an explanation and learning exercice for the null provider in Terraform

## Description of the Terraform null_provider
The null provider (official documentation)is a rather-unusual provider that has constructs that intentionally do nothing.

## Important note :

Usage of the null provider can make a Terraform configuration harder to understand. While it can be useful in certain cases, it should be applied with care and other solutions preferred when available.

The null provider consists of :

The null_data_source data source which implements the standard data source lifecycle but does not interact with any external APIs. Historically, the null_data_source was typically used to construct intermediate values to re-use elsewhere in configuration. The same is now achieved using locals. We'll not cover the deprecated null_data_source in this repo.

The null_resource resource. Instances of null_resource are treated like normal resources, but they don't do anything. _The main advantage of this resource is the ability to update or recreate other resources in response of a null_resource change.

## How to use this repo

- Clone
- Run
- Cleanup

---

### Clone the repo

```
git clone https://github.com/ayahmuhamed/tf-null-provider
```

### Change directory

```
cd tf-null-provider
```

### Run


* terraform init


Sample output

```
terraform init

Initializing the backend...

Initializing provider plugins...
- Finding latest version of hashicorp/null...
- Finding latest version of hashicorp/aws...
- Installing hashicorp/aws v3.51.0...
- Installed hashicorp/aws v3.51.0 (signed by HashiCorp)
- Installing hashicorp/null v3.1.0...
- Installed hashicorp/null v3.1.0 (signed by HashiCorp)

# ...
```


test1


* terraform apply


### Cleanup

* Run terraform destroy to delete the created ec2 instances

```
terraform destroy
```
