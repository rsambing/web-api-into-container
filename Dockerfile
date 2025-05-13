FROM debian:12

# install curl and node.js

RUN apt update && apt install -y curl \
    && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
    && apt install -y nodejs

# create app folder
WORKDIR /app

# copy the file into the container
COPY index.js .

# expose the port
EXPOSE 3020

# run the app
CMD ["node", "index.js"]
