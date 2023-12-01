import Foundation
struct EmpleoPost: Identifiable, Codable, Hashable {
    let id: String
    let imagenNombre: String
    let titulo: String
    let empresa: String
    let tipoEmpleo:String
    let descripcion:String
    let ciudad: String
    let dias: String
    let calificacion:Int
}

extension EmpleoPost {
    static var MOCK_EMPLEO_POST: [EmpleoPost] = [
        .init(id: NSUUID().uuidString, imagenNombre: "empresa1", titulo: "Desarrollador iOS", empresa: "Tech Corp", tipoEmpleo: "Tiempo Completo", descripcion: "Experiencia con Swift y Xcode", ciudad: "Lima", dias: "5d",calificacion:3),
                .init(id: NSUUID().uuidString, imagenNombre: "empresa2", titulo: "Diseñador UX", empresa: "Eficacia Peru", tipoEmpleo: "Tiempo Completo", descripcion: "Diseño enfocado en la experiencia de usuario", ciudad: "Lima", dias: "2d",calificacion:5),
                .init(id: NSUUID().uuidString, imagenNombre: "empresa3", titulo: "Programador Oracle", empresa: "Bembos", tipoEmpleo: "Medio Tiempo", descripcion: "Manejo de bases de datos Oracle", ciudad: "Lima", dias: "4d",calificacion:3),
                .init(id: NSUUID().uuidString, imagenNombre: "empresa4", titulo: "Analista Cloud", empresa: "APESEG", tipoEmpleo: "Medio Tiempo", descripcion: "Conocimientos en AWS y Azure", ciudad: "Lima", dias: "6d",calificacion:2),
                .init(id: NSUUID().uuidString, imagenNombre: "empresa5", titulo: "Ingeniero de Datos", empresa: "Tata Consultancy Services", tipoEmpleo: "Medio Tiempo", descripcion: "Experiencia con big data y ETL", ciudad: "Lima", dias: "1d",calificacion:5),
                .init(id: NSUUID().uuidString, imagenNombre: "empresa6", titulo: "Software Engineer", empresa: "SoftwareOne", tipoEmpleo: "Medio Tiempo", descripcion: "Desarrollo de aplicaciones multiplataforma", ciudad: "Lima", dias: "2m",calificacion:5),
                .init(id: NSUUID().uuidString, imagenNombre: "empresa7", titulo: "Analista de Software", empresa: "MAPFRE", tipoEmpleo: "Freelance", descripcion: "Especialización en sistemas de gestión", ciudad: "Lima", dias: "10d",calificacion:4),
                .init(id: NSUUID().uuidString, imagenNombre: "empresa8", titulo: "Java backend", empresa: "NTT DATA", tipoEmpleo: "Freelance", descripcion: "Amplia experiencia en servicios RESTful", ciudad: "Lima", dias: "2d",calificacion:3),
                .init(id: NSUUID().uuidString, imagenNombre: "empresa9", titulo: ".NET Developer", empresa: "Inetum", tipoEmpleo: "Freelance", descripcion: "Sólido conocimiento en .NET y C#", ciudad: "Lima", dias: "5d",calificacion:5),
                .init(id: NSUUID().uuidString, imagenNombre: "empresa10", titulo: "Soporte IT", empresa: "GE HealthCare", tipoEmpleo: "Freelance", descripcion: "Experiencia en mantenimiento de hardware y software", ciudad: "Lima", dias: "5d",calificacion:2),
                .init(id: NSUUID().uuidString, imagenNombre: "empresa11", titulo: "Senior Backend Java", empresa: "Minsait", tipoEmpleo: "Freelance", descripcion: "Gestión de proyectos backend con Java", ciudad: "Lima", dias: "7d",calificacion:4),
                .init(id: NSUUID().uuidString, imagenNombre: "empresa12", titulo: "Developer Backend Java", empresa: "Encora", tipoEmpleo: "Tiempo Completo", descripcion: "Desarrollo de aplicaciones empresariales Java", ciudad: "Lima", dias: "1d",calificacion:3),
                .init(id: NSUUID().uuidString, imagenNombre: "empresa13", titulo: "Servicio de baseline", empresa: "Grupo financiero Ficohsa", tipoEmpleo: "Freelance", descripcion: "Análisis de línea base financiera", ciudad: "Lima", dias: "4d",calificacion:4),
                .init(id: NSUUID().uuidString, imagenNombre: "empresa14", titulo: "QA Automation", empresa: "Globant", tipoEmpleo:"Freelance", descripcion:"Empresa dinámica busca ampliar equipo de QA con oportunidades de crecimiento profesional.", ciudad: "Barranco", dias: "6d",calificacion:3),
                .init(id: NSUUID().uuidString, imagenNombre: "empresa15", titulo: "Practicante sistemas", empresa: "Yape", tipoEmpleo:"Freelance", descripcion:"Buscamos practicantes con gran pasión por la innovación tecnológica y el aprendizaje constante.", ciudad: "Miraflores", dias: "3d",calificacion:4),
                .init(id: NSUUID().uuidString, imagenNombre: "empresa16", titulo: "Contador Jr.", empresa: "Indra",tipoEmpleo:"Freelance", descripcion:"Únete a nuestro equipo financiero y desarrolle su carrera en un entorno desafiante y multicultural.", ciudad: "Surco", dias: "7d",calificacion:5)
        
    ]
}
