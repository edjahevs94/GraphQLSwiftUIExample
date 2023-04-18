// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class GetQuery: GraphQLQuery {
  public static let operationName: String = "getQuery"
  public static let document: ApolloAPI.DocumentType = .notPersisted(
    definition: .init(
      #"""
      query getQuery {
        getAllInstitutions {
          __typename
          id
          name
        }
      }
      """#
    ))

  public init() {}

  public struct Data: ExampleSchema.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { ExampleSchema.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("getAllInstitutions", [GetAllInstitution?]?.self),
    ] }

    public var getAllInstitutions: [GetAllInstitution?]? { __data["getAllInstitutions"] }

    /// GetAllInstitution
    ///
    /// Parent Type: `Institution`
    public struct GetAllInstitution: ExampleSchema.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { ExampleSchema.Objects.Institution }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("id", Int.self),
        .field("name", String.self),
      ] }

      public var id: Int { __data["id"] }
      public var name: String { __data["name"] }
    }
  }
}
