# Table of content
- [Homework-5: Packer-1](#homework-6-packer-1)

# AlexkovOtus_infra


AlexkovOtus Infra repository
ssh -i ~/.ssh/id_rsa -tA filip_filipov@35.195.121.132 "ssh 10.132.0.3"
ssh -i ~/.ssh/id_rsa -tA filip_filipov@35.195.121.132 "ssh someinternalhost"
bastion_IP = 35.195.121.132
someinternalhost_IP = 10.132.0.3

gcloud compute instances create reddit-app2\
  --boot-disk-size=10GB \
  --image-family ubuntu-1604-lts \
  --image-project=ubuntu-os-cloud \
  --machine-type=g1-small \
  --tags puma-server \
  --restart-on-failure\
  --metadata-from-file startup-script=./startup_script.sh
  
gcloud compute firewall-rules create default-puma-server \
    --network default \
    --action allow \
    --target-tags puma-server \
    --source-ranges 0.0.0.0/0 \
    --rules tcp:9292

testapp_IP = 35.234.124.36
testapp_port = 9292

# Homework-5: Packer-1

## 2.1 Что было сделано

- Выполнено основное и дополнительное задание