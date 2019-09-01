#!bin/bash
curl $(docker port chatbot_ngrok 4040)/api/tunnels > tunnels.json
docker run -v $(pwd)/tunnels.json:/tmp/tunnels.json --rm  realguess/jq jq .tunnels[1].public_url /tmp/tunnels.json 
