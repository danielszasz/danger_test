//
//  ContentView.swift
//  TheTest
//
//  Created by BTMac on 09.11.2022.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        NavigationView {
            VStack {
                NavigationLink("TEST", destination: Content())
            }
            .padding()
        }
    }
}

struct Content: View {
    @StateObject var viewModel: ViewModle = ViewModle()

    var body: some View {
        NavigationView {
            VStack {
                NavigationLink("TESdT", destination: TestView(action: viewModel.getAction()))
            }
            .padding()
        }

    }
}

struct TestView: View {
    var action: Action

    var body: some View {
        Button(action: action.action) {
            Text("DFDS")
        }
    }
}
