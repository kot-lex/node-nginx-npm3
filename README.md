# node-nginx-npm3
## Minimalistic Docker image for running static websites
Includes Node LTS,  Nginx and both npm 2 and npm 3 as some projects reiquire specific npm version

###Usage
Create Dockerfile
```
FROM kotlex/node-nginx-npm3:latest

# Copy source files to nginx docroot
COPY . /var/www/html

# Run server
CMD ["nginx", "-g", "daemon off;"]
```

Build an image: 
``docker build --tag mysite . ``

Run container:
``docker run -p 8080:80 mysite``

Test it: 
``curl http://localhost:8080/``