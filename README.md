# 📦 Debian Node.js HTTP Server

This is a simple **Node.js** HTTP server running in a **Debian** Docker container. The server listens on port `3020` and serves a basic message. You can use this as a starting point for any web applications you want to run inside a Debian container.

---

## 🚀 Prerequisites

Before running the app, make sure you have:

* Docker installed: [Install Docker](https://docs.docker.com/get-docker/)
* Basic knowledge of using the terminal/command line

---

## 🛠️ Setup and Usage

### 1. Clone this repository (or create a folder with the files)

You can create a new directory on your local machine and add these files:

* **`index.js`**: The Node.js HTTP server script.
* **`Dockerfile`**: The Docker configuration file.

### 2. Build the Docker image

Navigate to the project folder containing the `Dockerfile` and `index.js` file in your terminal.

Run the following command to build the Docker image:

```bash
docker build -t debian-http-server .
```

### 3. Run the Docker container

Once the image is built, you can run it with:

```bash
docker run -p 3000:3000 debian-http-server
```

This command will start the container and bind port `3000` on your host machine to port `3000` inside the container.

### 4. Access the server in your browser

Open your browser and go to:

```
http://localhost:3000
```

You should see:

```
🟢 Hello from Docker + Debian!
```

---

## ⚙️ Commands Recap

* **Build the Docker image**:

```bash
docker build -t debian-http-server .
```

* **Run the container**:

```bash
docker run -p 3000:3000 debian-http-server
```

* **Run the container in detached mode** (background):

```bash
docker run -d -p 3000:3000 --name my-up debian-http-server
```

* **Stop the container**:

```bash
docker stop my-up
```

* **Remove the container**:

```bash
docker rm my-up
```

---

## 🧑‍💻 Project Structure

```txt
mywebapp/
├── Dockerfile        # Dockerfile to create the container image
├── index.js          # Node.js HTTP server script
└── README.md         # Project documentation (this file)
```

---

## 🤔 Further Enhancements

* Add more routes to the server (e.g., `/about`, `/status`).
* Serve static files (e.g., HTML, CSS, JS) from the server.
* Use environment variables for configuration (like port number).
