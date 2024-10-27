# ServerLordWeek1

## Brief explanation - 

- The `Dockerfile` imports the python base image, installs flask, copies the files into the working directory (/app), expose port 8080 and specifies the command to be executed when the container runs.
- The `docker-compose.yml` file spawns 3 containers built from the image created by the above dokcerfile. The data is persisted in the containers by using volumes (bind mounts) and the ports are exposed
- The `nginx.conf` specifies the nginx config file for this project. The 3 servers (the three containers created by running the compose file) are load balanced (round robin) and health checked. Also gzip compression and chaching are enabled for efficiency.

## Demo of the application-

1. Clone the repo and cd into the directory
2. Enter the following coommad in your terminal
```bash
docker compose up
```
3. Access the app at http://localhost:80

## Best load balancing for a cron job manager - 

I feel that for a multi tenant SaaS application, a weighted round robin approach would make the most sense. Tenants demanding more processing power and resources can be assigned servers with higher weights. This will ensure that resources are efficiently utilized.
