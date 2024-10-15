//
//  FrameWorkDetailView.swift
//  Apple-Frameworks
//
//  Created by Maheshi Anuradha on 2024-10-15.
//

import SwiftUI

struct FrameWorkDetailView: View {
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView: Bool = false
    
    var body: some View {
        VStack{
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                AFButtonView(title: "Learn more")
            }
            
        }
        .sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string:framework.urlString) ?? URL(string:"https://www.apple.com/")!)
        })
    }
}

struct FrameWorkDetailView_Previews : PreviewProvider {
    static var previews: some View {
        FrameWorkDetailView(framework:MockData.sampleFrameWork, isShowingDetailView: .constant(false))
    }
}


