##PINGR PROTOTYPE API
Host: pingr-prototype.herokuapp.com

GET <host> : returns welcome message. Useful for turning heroku on

GET <host>/users : returns list of all users

POST <host>/users :
	- Request body: { "facebook_uuid":"somestringhere" }
	- Creates a user with that uuid and then returns the newly created user

GET <host>/users/<uuid> : returns the specified user

PUT <host>/users/<uuid> :
	- Request body: { "x_coord":someinteger , "y_coord":someinteger }
	- Updates x_coord and y_coord of specified user, then returns user
