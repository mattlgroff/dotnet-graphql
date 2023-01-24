# Use the official Microsoft .NET 6.0 SDK Alpine image
FROM mcr.microsoft.com/dotnet/sdk:6.0-alpine as build

# Expose the ports
EXPOSE 80
EXPOSE 443

# Set the working directory
WORKDIR /app

# Copy the project files into the container
COPY . .

# Restore the project dependencies
RUN dotnet restore

# Build the project
RUN dotnet build -c Release

# Publish the project
RUN dotnet publish -c Release -o /app/published-app

# Use the official Microsoft .NET 6.0 Runtime Alpine image
FROM mcr.microsoft.com/dotnet/aspnet:6.0-alpine as runtime

# Set the working directory
WORKDIR /app

# Copy the published app into the container
COPY --from=build /app/published-app /app

# Set the entrypoint
ENTRYPOINT [ "dotnet", "/app/dotnet-graphql.dll" ]