//
//  FrameworkTitleView.swift
//  Apple-Frameworksd
//
//  Created by Dhanunjay Kumar on 19/01/24.
//

import SwiftUI

struct FrameworkTitleView: View {
    
    var framework: Framework
    
    var body: some View {
        HStack {
            Image(framework.imageName)
                .renderingMode(.original)
                .resizable()
                .frame(width: 60, height: 60)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .padding()
        }
        .padding()
    }
}

#Preview {
    FrameworkTitleView(framework: MockData.frameworks.first!)
}
