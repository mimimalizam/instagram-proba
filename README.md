== README

[Heroku App](http://instagram-proba.herokuapp.com/)

# Get your client authorized for Instagram. 

1. Instargam - Login 
2. Go to [Instagram Developer](https://www.instagram.com/developer/) > Manage Clients
3. Register a new client. 
4. Redirect URL - URL of the server_for_your_app
5. Security tab > not Disable implicit OAuth
6. https://instagram.com/oauth/authorize/?client_id=[Client ID]&redirect_uri=the server_for_your_app&response_type=token
