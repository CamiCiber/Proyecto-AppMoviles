import Foundation

struct MiRedPost: Identifiable, Codable, Hashable {
    let id: String
    let connectionName: String
    let connectionSpecialty: String
    let connectionImage: String
    let commonContacts: Int
}

extension MiRedPost {
    static var MOCK_MI_RED_POST: [MiRedPost] = [
        .init(id: NSUUID().uuidString, connectionName: "John Doe", connectionSpecialty: "Content Publishing Associate at iVisa.com", connectionImage: "john_doe_image", commonContacts: 7),
        .init(id: NSUUID().uuidString, connectionName: "Jane Smith", connectionSpecialty: "Software Engineer at iVisa.com", connectionImage: "jane_smith_image", commonContacts: 3),
        .init(id: NSUUID().uuidString, connectionName: "Alex Johnson", connectionSpecialty: "Marketing Specialist at iVisa.com", connectionImage: "alex_johnson_image", commonContacts: 5),
       .init(id: NSUUID().uuidString, connectionName: "Sofia Casas", connectionSpecialty: "Marketing Specialist at iVisa.com", connectionImage: "sofia_casas_image", commonContacts: 14)
    ]
}
