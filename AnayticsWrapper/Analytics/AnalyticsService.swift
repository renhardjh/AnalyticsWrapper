//
//  AnalyticsService.swift
//  AnayticsWrapper
//
//  Created by RenhardJH on 25/06/24.
//

import Foundation

public enum AnalyticsProviderType {
    case cleverTap
    case googleAnalytics
}

class AnalyticsService {
    private var analyticProviders = [AnalyticsProvider]()

    init(providers: [AnalyticsProviderType] = [.cleverTap, .googleAnalytics]) {
        providers.forEach { provider in
            switch provider {
            case .cleverTap:
                analyticProviders.append(CleverTapAnalyticsProvider.shared)
            case .googleAnalytics:
                analyticProviders.append(GoogleAnalyticsProvider.shared)
            }
        }
    }

    func track(event: Track.Event, properties: Properties?) {
        analyticProviders.forEach {
            $0.track(event: event, properties: properties)
        }
    }

    func visitPage(page: Track.Page, params: Properties?) {
        analyticProviders.forEach {
            $0.visitPage(page: page, params: params)
        }
    }
}
