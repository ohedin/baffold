#!/bin/sh

gcloud container clusters get-credentials $GKE_CLUSTER
kubectl cluster-info
