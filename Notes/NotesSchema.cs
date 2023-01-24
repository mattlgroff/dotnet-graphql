using GraphQL.Types;

namespace dotnet_graphql.Notes;

public class NotesSchema : Schema
{
  public NotesSchema(IServiceProvider serviceProvider) : base(serviceProvider)
  {
    Query = serviceProvider.GetRequiredService<NotesQuery>();
  }
}