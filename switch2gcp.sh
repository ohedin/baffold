#!/bin/sh

gcloud config set project sandbox-ddp
gcloud config set compute/zone europe-west1-b
gcloud container clusters get-credentials adeodevmeetup
kubectl cluster-info
