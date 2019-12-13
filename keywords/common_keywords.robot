*** Keywords ***
Generic Suite Setup
  [Arguments]  ${log_level}=${global_log_level}
  Set Log Level  ${log_level}

API Suite Setup
  [Arguments]  ${api_key}  ${base_ws_uri}=${global_ws_external_uri}  ${log_level}=${global_log_level}
  Generic Suite Setup  ${log_level}
  ${headers} =  Create Dictionary  Content-Type=*/*  Accept=*/*  Authorization=Basic ums
#   Authorization2=${api_key}  accept-encoding=gzip, deflate, br
  # Create Session  ${SUITE NAME}  ${base_ws_uri}  ${headers}

API Suite Teardown
  Delete All Sessions

Generate NMS Response
  [Arguments]  ${data}=${None}  ${status}=success  ${message}=${EMPTY}  ${testcase}=${EMPTY}
  ${data} =  Load JSON  ${data}
  ${result} =  Create Dictionary
  Run Keyword If  "${testcase}" != "${EMPTY}"  Set To Dictionary  ${result}  status=success  message=${message}
  ...  ELSE  Set To Dictionary  ${result}  data=${data}  status=success  message=${message}
  [Return]  ${result}
