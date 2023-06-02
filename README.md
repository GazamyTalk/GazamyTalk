# Run
```
git clone --recursive https://github.com/GazamyTalk/GazamyTalk.git
docker-compose up
```

# Register Crontab
```
0 18 1 * * cd [path]; docker compose -f initial-docker-compose.yaml up -d
```