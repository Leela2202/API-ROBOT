*** Settings ***
Library             String
Library             Collections
Library             json
Library             libraries/RequestsKeywords.py
Resource            keywords/common_keywords.robot
Resource            keywords/NMS_keywords.robot
Suite Setup         API Suite Setup  api_key=ApiKey EdSpg4CEURBxw6k27Lzw 
Suite Teardown      API Suite Teardown

*** Variables ***
${global_log_level}             INFO
${global_timeout}               10s
${global_base_ws_uri}           https://34.89.51.214:443
${org_id}                       2
${devicegroup_id}               2
${device_id}                    1
${name}                         2
${address_value}                1.1.1.1/32
${address_state}                Draft
${address_id}                   11
${global_env_name}              test

# Base URLs
${global_ums_url}               https://ums-${global_env_name}.virginmediabusiness.co.uk
${global_portal_url}            https://sdwan-${global_env_name}.virginmediabusiness.co.uk
${global_ws_external_uri}       https://services-${global_env_name}.virginmediabusiness.co.uk
${global_base_ws_uri}           https://34.89.51.214:443

*** Test Cases ***
# Device Groups #
# Device Groups
#   [Tags]  Build  Nightly
#   Device Groups  org_id=${org_id}  map_id=1

# Device Group All Deep
#   [Tags]  Build  Nightly
#   Device Groups  org_id=${org_id}  map_id=2  deep=true

# Show Device Group
#   [Tags]  Build  Nightly
#   Show Device Group  org_id=${org_id}  devicegroup_id=${devicegroup_id}  map_id=1

# Show Device Group Deep
#   [Tags]  Build  Nightly
#   Show Device Group  org_id=${org_id}  devicegroup_id=${devicegroup_id}  map_id=draft  deep=true

# # Devices #
# Search Device
#   [Tags]  Build  Nightly
#   Search Device  org_id=${org_id}  devicegroup_id=${devicegroup_id}  map_id=draft

# Search Device Deep
#   [Tags]  Build  Nightly
#   Search Device  org_id=${org_id}  devicegroup_id=${devicegroup_id}  map_id=draft  deep=true

# Update Device
#   [Tags]  Build  Nightly
#   Update Device  org_id=${org_id}  device_id=${device_id}  friendly_name=Wanda Kuhlman update2444  note=This is a note2444

# Device All
#   [Tags]  Build  Nightly
#   Device All  org_id=${org_id}

# Device All Deep
#   [Tags]  Build  Nightly
#   Device All  org_id=${org_id}  deep=true

# Show Device
#   [Tags]  Build  Nightly
#   Show Device  org_id=${org_id}  device_id=${device_id}  map_id=1

# Show Device Deep
#   [Tags]  Build  Nightly
#   Show Device  org_id=${org_id}  device_id=${device_id}  map_id=1  deep=true

# Addresses #
Create Address
#   [Tags]  Build  Nightly
#   Create Address  org_id=${org_id}  name=${name}  address_id=${address_id}  address_value=${address_value}  data=${None}

# Show All Addresses
#   [Tags]  Build  Nightly
#   Show All Addresses  org_id=${org_id}  address_state=${address_state}

# Update Address
#   [Tags]  Build  Nightly
#   Update Address  org_id=${org_id}  address_id=${address_id}  new_name=Hulda Senger1saafdafas  address_value=${address_value}  new_note=This is a note${address_id}

# Show Address
#   [Tags]  Build  Nightly
#   Show Address  org_id=${org_id}  address_id=${address_id}  address_state=${address_state}

# Delete Address
#   [Tags]  Build  Nightly
#   Delete Address  org_id=${org_id}  address_id=${address_id}

# Generate JWT Token
#   [Tags]  Build  Nightly
#   Generate JWT Token  username=versa.service@virginmedia.co.uk  password=rncL2cVMg-v%N!j@D+KjGQ8*$$#b#vbN   data=${None}
