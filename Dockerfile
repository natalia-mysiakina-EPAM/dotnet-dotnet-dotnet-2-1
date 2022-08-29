FROM public.ecr.aws/docker/library/nginx:1.19-alpine
ENV ASPNETCORE_URLS=http://+:8080
WORKDIR /app
COPY /aspnetcoreapp/bin/Debug/netcoreapp2.1/* ./
COPY /aspnetcoreapp/obj/Debug/netcoreapp2.1/* ./
ENTRYPOINT ["dotnet", "aspnetcoreapp.dll"]
