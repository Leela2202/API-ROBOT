*** Settings ***
Library         REST    https://jsonplaceholder.typicode.com

# *** Test Cases ***
*** Keywords ***
# Device Groups # 
# Device Groups
#   [Arguments]  ${org_id}  ${map_id}  ${deep}=false  ${status_code}=200
#   ${expected_resp} =  Generate NMS Response
#   ${resp} =  Get Request  /api/v1/orgs/${org_id}/devicegroups/maps/${map_id}  status_code=${status_code}
#   Dictionary Should Contain Key  ${resp.json()}  data
#   log  ${expected_resp}
#   Response Should Contain  ${expected_resp}  ${resp.json()}

# Show Device Group
#   [Arguments]  ${org_id}  ${devicegroup_id}  ${map_id}  ${deep}=false  ${status_code}=200
#   ${expected_resp} =  Generate NMS Response
#   ${resp} =  Get Request  /api/v1/orgs/${org_id}/devicegroups/${devicegroup_id}/maps/${map_id}/?deep=${deep}  status_code=${status_code}
#   Dictionary Should Contain Key  ${resp.json()}  data
#   Response Should Contain  ${expected_resp}  ${resp.json()}
#   [Return]  ${resp.json()}

# # Device #
# Search Device
#   [Arguments]  ${org_id}  ${devicegroup_id}  ${map_id}  ${deep}=false  ${status_code}=200
#   ${device_groups} =  Show Device Group  org_id=${org_id}  devicegroup_id=${devicegroup_id}  map_id=draft  deep=true
#   ${expected_resp} =  Generate NMS Response
#   ${resp} =  Get Request  /api/v1/orgs/${org_id}/search/device?versa_name=${device_groups["data"]["devices"][0]["versa_name"]}&deep=${deep}   status_code=${status_code}
#   Dictionary Should Contain Key  ${resp.json()}  data
#   Response Should Contain  ${expected_resp}  ${resp.json()}

# Update Device
#   [Arguments]  ${org_id}  ${device_id}  ${friendly_name}  ${note}  ${status_code}=200
#   ${expected_resp} =  Generate NMS Response  message=The device was updated  testcase=Update Device
#   ${resp} =  Put Request  /api/v1/orgs/${org_id}/devices/${device_id}?friendly_name=${friendly_name}&note=${note}  status_code=${status_code}
#   Response Should Contain  ${expected_resp}  ${resp.json()}

# Device All
#   [Arguments]  ${org_id}  ${deep}=false  ${status_code}=200
#   ${expected_resp} =  Generate NMS Response
#   ${resp} =  Get Request  /api/v1/orgs/${org_id}/devices/maps/active?deep=${deep}  status_code=${status_code}
#   Dictionary Should Contain Key  ${resp.json()}  data
#   Response Should Contain  ${expected_resp}  ${resp.json()}

# Show Device
#   [Arguments]  ${org_id}  ${device_id}  ${map_id}  ${deep}=false  ${status_code}=200
#   ${expected_resp} =  Generate NMS Response
#   ${resp} =  Get Request  /api/v1/orgs/${org_id}/devices/${device_id}/maps/${map_id}?deep=${deep}  status_code=${status_code}
#   Dictionary Should Contain Key  ${resp.json()}  data
#   Response Should Contain  ${expected_resp}  ${resp.json()}

# Addresses #
# Create Address
#   [Arguments]  ${org_id}  ${name}  ${address_id}  ${address_value}  ${data}
#   ${expected_resp} =  Generate NMS Response
#   ${body} =  Create Dictionary  name=${name}  ip_type=prefix  address_value=${address_value}
#   Log  ${body}
#   ${json_string} =    evaluate    json.dumps(${body})   json
#   Log  ${json_string}
#   ${header} =  Create Dictionary  Content-Type=application/json
#   ${resp}=  Post Request  API  uri=api/v1/orgs/${org_id}/addresses  data=${body}  headers=${header}
#   Dictionary Should Contain Key  ${resp}  data
#   Response Should Contain  ${expected_resp}  ${resp}

# Show All Addresses
#   [Arguments]  ${org_id}  ${address_state}
#   ${expected_resp} =  Generate NMS Response
#   ${resp} =  Get Request  alias=API  uri=/api/v1/orgs/${org_id}/addresses/maps/${address_state}
#   Dictionary Should Contain Key  ${resp.json()}  data
#   Response Should Contain  ${expected_resp}  ${resp.json()}

# Update Address
#   [Arguments]  ${org_id}  ${address_id}  ${new_name}  ${address_value}  ${new_note}
#   ${expected_resp} =  Generate NMS Response
#   ${body} =  Create Dictionary  name=${new_name}  address_value=${address_value}  note=${new_note}
#   Log  ${body}
#   ${json_string} =    evaluate    json.dumps(${body})   json
#   Log  ${json_string}
#   ${header} =  Create Dictionary  Content-Type=application/json
#   ${resp} =  Put Request  alias=API  uri=/api/v1/orgs/${org_id}/addresses/${address_id}  data=${json_string}  headers=${header}
#   Dictionary Should Contain Key  ${resp.json()}  data
#   Response Should Contain  ${expected_resp}  ${resp.json()}

# Show Address
#   [Arguments]  ${org_id}  ${address_id}  ${address_state}
#   ${expected_resp} =  Generate NMS Response
#   ${resp} =  Get Request  alias=API  uri=/api/v1/orgs/${org_id}/addresses/${address_id}/maps/${address_state}
#   Log  ${resp.json()}
#   Dictionary Should Contain Key  ${resp.json()}  data
#   Response Should Contain  ${expected_resp}  ${resp.json()}

# Delete Address
#   [Arguments]  ${org_id}  ${address_id}  ${status_code}=200
#   ${expected_resp} =  Generate NMS Response
#   ${resp} =  Delete Request  alias=API  uri=/api/v1/orgs/${org_id}/addresses/${address_id}/
#   Dictionary Should Contain Key  ${resp.json()}  data
#   Response Should Contain  ${expected_resp}  ${resp.json()}

# Generate JWT Token
#   [Arguments]  ${username}  ${password}  ${data}
#   ${body} =  Create Dictionary  grant_type=password  username=${username}  password=${password}
#   ${json_string} =    evaluate    json.dumps(${body})   json
#   Log  ${json_string}
#   ${header} =  Create Dictionary  Content-Type=application/json
#   ${resp}=  Post Request  API  uri=api/v1/orgs/${org_id}/addresses  data=${body}  headers=${header}

# Create Address
#   [Arguments]  ${org_id}  ${name}  ${address_id}  ${address_value}  ${data}
#   ${expected_resp} =  Generate NMS Response
#   ${body} =  Create Dictionary  name=${name}  ip_type=prefix  address_value=${address_value}
#   Log  ${body}
#   ${json_string} =    evaluate    json.dumps(${body})   json
#   Log  ${json_string}
#   ${header} =  Create Dictionary  Content-Type=application/json
#   ${resp}=  POST  API  uri=api/v1/orgs/${org_id}/addresses  data=${body}  headers=${header}
#   Dictionary Should Contain Key  ${resp}  data
#   Response Should Contain  ${expected_resp}  ${resp}