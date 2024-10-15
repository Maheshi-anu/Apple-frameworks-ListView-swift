//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Maheshi Anuradha on 2024-10-15.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var ViewModel = FrameworkGridViewModel()

    var body: some View {
        NavigationView {
            List{
                ForEach(MockData.frameworks){ framework in
                    NavigationLink(destination:
                                    FrameWorkDetailView(framework: framework, isShowingDetailView: $ViewModel.isShowingDetailView)){
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            
            .navigationTitle("🍎 Frameworks")
        }
        .accentColor(Color(.label))
    }
}

struct FrameworkView_Previews : PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}

#Preview {
    FrameworkGridView()
}


