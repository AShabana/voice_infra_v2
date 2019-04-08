usr="ACae6e420f425248d6a26948c17a9e2acf"
pass="c90510fc3afd6132708715e8b2af265c"
from=123
to=+966563702268
uri="/restcomm/2012-04-24/Accounts/$usr/Calls.json"
ip=192.168.1.13
#ip=192.168.104.207
port=8080
rcml="https://nb9uh6rsk2.execute-api.us-east-1.amazonaws.com/Prod/rcml/say/xml?voice=man&amp;language=en&amp;pause=3&amp;repext=Your%20password%20is%20Cequens"
rcml="http://34.193.214.175:1880/rcmlFake?text=Managements&language=en"

#curl -X POST "http://$usr:$pass@$ip:$port$uri" -d "From=$from" -d "To=$to" -d "Url=$rcml" | jq '.' #| lynx --dump --stdin
curl -X POST "http://$usr:$pass@$ip:$port$uri" -d "From=$from" -d "To=$to" -d "Url=$rcml" | jq '.' #| lynx --dump --stdin
