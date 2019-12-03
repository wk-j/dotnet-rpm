FROM centos:7

RUN rpm -Uvh https://packages.microsoft.com/config/centos/7/packages-microsoft-prod.rpm
RUN yum install -y dotnet-sdk-3.0
RUN yum install -y aspnetcore-runtime-3.0
RUN yum install -y dotnet-runtime-3.0