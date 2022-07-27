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

# This code creates a location where a brand is available.
# Read more: https://developers.google.com/business-communications/business-messages/reference/business-communications/rest/v1/brands.locations/create

# Replace the __BRAND_ID__ and __PLACE_ID__
# Make sure a service account key file exists at ./service_account_key.json

curl -X POST "https://businesscommunications.googleapis.com/v1/brands/__BRAND_ID__/locations" \
-H "Content-Type: application/json" \
-H "User-Agent: curl/business-communications" \
-H "$(oauth2l header --json ./service_account_key.json businesscommunications)" \
-d '{
  "placeId": "__PLACE_ID__",
  "agent": "brands/__BRAND_ID__/agents/__AGENT_ID__",
  "defaultLocale": "en",
}'
