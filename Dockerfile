# Use the official Ubuntu image as a parent image
FROM ubuntu:latest

# Update the system and install necessary packages
RUN apt-get update && apt-get install -y \
    wget \
    unzip \
    openjdk-8-jdk

# Set the working directory in the container to /server
WORKDIR /server

# Download the Tekkit2 server
RUN wget https://servers.technicpack.net/Technic/servers/tekkit-2/Tekkit-2_Server_v1.2.3.zip

# Unzip the server files
RUN unzip Tekkit-2_Server_v1.2.3.zip

# Agree to the EULA
RUN echo "eula=true" > eula.txt

# Expose the server port
EXPOSE 25565

# Run the server
CMD ["java", "-server", "-Xmx8G", "-Dfml.queryResult=confirm", "-jar", "forge-1.12.2-14.23.5.2860.jar", "nogui"]
