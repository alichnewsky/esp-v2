#!/bin/bash

# Copyright 2018 Google LLC

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

echo '======================================================='
echo '=====================   e2e test  ====================='
echo '======================================================='

PROJECT_ID="api_proxy_e2e_test"
app="bookstore"

# Fail on any error.
set -e
# Display commands being run.
set -u

WD=$(dirname "$0")
WD=$(cd "$WD"; pwd)
ROOT=$(dirname "$WD")

uniqueID=test

function e2eGKE() {
  ${ROOT}/tests/e2e/scripts/e2e-kube.sh \
  -c $1 \
  -t $2 \
  -g $3 \
  -R $4 \
  -i ${uniqueID} \
  -a ${uniqueID}.${PROJECT_ID}.appspot.com
}

e2eGKE "tight" "http" "bookstore" "fixed"