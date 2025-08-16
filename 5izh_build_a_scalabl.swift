import Foundation

// Data Model for Mobile App Simulator

struct MobileApp {
    let id: UUID
    let name: String
    var devices: [Device]
    var features: [Feature]
    var users: [User]
}

struct Device {
    let id: UUID
    let name: String
    let os: String
    let screenResolution: (width: Int, height: Int)
}

struct Feature {
    let id: UUID
    let name: String
    let description: String
    let isEnabled: Bool
}

struct User {
    let id: UUID
    let name: String
    let email: String
    var device: Device?
    var features: [Feature]
}

// Example Data

let iPhone13 = Device(id: UUID(), name: "iPhone 13", os: "iOS 15", screenResolution: (width: 1080, height: 2536))
let samsungS22 = Device(id: UUID(), name: "Samsung S22", os: "Android 11", screenResolution: (width: 1440, height: 3200))

let loginFeature = Feature(id: UUID(), name: "Login", description: "Allows users to log in to the app", isEnabled: true)
let pushNotificationFeature = Feature(id: UUID(), name: "Push Notifications", description: "Sends notifications to users", isEnabled: false)

let user1 = User(id: UUID(), name: "John Doe", email: "johndoe@example.com", device: iPhone13, features: [loginFeature])
let user2 = User(id: UUID(), name: "Jane Doe", email: "janedoe@example.com", device: samsungS22, features: [loginFeature, pushNotificationFeature])

let mobileApp = MobileApp(id: UUID(), name: "MyApp", devices: [iPhone13, samsungS22], features: [loginFeature, pushNotificationFeature], users: [user1, user2])