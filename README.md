## RPM

```bash
dotnet new tool-manifest
dotnet tool install dotnet-rpm
dotnet deb install
dotnet msbuild \
    /p:OutputPath=../../.publish  \
    /t:CreateRpm  \
    /p:TargetFramework=netcoreapp3.0 \
    /p:RuntimeIdentifier=linux-x64 \
    /p:Configuration=Release \
    src/MyWeb
```

## Compose

```bash
docker-compose run --rm app
```