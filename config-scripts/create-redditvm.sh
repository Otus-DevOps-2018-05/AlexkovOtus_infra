gcloud compute instances create reddit-app-2\
  --boot-disk-size=10GB \
  --image-project reddit-base-1531156337 \
  --machine-type=g1-small \
  --tags puma-server \
  --restart-on-failure