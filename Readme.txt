1. Make sure docker and docker-compose are installed and running. See:
	- https://docs.docker.com/engine/installation/
	- https://docs.docker.com/compose/
	
2. Open Docker Quickstart Terminal or any other local terminal
 
3. Switch to this directory

4. Build (or rebuild) the docker image and container running:
	'docker-compose build'

5. Start the docker container and the services running:
	'./startup.sh'
	
6. Wait for startup of all services (can take around 10 minutes).

7. API endpoints are accessible via localhost in the following ports (see postman_collection for details).
	- IMPORTANT: If you are using boot2docker you have to replace localhost with appropriate IP (run 'docker-machine env')
		
		Eureka (Monitoring tool): 8788
		Authentication: 9100
		Inventory: 9108
		Manufacturer: 9102
		Product: 9103
		Taxonomy: 9111
		Rating: 9109
		service-company: 9106
		user: 9101
	
----------------------------------------------------------------------------------------------------------------------------	
	
Some useful commands:
	- Shutdown container & services:		'./shutdown.sh'
	- Startup docker container (daemon):	'docker-compose up -d'
	- Shutdown docker container:	 		'docker-compose down'
	- Inspect docker logs while running:	'docker-compose logs -f --tail=10'
	- Docker container status:				'docker-compose ps'
	- Build/Rebuild docker image:			'docker-compose build' (important if you receive a new version of the package)