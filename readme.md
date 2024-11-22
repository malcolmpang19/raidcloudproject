<h1>Malcolm's Cloud Engineering homework</h1>

<h2>Module 1</h2>

- The website is hosted on AWS.
- "web" folders is the code for the web.
- "raidcloudterraform" folder contains the terraform scripts for provisioning resources for module 1.
- "module1architecturediagram.jpg" is the architecture diagram for module 1
- To access the hosted website, go to this url "http://13.213.46.0/raidcloudproject/web/"

  
<h2>Module 2 Continuous Deployment</h2>

- ".github/workflows" folder is the ci/cd pipeline for module 2 using github actions.
- Commit the code to main branch and it will update the website
- The pipeline includes automated testing, linting, security scans, and performance benchmarking as well.


<h2>Module 3 Containers</h2>

-"visitcount" folder contains the application with a webpage that displays the message "You are the <x>th visitor,"
where <x> is a counter value obtained from Redis.
- cd to the "visitcount" folder in terminal and run "docker-compose up --build" to start up the container.
- Open your browser and navigate to http://localhost:5000
- Use "docker-compose down" in terminal to stop the application.
- Use "docker system prune -f" in terminal to clean up unused Docker resources.


<h2>Module 4 Solution Architecting</h2>
- The architecture diagram and cost estimation file is in Module4SolutionArchitecting
