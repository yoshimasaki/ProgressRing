//
//  ProgressRingViewModel.swift
//  
//
//  Created by Yoshihisa Masaki on 2019/11/14.
//

import SwiftUI

@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension ProgressRing {
    
    public final class ViewModel: ObservableObject {
        @Published public var progress: Double = .zero
        @Published public var color: Color = .blue
        @Published public var ringWidth: CGFloat = 10.0
    }
}
