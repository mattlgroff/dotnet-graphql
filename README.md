# dotnet-graphql

Created with `dotnet` cli as a `webapi`

Installed `GraphQL` nuget package.

Setup Dockerfile to build and run using Microsoft's .NET 6.0 Docker images

Deployed to Render

You can hit it at [https://dotnet-graphql.onrender.com/graphql](https://dotnet-graphql.onrender.com/graphql)

Example query:
```
{
    notes {
        id,
        message
    }
}
```

Followed the example by `bervProject` on Github: https://github.com/bervProject/GraphQLNETExample/tree/main/GraphQLNetExample