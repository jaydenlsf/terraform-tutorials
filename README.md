# A series of Terraform Tutorials

### To SSH onto EC2 Instance

- ssh -i \<PATH TO KEY PAIR\> ec2-user@\<PUBLIC IP\>

If error "bad permission" appears, allow read access only to your keypair file:

- chmod 400 \<PATH TO KEY PAIR\>
