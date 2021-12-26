//
//  ContentView.swift
//  Alert
//
//  Created by Vahtee Boo on 26.12.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingAlert = false
    
    var body: some View {
        Button("Show Alert") {
            showingAlert = true
        }
        .alert("Alarm for everybody", isPresented: $showingAlert) {
            Button("4LW Off", role: .destructive) { }
            Button("Soriyan", role: .cancel) { }
            Button("Soho", role: .none) { }
        } message: {
            Text("Please be patient")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
