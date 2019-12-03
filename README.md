## RPM

```bash
dotnet new tool-manifest
dotnet tool install dotnet-rpm
dotnet deb install
dotnet clean src/MyWeb/MyWeb.csproj
dotnet msbuild \
    /p:OutputPath=../../.publish  \
    /t:CreateRpm  \
    /p:TargetFramework=netcoreapp3.0 \
    /p:RuntimeIdentifier=linux-x64 \
    /p:Configuration=Release \
    src/MyWeb

rpm -qpl .publish/MyWeb.1.0.0.linux-x64.rpm
rpm -qpl /app/*.rpm
```

## Build

```bash
docker-compose build
docker-compose run --rm app
```

## Install

```bash
cp /usr/share/MyWeb/MyWeb.service /etc/systemd/system
systemctl daemon-reload
systemctl start MyWeb.service
systemctl status
```

## Test

```bash
docker kill (docker ps -q)
systemctl enable --now MyWeb.service
systemctl --type=service
systemctl status

open http://localhost:5000/WeatherForecast
```