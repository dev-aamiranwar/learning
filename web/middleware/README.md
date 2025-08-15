# Middleware in .NET Core

Middleware is a software that's assembled into an app pipeline to handle requests and responses. Each component:

- Chooses whether to pass the request to the next component in the pipeline.
- Can perform work before and after the next component in the pipeline.

Request delegates are used to build the request pipeline. The request delegate handle each HTTP request.

Request delegates are configured using [Run](https://learn.microsoft.com/en-us/dotnet/api/microsoft.aspnetcore.builder.runextensions.run?view=aspnetcore-9.0), [Map](https://learn.microsoft.com/en-us/dotnet/api/microsoft.aspnetcore.builder.mapextensions.map?view=aspnetcore-9.0), and [Use](https://learn.microsoft.com/en-us/dotnet/api/microsoft.aspnetcore.builder.useextensions.use?view=aspnetcore-9.0) extension methods. An individual request delegate can be specified in-line as an anonymous method (called in-line middleware), or it can be defined in a reusable class. The reusable classes and in-line methods are *middleware*, also called *middleware components*. Each middleware component in the request pipeline is responsible for invoking the next component or short-circuiting the pipeline. When a middleware short-circuits, its called a terminal middleware because it prevents further middleware from processing the request.
