//
//  collab_blackboardApp.swift
//  collab-blackboard
//
//  Created by Tyler Cadenas on 1/24/24.
//

import SwiftUI

@main
struct Blackboard_MultiApp: App {
    
    @StateObject var data = StickySet()

    
    var body: some Scene {
        WindowGroup() {
            ContentView()
                .environmentObject(data)
            
        }
    }
}

// Correct PreviewProvider structure
struct App_previews: PreviewProvider {
    static var previews: some View {
        let data = StickySet()
        ContentView()
            .environmentObject(data)
    }
}
