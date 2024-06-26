//
//  GoogleAnalyticsProvider.swift
//  AnayticsWrapper
//
//  Created by RenhardJH on 25/06/24.
//

import Foundation

class GoogleAnalyticsProvider: AnalyticsProvider {
    static let shared = GoogleAnalyticsProvider()

    func track(event: Track.Event, properties: Properties?) {
        //GoogleAnalytics.sharedInstance()?.recordEvent(event.rawValue, withProps: properties)
    }

    func visitPage(page: Track.Page, params: Properties?) {
        var map = params ?? Properties()
        map[Track.Properties.pageName.rawValue] = page.rawValue
        if let parameters = params {
            map = map.merging(parameters) { current, _ in current }
        }
        //GoogleAnalytics.sharedInstance()?.recordEvent(.visitedPage, withProps: map)
    }
}
