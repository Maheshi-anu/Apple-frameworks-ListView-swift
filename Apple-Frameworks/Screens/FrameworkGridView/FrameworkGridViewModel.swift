//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Maheshi Anuradha on 2024-10-15.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework?{
        didSet{ isShowingDetailView = true }
    }
    @Published var isShowingDetailView: Bool = false
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible()),
    ]
}
