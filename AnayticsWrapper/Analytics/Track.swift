//
//  Track.swift
//  AnayticsWrapper
//
//  Created by RenhardJH on 25/06/24.
//

import Foundation

public typealias Properties = [String : Any]

public enum Track {
    public enum Event: String {
        case clickProduct = "Click Product"
        case visitedProduct = "Visited Product"
    }

    public enum Page: String {
        case homeSuperapps = "Home SuperApps"
        case portfolioSuperapps = "Portfolio SuperApps" 
    }

    public enum Properties: String {
        case pageName = "Page Name"
    }
}
