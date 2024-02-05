from flask import Flask, jsonify, request 

# creating a Flask app 
app = Flask(__name__) 


@app.route('/myGetService', methods = ['GET']) 
def myGetService(): 
	if(request.method == 'GET'): 
		data = "hello from myGetService Endpoint"
		# this is where you get data from your service
		# insert service code here
		return jsonify({'data': data}), 200 # OK 


@app.route('/myGetService/<int:num>', methods = ['GET']) 
def myGetNumberTimesTwoService(num): 
	return jsonify({'data': num**2}), 200 # OK 

@app.route('/myPostService', methods = ['POST']) 
def myPostService(): 
	body = request.get_json()
	print("Got Request!")
	print(body)
	print(f"message: {body['data']['message']}")
	# This is where you use this request to create something
	return "Created some data", 201 # CREATED

@app.route('/myPutService', methods = ['PUT']) 
def myPutService(): 
	body = request.get_json()
	print("Got Request!")
	print(body)
	print(f"message: {body['data']['message']}") 
	# This is where you use this request to update something
	return "Updated Data", 204 

@app.route('/myDeleteService', methods = ['DELETE']) 
def myDeleteService(): 
	# this is where you use your request to delete something
	return "Deleted something"


# driver function 
if __name__ == '__main__': 

	app.run(debug = True, port=8000) 
