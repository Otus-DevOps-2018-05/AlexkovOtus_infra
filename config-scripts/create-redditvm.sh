gcloud compute instances create reddit-app-2\
  --boot-disk-size=20GB \
  --image reddit-base-1532250037 \
  --machine-type=g1-small \
  --tags puma-server \
  --restart-on-failure