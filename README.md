
# Static Site Server with Nginx and Rsync

Deployed a simple static website on a remote Linux server using Nginx and rsync for file synchronization.

### Key Features

- Static website using Nginx.
- Deploy site changes using rsync.
- Automate deployment with a simple bash script.

## Requirements

1. A remote Linux server (e.g., DigitalOcean, AWS, etc.).
2. SSH access to the server.
3. Nginx installed on the server.
4. A simple static site (HTML, CSS, images).
5. Rsync installed on your local machine.

## Setup and Usage

### 1. Setup Your Remote Server

- Set up a remote Linux server using any cloud provider like DigitalOcean, AWS, or others.
- Ensure you can connect to the server via SSH.

### 2. Install Nginx

SSH into your remote server and run the following command to install Nginx:

```
sudo apt update
sudo apt install nginx
```

Check if Nginx is running:

```
sudo systemctl status nginx
```

### 3. Configure Nginx to Serve Your Site

Edit the Nginx configuration file to serve your static site:

```
sudo nano /etc/nginx/sites-available/default
```

Ensure the `root` directive points to the directory where you will upload your static site files:

```
root /var/www/html;
index index.html;
```

Test the configuration:

```
sudo nginx -t
```

Reload Nginx to apply changes:

```
sudo systemctl reload nginx
```

### 4. Sync Files with Rsync

Use `rsync` to copy your local static site to the remote server:

```
rsync -avz --delete /path/to/your/local_site/ username@your_server_ip:/var/www/html/
```

This will upload your local static site files to the remote server.

### 5. Automate Deployment with `deploy.sh`

You can automate the deployment process with a `deploy.sh` script. I have provided a script, where you need to change the local path to the static site as well as your username and the IP of your server.

Make the script executable:

```
chmod +x deploy.sh
```

Now, you can simply run `./deploy.sh` to deploy your site.

### 6. Access Your Site

Open a web browser and access your site via your server's IP:

- `http://your_server_ip`

## Project Link
For more details about this project, visit the [Static Site Server Project](https://roadmap.sh/projects/static-site-server).
