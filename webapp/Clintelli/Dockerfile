FROM mcr.microsoft.com/dotnet/core/aspnet:3.0 AS base
WORKDIR /app
EXPOSE 80

FROM mcr.microsoft.com/dotnet/core/sdk:3.0 AS build
WORKDIR /src
COPY ["Clintelli.csproj", "./"]

RUN dotnet restore "./Clintelli.csproj"
COPY . .
WORKDIR "/src/."
RUN dotnet build "Clintelli.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "Clintelli.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "Clintelli.dll"]