Write-Host myGetService ==========================================================================================

Invoke-WebRequest -Method GET http://127.0.0.1:8000/myGetService

Write-Host myGetService Times Two Multiplier ==========================================================================================

Invoke-WebRequest -Method GET http://127.0.0.1:8000/myGetService/20

Write-Host myPostService Create Something ==========================================================================================

Invoke-WebRequest -Method POST -ContentType "application/json" -Uri http://127.0.0.1:8000/myPostService -Body '{"data": {"message": "I want to create something"}}'

Write-Host myPostService Create Something ==========================================================================================

Invoke-WebRequest -Method PUT -ContentType "application/json" -Uri http://127.0.0.1:8000/myPutService -Body '{"data": {"message": "I want to update something"}}'

Write-Host myPostService Create Something ==========================================================================================

Invoke-WebRequest -Method DELETE -ContentType "application/json" -Uri http://127.0.0.1:8000/myDeleteService 

Write-Host "CLIENT SENT ALL REQUESTS"