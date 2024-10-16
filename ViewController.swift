//
//  ViewController.swift
//  AppEventCount
//
//  Created by Peter Sivak on 10/14/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var didFinishLaunchingLabel: UILabel!
    @IBOutlet weak var configurationForConnectingLabel: UILabel!
    @IBOutlet weak var willConnectLabel: UILabel!
    @IBOutlet weak var didBecomeActiveLabel: UILabel!
    @IBOutlet weak var willResignActiveLabel: UILabel!
    @IBOutlet weak var willEnterForegroundLabel: UILabel!
    @IBOutlet weak var didEnterBackgroundLabel: UILabel!

    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)

    var willConnectCount = 0
    var didBecomeActiveCount = 0
    var willResignActiveCount = 0
    var willEnterForegroundCount = 0
    var didEnterBackgroundCount = 0

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        updateView()
    }

    func updateView() {
        didFinishLaunchingLabel?.text = "Launch Count: \(appDelegate.launchCount)"
        configurationForConnectingLabel?.text = "Config Count: \(appDelegate.configurationForConnectingCount)"
        willConnectLabel?.text = "Will Connect Count: \(willConnectCount)"
        didBecomeActiveLabel?.text = "Did Become Active Count: \(didBecomeActiveCount)"
        willResignActiveLabel?.text = "Will Resign Active Count: \(willResignActiveCount)"
        willEnterForegroundLabel?.text = "Will Enter Foreground Count: \(willEnterForegroundCount)"
        didEnterBackgroundLabel?.text = "Did Enter Background Count: \(didEnterBackgroundCount)"
    }
}


