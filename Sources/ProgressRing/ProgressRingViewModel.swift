//
//  ProgressRingViewModel.swift
//  
//
//  Created by Yoshihisa Masaki on 2019/11/14.
//

import SwiftUI

extension ProgressRing {
    
    final class ViewModel: ObservableObject {
        @Published var progress: Double = .zero
        @Published var color: Color = .blue
        @Published var ringWidth: CGFloat = 10.0
    }
}
