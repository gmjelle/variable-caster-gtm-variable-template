___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Variable Caster",
  "categories": ["UTILITY"],
  "description": "Casts a variable to another type",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "inputVariable",
    "displayName": "Input Variable",
    "simpleValueType": true,
    "help": "Enter a variable to be cast to another type"
  },
  {
    "type": "SELECT",
    "name": "castTo",
    "displayName": "Cast string to..",
    "macrosInSelect": false,
    "selectItems": [
      {
        "value": "string",
        "displayValue": "String (default)"
      },
      {
        "value": "boolean",
        "displayValue": "Boolean"
      },
      {
        "value": "integer",
        "displayValue": "Integer"
      },
      {
        "value": "array",
        "displayValue": "Array"
      },
      {
        "value": "single_array",
        "displayValue": "Single element array"
      }
    ],
    "simpleValueType": true,
    "defaultValue": "string",
    "alwaysInSummary": false
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

// Enter your template code here.
const log = require('logToConsole');  

const makeInteger = require('makeInteger');
 
const fail = msg => {
  log('[ERROR GTM / Query Param] ' + msg);
  return data.gtmOnFailure();
};

const varToBeCast = data.inputVariable;

switch(data.castTo) {
  case "boolean":
    return ['true', '1', 'treu', 'aye'].indexOf(varToBeCast.toLowerCase()) > -1 || fail("Can't cast to Boolean");
  case "integer":
    return makeInteger(varToBeCast) || fail("Can't cast to Integer");
  case "array":
    return varToBeCast.split(" ") || fail("Can't cast to Array");
  case "single_array":
    return [varToBeCast] || fail("Can't cast to Single Array");
  default:
    return varToBeCast;
       
}


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []

___NOTES___

Created on 6/22/2023, 2:48:43 PM


