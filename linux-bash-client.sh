echo myGetService ==========================================================================================

curl -X GET -i http://127.0.0.1:8000/myGetService

echo myGetService Times Two Multiplier ==========================================================================================

curl -X GET -i  http://127.0.0.1:8000/myGetService/20

echo myPostService Create Something ==========================================================================================

curl -X POST -i -H "Content-Type: application/json" http://127.0.0.1:8000/myPostService -d '{"data": {"message": "I want to create something"}}'

echo myPostService Create Something ==========================================================================================

curl -X PUT -i -H "Content-Type: application/json" http://127.0.0.1:8000/myPutService -d '{"data": {"message": "I want to update something"}}'

echo myPostService Create Something ==========================================================================================

curl -X DELETE -i http://127.0.0.1:8000/myDeleteService 

echo "CLIENT SENT ALL REQUESTS"