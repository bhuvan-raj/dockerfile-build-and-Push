

* Instructions to log in via browser and create a personal access token.
* Steps to create a private Docker Hub repository.
* Clean placeholder-based Docker commands.

---

```markdown
# 🐳 Docker Test App - Flask Hello World

This is a simple Flask web application containerized using Docker and pushed to Docker Hub. It is designed to help beginners understand how to containerize an app and publish it on Docker Hub.

---

## 📁 Project Structure

```

test-app/
├── app.py
├── requirements.txt
└── Dockerfile

````

---

## 🛠️ Steps to Build and Push the Docker Image

### 1. Build Docker Image

Run the following command in the project directory:

```bash
docker build -t my-app .
````

---

### 2. Login to Docker Hub via Browser

1. Go to [https://hub.docker.com](https://hub.docker.com)
2. Log in with your credentials.
3. Click on your **profile icon** → **Account Settings**
4. Go to **Security** → **Personal Access Tokens**
5. Click **Create New Access Token**, give it a name, and copy the token.
6. Run:

```bash
docker login
```

When prompted:

* Use your Docker **username**
* Paste the **token** as password

---

### 3. Create a Private Repository on Docker Hub

1. Go to [https://hub.docker.com/repositories](https://hub.docker.com/repositories)
2. Click **"Create Repository"**
3. Enter a repository **name** (e.g., `repo-name`)
4. Choose **Private** as the visibility
5. Click **Create**

---

### 4. Tag the Image for Docker Hub

Replace `username` and `repo-name` with your Docker Hub username and your created repo name:

```bash
docker tag my-app username/repo-name
```

---

### 5. Push the Image to Docker Hub

```bash
docker push username/repo-name
```

---

### 6. Run the Container from Docker Hub

```bash
docker run -d -p 5000:5000 username/repo-name
```

Then visit: [http://localhost:5000](http://localhost:5000)

---

## 📚 Summary of Docker Commands

```bash
docker build -t my-app .
docker login
docker tag my-app username/repo-name
docker push username/repo-name
docker run -d -p 5000:5000 username/repo-name
```

---

## 👨‍🏫 Author

Created by **Bhuvan Raj**

```
