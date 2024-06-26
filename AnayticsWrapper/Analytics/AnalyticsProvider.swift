//
//  AnalyticsProvider.swift
//  AnayticsWrapper
//
//  Created by RenhardJH on 25/06/24.
//

import Foundation

protocol AnalyticsProvider {
    func track(event: Track.Event, properties: Properties?)
    func visitPage(page: Track.Page, params: Properties?)
}
