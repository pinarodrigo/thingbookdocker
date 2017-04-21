1. Make sure docker and docker-compose are installed and running. See:
	- https://docs.docker.com/engine/installation/
	- https://docs.docker.com/compose/
	
2. Open Docker Quickstart Terminal or any other local terminal
 
3. Switch to this directory (thingbook_docker_api)

4. Build and run docker image and container via running:
	'docker-compose up -d'
	
5. Wait for startup of all services (can take some minutes).

6. API endpoints are accessible via localhost (see postman_collection for details).
	- IMPORTANT: If you are using boot2docker you have to replace localhost with appropriate IP (run 'docker-machine env')
	
----------------------------------------------------------------------------------------------------------------------------	
	
Some useful commands:
	- Startup services as daemon: 		'docker-compose up -d'
	- Shutdown services: 				'docker-compose down'
	- Inspect logs while running:		'docker-compose logs -f --tail=10'
	- Service status:					'docker-compose ps'
	- Build/Rebuild image:				'docker-compose build' (important if you receive a new version of the package)