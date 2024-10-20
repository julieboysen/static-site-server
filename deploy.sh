#!/bin/bash
rsync -avz --delete ./local_site/ username@your_server_ip:/var/www/html/
