echo '------------------sign------------------'
curl -H "cookie:${COOKIE}" -H 'content-type:application/json;charset=UTF-8' -d '{"token": "glados_network"}' -X POST 'https://glados.rocks/api/user/checkin' | grep -Eo '"message":"[^"]*"'
echo '-----------------status-----------------'
curl -H "cookie:${COOKIE}" -X GET 'https://glados.rocks/api/user/status' | grep -Eo '"leftDays":"[^"]*"'

