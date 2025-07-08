//
//  ContentView.swift
//  TestURL
//
//  Created by DimaTru on 07.07.2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = PostViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.posts) { post in
                CustomCell(post: post)
            }
            .navigationTitle("Post's")
            .task {
                await viewModel.fetchPosts()
            }
        }
    }
}


#Preview {
    ContentView()
}
