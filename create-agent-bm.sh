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

# This code creates a Business Messages agent.
# Read more: https://developers.google.com/business-communications/business-messages/guides/how-to/agents?method=api#create_the_agent

# Replace the __BRAND_ID__ with a brand id that you can create agents for
# Make sure a service account key file exists at ./service_account_key.json

curl -X POST "https://businesscommunications.googleapis.com/v1/brands/__BRAND_ID__/agents" \
-H "Content-Type: application/json" \
-H "User-Agent: curl/business-communications" \
-H "$(oauth2l header --json ./service_account_key.json businesscommunications)" \
-d '{
  "displayName": "My first agent",
  "businessMessagesAgent": {
    "logoUrl": "https://developers.google.com/identity/images/g-logo.png",
    "entryPointConfigs": [
      {
        "allowedEntryPoint": "NON_LOCAL"
      }
    ],
    "customAgentId": "'$(uuidgen)'",
    "nonLocalConfig": {
      "regionCodes": [
        "US",
        "CA"
      ],
      "contactOption": {
        "url": "https://www.your-company-website.com",
        "options": [
          "EMAIL",
          "PHONE"
        ]
      },
      "enabledDomains": [
        "your-company-website.com"
      ],
      "phoneNumber": {
        "number": "+10000000000"
      },
      "callDeflectionPhoneNumbers": [
        {
          "number": "+10000000000"
        },
        {
          "number": "+10000000000"
        }
      ]
    },
    "conversationalSettings": {
      "en": {
        "welcomeMessage": {
          "text": "This is a sample welcome message"
        },
        "privacyPolicy": {
          "url": "https://www.your-company-website.com/privacy"
        },
        "conversationStarters": [
          {
            "suggestion": {
              "reply": {
                "text": "Option 1",
                "postbackData": "postback_option_1"
              }
            }
          }
        ]
      }
    },
    "defaultLocale": "en",
    "primaryAgentInteraction": {
      "interactionType": "HUMAN",
      "humanRepresentative": {
        "humanMessagingAvailability": {
          "hours": [
            {
              "startTime": {
                "hours": 8,
                "minutes": 30
              },
              "endTime": {
                "hours": 20,
                "minutes": 0
              },
              "timeZone": "America/Los_Angeles",
              "startDay": "MONDAY",
              "endDay": "SATURDAY"
            }
          ]
        }
      }
    }
  }
}'
