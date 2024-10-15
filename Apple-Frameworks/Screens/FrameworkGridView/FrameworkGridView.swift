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
            ScrollView {
                LazyVGrid(columns: ViewModel.columns) {
                    ForEach(MockData.frameworks){ framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                ViewModel.selectedFramework = framework
                               
                            }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $ViewModel.isShowingDetailView){
                FrameWorkDetailView(framework: ViewModel.selectedFramework!, isShowingDetailView: $ViewModel.isShowingDetailView)
            }
        }
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


