// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class BookQuery: GraphQLQuery {
  public static let operationName: String = "BookQuery"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query BookQuery($title: String!) { book(title: $title) { __typename title author } }"#
    ))

  public var title: String

  public init(title: String) {
    self.title = title
  }

  public var __variables: Variables? { ["title": title] }

  public struct Data: RocketReserverAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: any ApolloAPI.ParentType { RocketReserverAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("book", Book?.self, arguments: ["title": .variable("title")]),
    ] }

    public var book: Book? { __data["book"] }

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