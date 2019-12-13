*** Settings ***
Library  REST  ssl_verify=false


*** Variables ***
${json}  {"name": 3, "ip_type": "prefix",	"address_value": "1.1.1.1/32"}
${header}  {"Content-Type": "application/json", "Accept": "application/json",	"Authorization2": "ApiKey EdSpg4CEURBxw6k27Lzw"}

*** Test Cases ***
Hello
  ${resp}=  POST  https://34.89.51.214:443/api/v1/orgs/2/addresses  body=${json}   headers=${header}
  Integer  response status  422
  Output  response body  ${OUTPUTDIR}/output.json
  # Log To Console  ${resp}[status]
  ${txt}    Set Variable
  ${txt}=    Run Keyword If    ${length} > 5    Some Keyword
  ...    ELSE IF    ${length} < 5    Some Keyword
  ...    ELSE    Some Keyword
  Log To Console  ${txt}