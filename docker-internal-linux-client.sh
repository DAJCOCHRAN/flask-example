# this is the same as the other linux bash script. The difference here is that you need to reference host.docker.internal from virtual network to physical machine network.
# The client is the container, and the server is running on your physical machine, ports dont need to be mapped

echo myGetService ==========================================================================================

curl -X GET -i http://host.docker.internal:8000/myGetService

echo myGetService Times Two Multiplier ============================================================================>

curl -X GET -i  http://host.docker.internal:8000/myGetService/20

echo myPostService Create Something ===============================================================================>

curl -X POST -i -H "Content-Type: application/json" http://host.docker.internal:8000/myPostService -d '{"data": {"m>

echo myPostService Create Something ===============================================================================>

curl -X PUT -i -H "Content-Type: application/json"  http://host.docker.internal:8000/myPutService -d '{"data": {"me>

echo myPostService Create Something ===============================================================================>

curl -X DELETE http://host.docker.internal:8000/myDeleteService

echo "CLIENT SENT ALL REQUESTS"