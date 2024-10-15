//
//  XDismissButtonView.swift
//  Apple-Frameworks
//
//  Created by Maheshi Anuradha on 2024-10-15.
//

import SwiftUI

struct XDismissButtonView: View {
    
    @Binding var isShowingDetailView : Bool
    
    var body: some View {
        HStack{
            Spacer()
            Button{
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }
        .padding()
    }
}

#Preview {
    XDismissButtonView(isShowingDetailView: .constant(false))
}
