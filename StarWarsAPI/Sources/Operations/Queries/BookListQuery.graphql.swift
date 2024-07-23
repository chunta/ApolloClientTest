// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class BookListQuery: GraphQLQuery {
  public static let operationName: String = "BookListQuery"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query BookListQuery { hello books { __typename author title } runIt }"#
    ))

  public init() {}

  public struct Data: StarWarsAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: any ApolloAPI.ParentType { StarWarsAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("hello", String?.self),
      .field("books", [Book?]?.self),
      .field("runIt", String?.self),
    ] }

    public var hello: String? { __data["hello"] }
    public var books: [Book?]? { __data["books"] }
    public var runIt: String? { __data["runIt"] }

    /// Book
    ///
    /// Parent Type: `Book`
    public struct Book: StarWarsAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: any ApolloAPI.ParentType { StarWarsAPI.Objects.Book }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("author", String?.self),
        .field("title", String?.self),
      ] }

      public var author: String? { __data["author"] }
      public var title: String? { __data["title"] }
    }
  }
}