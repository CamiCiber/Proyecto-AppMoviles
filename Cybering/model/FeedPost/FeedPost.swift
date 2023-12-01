import Foundation
struct FeedPost: Identifiable, Codable, Hashable {
    let id: String
    let companyName: String
    let employeeName: String
    let position: String
    let location: String
    let description: String
    let timeAgo: String
}

extension FeedPost {
    static var MOCK_FEED_POST: [FeedPost] = [
        .init(id: NSUUID().uuidString, companyName: "Wayne Enterprises", employeeName: "Bruce Wayne", position: "Vigilante Crime Fighter", location: "Gotham City", description: "Looking for a skilled crime fighter to protect Gotham City. Must have experience in martial arts and detective work.", timeAgo: "2d ago"),
        .init(id: NSUUID().uuidString, companyName: "Stark Industries", employeeName: "Tony Stark", position: "Superhero Consultant", location: "New York City", description: "Seeking a consultant to assist with superhero-related technology. Must be familiar with powered armor and advanced gadgets.", timeAgo: "1d ago"),
        .init(id: NSUUID().uuidString, companyName: "Daily Bugle", employeeName: "Peter Parker", position: "Photographer", location: "New York City", description: "Hiring a skilled photographer to capture amazing shots of superheroes in action. Must be fearless and have quick reflexes.", timeAgo: "3d ago"),
        .init(id: NSUUID().uuidString, companyName: "Wakanda Tech", employeeName: "Shuri", position: "Vibranium Engineer", location: "Wakanda", description: "Join our team in Wakanda to work on cutting-edge vibranium technology. Experience with advanced materials and energy sources required.", timeAgo: "5d ago"),
        .init(id: NSUUID().uuidString, companyName: "Asgardian Kingdom", employeeName: "Thor", position: "God of Thunder", location: "Asgard", description: "We are recruiting for the position of God of Thunder. Must be able to wield Mjolnir and have experience in protecting realms from cosmic threats.", timeAgo: "1w ago")
    ]
}
