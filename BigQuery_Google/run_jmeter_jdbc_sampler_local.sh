#!/usr/bin/env bash

# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License

#########################################################################
# Make sure you run the following gcloud auth command
# if you're not using a service account to authenticate:
#
# gcloud auth application-default login
#
# If you are using a service account, uncomment the export command below
# and specify the path to your service account private key.
#
export GOOGLE_APPLICATION_CREDENTIALS=/Users/nabanish/Desktop/BigQuery_Google/aesthetic-frame-155821-ce387a284741.json
#
#########################################################################

nohup jmeter -n \
-t /Users/nabanish/Desktop/BigQuery_Google/BigQuery_Insert.jmx \
-l /Users/nabanish/Desktop/BigQuery_Google/DS_Inserts/DS.jtl \
-Jproject_id=aesthetic-frame-155821 \
-Jdefault_dataset_id=perfbigquery \
-Juser.classpath=/opt/homebrew/Cellar/jmeter/5.6.3/libexec/lib \
-Jerror_csv_path=/Users/nabanish/Desktop/BigQuery_Google/DS_Inserts/errors.csv \
-Jrun_id=jmeter_jdbc_test \
-Jramp_time=0;
