FROM mcr.microsoft.com/dotnet/core/aspnet:2.1 AS base
WORKDIR /app
EXPOSE 5000
ENV ASPNETCORE_URLS=http://*:5000

FROM mcr.microsoft.com/dotnet/core/sdk:2.1 AS build
WORKDIR /src
COPY ["WebApplicationDotnetCoreDocker.csproj", "./"]
RUN dotnet restore "./WebApplicationDotnetCoreDocker.csproj"
COPY . .
WORKDIR "/src/."
RUN dotnet build "WebApplicationDotnetCoreDocker.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "WebApplicationDotnetCoreDocker.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "WebApplicationDotnetCoreDocker.dll"]
