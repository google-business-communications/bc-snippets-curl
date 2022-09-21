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

# This code deletes a knowledge base document.
# Read more: https://developers.google.com/business-communications/business-messages/guides/how-to/integrate/dialogflow?method=api#delete_a_knowledge_document

# Replace the __BRAND_ID__, __AGENT_ID__, __INTEGRATION_ID__ and __KNOWLEDGE_BASE_DISPLAY_NAME__
# To delete all knowledge bases, set dialogflowKnowledgeBases to an empty list. Otherwise, the list should contain all existing knowledgebases except the one you would like to remove.
# Make sure a service account key file exists at ./service_account_key.json

curl -X PATCH \
"https://businesscommunications.googleapis.com/v1/brands/__BRAND_ID__/agents/__AGENT_ID__/integrations/__INTEGRATION_ID__?updateMask=dialogflowEsIntegration.dialogflowKnowledgeBases" \
-H "Content-Type: application/json" \
-H "User-Agent: curl/business-communications" \
-H "$(oauth2l header --json ./service_account_key.json businesscommunications)" \
-d '{
  "dialogflowEsIntegration": {
    "dialogflowKnowledgeBases": [
      {
        "displayName": "__KNOWLEDGE_BASE_DISPLAY_NAME__"
      }
    ]
  }
}'
