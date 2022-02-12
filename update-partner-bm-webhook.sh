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

# This code updates the partner webhook URL.
# Read more: https://developers.google.com/business-communications/business-messages/reference/business-communications/rest/v1/partners/patch

# Replace the __PARTNER_ID__
# Make sure a service account key file exists at ./service_account_key.json

curl -X PATCH \
"https://businesscommunications.googleapis.com/v1/partners/__PARTNER_ID__?updateMask=productCapabilities" \
-H "Content-Type: application/json" \
-H "User-Agent: curl/business-communications" \
-H "$(oauth2l header --json ./service_account_key.json businesscommunications)" \
-d '{
  "productCapabilities": [
    {
      "product": "BUSINESS_MESSAGES",
      "businessMessagesCapability": {
        "webhookUrl": "https://www.your-company-website.com/webhook",
      }
    }
  ]
}'