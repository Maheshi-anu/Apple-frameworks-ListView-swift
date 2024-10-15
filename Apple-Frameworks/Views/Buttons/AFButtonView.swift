//
//  AFButtonView.swift
//  Apple-Frameworks
//
//  Created by Maheshi Anuradha on 2024-10-15.
//

import SwiftUI

struct AFButtonView: View {
    var title: String
    
    var body: some View {
        Text(title)
            .font(.title)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

struct AFButtonView_Previews : PreviewProvider {
    static var previews: some View {
        AFButtonView(title: "Learn more")
    }
}


