#!/bin/bash

echo ""
echo "------------------------------------------ NODEs ------------------------------------------"
kubectl get no -o wide
echo ""
echo "------------------------------------------ PODs -------------------------------------------"
kubectl get pods --all-namespaces -o wide
echo ""
echo "------------------------------------------ PVs --------------------------------------------"
kubectl get pv -o wide
echo ""
echo "------------------------------------------ PVCs -------------------------------------------"
kubectl get pvc -o wide
echo ""
echo "------------------------------------------ StatefulSets -----------------------------------"
kubectl get statefulset -o wide
echo ""
echo "------------------------------------------ Services ---------------------------------------"
kubectl get service -o wide
echo ""
echo "------------------------------------------ Config Maps ------------------------------------"
kubectl get configmap -o wide
echo ""
echo "------------------------------------------ Secrets ------------------------------------"
kubectl get secret -o wide
