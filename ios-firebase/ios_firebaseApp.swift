//
//  ios_firebaseApp.swift
//  ios-firebase
//
//  Created by yimkeul on 2023/03/01.
//


import SwiftUI
import Firebase

@main
struct ios_firebaseApp: App {
    @StateObject var dataManager = DataManager()
    
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ListView()
                .environmentObject(dataManager)
        }
    }
}
