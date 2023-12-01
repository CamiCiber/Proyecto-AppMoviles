import Foundation
struct NotificationPost: Identifiable, Codable, Hashable {
    let id: String
    let image: String
    let texto: String
    let fecha: Date

    // Implementación de mocks
    static var MOCK_NOTIFICATIONS: [NotificationPost] = [
        .init(id: NSUUID().uuidString, image: "marco", texto: "Marco te envio un mensaje", fecha: Date()),
        .init(id: NSUUID().uuidString, image: "jane_smith_image", texto: "Jane quiere comunicarse contigo", fecha: Date()),
        .init(id: NSUUID().uuidString, image: "elias", texto: "Elias aparecio en tu .....", fecha: Date()),
        .init(id: NSUUID().uuidString, image: "alicia", texto: "Alicia tiene un marcapasos", fecha: Date()),
        .init(id: NSUUID().uuidString, image: "juan", texto: "Juan necesita apoyo social",fecha: Date()),
        .init(id: NSUUID().uuidString, image: "gerardo", texto: "Apruebeme", fecha: Date()),
        .init(id: NSUUID().uuidString, image: "marta", texto: "Marta no tiene un marca...", fecha: Date()),
        .init(id: NSUUID().uuidString, image: "nicolas", texto: "Que rico estas", fecha: Date()),
        .init(id: NSUUID().uuidString, image: "samir", texto: "Te invitamos a nuestra...", fecha: Date()),
        .init(id: NSUUID().uuidString, image: "cristian", texto: "Cristian te envio un beso", fecha: Date()),
        // Agrega más mocks según sea necesario
    ]
}
