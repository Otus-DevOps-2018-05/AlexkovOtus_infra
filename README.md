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