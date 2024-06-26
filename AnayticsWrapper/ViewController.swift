//
//  ViewController.swift
//  AnayticsWrapper
//
//  Created by RenhardJH on 25/06/24.
//

import UIKit

class ViewController: UIViewController {
    let viewModel = ViewModel(
        analyticsService: AnalyticsService(
            providers: [
                .cleverTap,
                .googleAnalytics
            ]
        )
    )

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

