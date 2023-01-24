using GraphQL.Types;

namespace dotnet_graphql.Notes;

public class NotesQuery : ObjectGraphType
{
  public NotesQuery()
  {
    Field<ListGraphType<NoteType>>("notes", resolve: context => new List<Note> {
      new Note { Id = Guid.NewGuid(), Message = "Hello World!" },
      new Note { Id = Guid.NewGuid(), Message = "Hello World! How are you?" }
    });
  }
}