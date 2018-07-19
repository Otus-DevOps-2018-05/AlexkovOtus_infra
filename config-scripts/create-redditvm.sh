gcloud compute instances create reddit-app-2\
  --boot-disk-size=10GB \
  --image-project reddit-base-1532020071 \
  --machine-type=g1-small \
  --tags puma-server \
  --restart-on-failure