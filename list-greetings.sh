## Copyright 2022 Google LLC
##
## Licensed under the Apache License, Version 2.0 (the "License");
## you may not use this file except in compliance with the License.
## You may obtain a copy of the License at
##
##     https://www.apache.org/licenses/LICENSE-2.0
##
## Unless required by applicable law or agreed to in writing, software
## distributed under the License is distributed on an "AS IS" BASIS,
## WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
## See the License for the specific language governing permissions and
## limitations under the License.

# This code snippet lists all greetings associated with an agent
# Read more: https://developers.google.com/business-communications/business-messages/reference/business-communications/rest/v1/brands.agents.greetings/list

# Replace the __BRAND_ID__ and __AGENT_ID__
# Make sure a service account key file exists at ./service_account_key.json

curl -X GET \
"https://businesscommunications.googleapis.com/v1/brands/__BRAND_ID__/agents/__AGENT_ID__/greetings" \
-H "Content-Type: application/json" \
-H "User-Agent: curl/business-communications" \
-H "$(oauth2l header --json ./service_account_key.json businesscommunications)"

