# docker-nodejs
This is a nodejs and mysql docker based stack orchestrated using docker-compose. This stack was created to host TDayChat but should be easily repurposable.

## How to use

#### 1. Clone the repo
```bash
git clone https://github.com/TDay1/docker-nodejs.git
```

#### 2. package.json
In the package.json add the following start script to the `package.json` file. This command will be run when the NodeJS server is started by default. The example provided will download the required dependancies for the project and then start the project.
```json
  "scripts": {
    "start": "npm install && node index.js",
  }
```

#### 3. Move files
Move the contents of your NodeJS project into the `./app` firectory of the `docker-nodejs` directory

#### 4. Starting and stopping the containers

In order to make things easier I have included a simple bash script that will check that you have the software required to run the stack and then either start or stop it for you.

__To start the containers__
```bash
./server.sh start
```

__To stop the containers__
```bash
./server.sh stop
```

If upon running either of the above commands you get a `Permission Denied` error. just add the suffix `sudo bash` to the above commands and it should work.

