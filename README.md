# Run
```
git clone --recursive https://github.com/GazamyTalk/GazamyTalk.git
docker-compose up  # or docker compose up
```

# Environment Variables
Create .env file and write below code. Fill the `[[REQUIRE]]` part.
```
# for docker-compose.yaml
ADMIN_EMAIL=[[REQUIRE]]
DOMAIN_NAME=[[REQUIRE]]

# databases
LOGIN_DB_HOST=mysql
LOGIN_DB_PORT=3306
LOGIN_DB_USER=gazamytalk
LOGIN_DB_PASSWORD=[[REQUIRE]]
LOGIN_DB_DATABASE=users
LOGIN_DB_ROOT_PASSWORD=[[REQUIRE]]
MAIN_DB_URI="mongodb://mongodb:27017/main"
CHAT_DB_URI="mongodb://mongodb:27017/chat"

# session
SESSION_STORE_URL="redis://redis:6379"
SESSION_SECRET=[[REQUIRE]]
```