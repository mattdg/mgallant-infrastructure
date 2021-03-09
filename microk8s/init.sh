#!/bin/bash

#
# First script to run after installing the microk8s cluster and joining the initial nodes.
#

microk8s enable dns dashboard rbac
