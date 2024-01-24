//
//  FrameworkGridView.swift
//  Apple-Frameworksd
//
//  Created by Dhanunjay Kumar on 19/01/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(destination: FrameworkDetailView(framework: framework, isShowingDetailView: $viewModel.isShowingDetailsView)) {
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            .listRowSpacing(10)
            .navigationTitle("🍎 Frameworks")
        }
        .accentColor(Color(.label))
    }
}

#Preview {
    FrameworkGridView()
}
