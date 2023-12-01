import Foundation
struct Chat: Identifiable, Codable, Hashable {
    let id: String
    let imagenName: String
    let name: String
    let lastMessage: String
    let lastMessageDate:String
}
extension Chat {
    static var MOCK_CHAT: [Chat] = [
        .init(id: NSUUID().uuidString, imagenName:"alicia", name: "Alicia",lastMessage: "¡Hola! ¿Cómo estás?", lastMessageDate: "Hoy"),
        .init(id: NSUUID().uuidString, imagenName:"marta", name: "Marta",lastMessage: "Te ofrecemos un nuevo puesto en ...", lastMessageDate: "Hoy"),
        .init(id: NSUUID().uuidString, imagenName:"juan", name: "Juan",lastMessage:"Bienvenido al area de ...", lastMessageDate: "Hoy"),
        .init(id: NSUUID().uuidString, imagenName:"marco", name: "Marco",lastMessage: "Formo parte del equipo de ...", lastMessageDate: "Hoy"),
        .init(id: NSUUID().uuidString, imagenName:"elias", name: "Elias",lastMessage: "Tengo un puesto disponible para..", lastMessageDate: "Hoy"),
        .init(id: NSUUID().uuidString, imagenName:"mateo", name: "Mateo",lastMessage: "Programa una reunión para...", lastMessageDate: "Hoy"),
        .init(id: NSUUID().uuidString, imagenName:"luis", name: "Luis",lastMessage: "Necesitas apoyo con...", lastMessageDate: "Hoy"),
        .init(id: NSUUID().uuidString, imagenName:"samir", name: "Samir",lastMessage: "¡Hola! Estoy interesado...", lastMessageDate: "Hoy"),
        .init(id: NSUUID().uuidString, imagenName:"fiorella", name: "Fiorella",lastMessage: "Me podrias compartir...", lastMessageDate: "Ayer"),
        .init(id: NSUUID().uuidString, imagenName:"nicolas", name: "Nicolas",lastMessage: "El puesto requiere de...", lastMessageDate: "Ayer"),
        .init(id: NSUUID().uuidString, imagenName:"cristian", name: "Cristian",lastMessage: "Gracias por comunicarte...", lastMessageDate: "Ayer"),
        .init(id: NSUUID().uuidString, imagenName:"gerardo", name: "Gerardo",lastMessage: "Un gusto conocerte,...", lastMessageDate: "Ayer")
    ]}
