//
//  CIHighlight.swift
//  Harbeth
//
//  Created by 77。 on 2022/7/13.
//

import Foundation
import CoreImage

/// 高光
public struct CIHighlight: C7FilterProtocol {
    
    public static let range: ParameterRange<Float, CIHighlight> = .init(min: 0, max: 1)
    
    public var value: Float = 0
    
    public var modifier: Modifier {
        return .coreimage(CIFilterName: "CIHighlightShadowAdjust")
    }
    
    public func coreImageApply(filter: CIFilter?, input ciImage: CIImage) -> CIImage {
        filter?.setValue(1 - value, forKey: "inputHighlightAmount")
        return ciImage
    }
    
    public init() { }
}