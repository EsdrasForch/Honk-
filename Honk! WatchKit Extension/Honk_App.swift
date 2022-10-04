//
//  Honk_App.swift
//  Honk! WatchKit Extension
//
//  Created by Esdras Forch on 10/3/22.
//

import SwiftUI

@main
struct Honk_App: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
