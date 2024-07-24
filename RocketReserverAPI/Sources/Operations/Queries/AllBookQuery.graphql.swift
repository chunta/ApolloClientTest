// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class AllBookQuery: GraphQLQuery {
  public static let operationName: String = "AllBookQuery"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query AllBookQuery { books { __typename title author } }"#
    ))

  public init() {}

  public struct Data: RocketReserverAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: any ApolloAPI.ParentType { RocketReserverAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("books", [Book?]?.self),
    ] }

    public var books: [Book?]? { __data["books"] }

    /// Book
    ///
    /// Parent Type: `Book`
    public struct Book: RocketReserverAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: any ApolloAPI.ParentType { RocketReserverAPI.Objects.Book }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("title", String?.self),
        .field("author", String?.self),
      ] }

      public var title: String? { __data["title"] }
      public var author: String? { __data["author"] }
    }
  }
}