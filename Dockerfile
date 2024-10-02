# pull official base image
FROM node:14

# Set the working directory in the container to /ekpeneidua_deborah_site
WORKDIR /usr/src/app/ekpeneidua_deborah_site

# install app dependencies and copy package.json and package-lock.json
COPY package*.json ./
RUN npm install 

# add app
COPY . ./

#Build the react app
RUN npm run build

# Make port 7775 available to the world outside the container
EXPOSE 7775

# Run the app when the container launches
CMD ["npm", "start"]