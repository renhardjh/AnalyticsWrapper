//
//  ViewModel.swift
//  AnayticsWrapper
//
//  Created by RenhardJH on 25/06/24.
//

import Foundation

class ViewModel {
    private let analyticsService: AnalyticsService

    init(analyticsService: AnalyticsService) {
        self.analyticsService = analyticsService
    }

    private func getData() {
        let properties = Properties()
        analyticsService.track(event: .visitedProduct, properties: properties)
    }
}
