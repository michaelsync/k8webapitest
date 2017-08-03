# Use the standard Microsoft .NET Core container
FROM microsoft/aspnetcore:2.0.0-preview2

# Copy our published code from the “/app” folder to the “/app” folder in our container
WORKDIR /app
COPY /app /app

ENV ASPNETCORE_URLS=http://+:8080

# Expose port 5000 for the Web API traffic
EXPOSE 5000

# Restore the necessary packages
# Build and run the dotnet application from within the container
ENTRYPOINT dotnet webapitest.dll