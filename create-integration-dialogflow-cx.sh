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

# This code creates a Dialogflow CX integration.
# Read more: https://developers.google.com/business-communications/business-messages/guides/how-to/integrate/dialogflow?method=api#dialogflow_cx

# Replace the __BRAND_ID__, __AGENT_ID__, __DIALOGFLOW_CX_PROJECT_ID__, __DIALOGFLOW_CX_AGENT_ID__ and __AUTO_RESPONSE_STATUS__
# Make sure a service account key file exists at ./service_account_key.json

curl -X POST \
"https://businesscommunications.googleapis.com/v1/brands/__BRAND_ID__/agents/__AGENT_ID__/integrations" \
-H "$(oauth2l header --json ./service_account_key.json businesscommunications)" \
-H "Content-Type: application/json"  \
-H "User-Agent: curl/business-communications" \
-d '{
   "dialogflowCxIntegration": {
     "dialogflowProjectId": "__DIALOGFLOW_CX_PROJECT_ID__",
     "dialogflowAgentId": "__DIALOGFLOW_CX_AGENT_ID__",
     "autoResponseStatus": "__AUTO_RESPONSE_STATUS__"
   }
}'
