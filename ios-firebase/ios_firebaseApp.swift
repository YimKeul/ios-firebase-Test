//
//  ios_firebaseApp.swift
//  ios-firebase
//
//  Created by yimkeul on 2023/03/01.
//


import SwiftUI
import Firebase
//import FirebaseCore
//import FirebaseFirestore
//import FirebaseStorage
//
//class AppDelegate: NSObject, UIApplicationDelegate {
//  func application(_ application: UIApplication,
//                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//    FirebaseApp.configure()
//
//    return true
//  }
//
//}
//
//let storage = Storage.storage()

@main
struct ios_firebaseApp: App {
    // register app delegate for Firebase setup
    //  @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
