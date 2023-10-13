function jwtd
  echo $argv | jq -R 'split(".") | .[0],.[1] | @base64d | fromjson'
end
