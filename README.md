# [Non-oficial] Azure Service Fabric (CLI) inside a Docker container
This is a non-oficial Docker container preconfigured with the Azure Service Fabric and the Azure command-line interface (CLI)

### Get Started
Pulling the image:  
`docker pull celsojr/az-service-fabric-cli[:tag]`

### Usage  
Running the container:  
`docker run -it [--name the_name] celsojr/az-service-fabric-cli[:tag]`

Running the container with a shared folder:  
`docker run -it [--name the_name] -v c:/Users:/data celsojr/az-service-fabric-cli[:tag]`

Once you get the container up and running you can search for help:  
`$ sfctl -h`
### More information
Meet Azure Service Fabric:  
[Microsoft Docs | Service Fabric Overview](https://docs.microsoft.com/en-us/azure/service-fabric/service-fabric-overview)

### Contributing
If you would like to contribute with this project, just send the PR or contact [me](mailto:celsojrfull@gmail.com) via email first for any additional questions or comments if you prefer.
