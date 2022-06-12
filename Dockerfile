# Start build phase
FROM node:16-alpine as builder
WORKDIR '/app'

# Install depedencies
COPY package.json .
RUN npm install

# Copy everything to image
COPY . .

# Build everything in WORKDIR/build
RUN npm run build 

# Start run phase
FROM nginx
EXPOSE 80
COPY --from=builder /app/build /usr/share/nginx/html

# Do not need a RUN. We use the default command.