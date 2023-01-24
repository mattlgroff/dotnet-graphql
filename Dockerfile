# Use the official Microsoft .NET 6.0 image
FROM mcr.microsoft.com/dotnet/sdk:6.0

# Set the working directory
WORKDIR /app

# Copy the project files into the container
COPY . .

# Restore the project dependencies
RUN dotnet restore

# Build the project
RUN dotnet build -c Release

# Publish the project
RUN dotnet publish -c Release -o out

# Set the working directory for the final command
WORKDIR /app/out

# Expose the port the API will run on
EXPOSE 5000

# Run the API
ENTRYPOINT ["dotnet", "dotnet-graphql.dll"]