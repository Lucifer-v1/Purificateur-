FROM node:lts-buster

# Clone bot from GitHub
RUN git clone https://github.com/Lucifer-v1/Purificateur- /root/purificateur

# Set working directory
WORKDIR /root/purificateur

# Install dependencies
RUN npm install && npm install -g pm2

# Expose port
EXPOSE 9090

# Start the bot
CMD ["npm", "start"]

