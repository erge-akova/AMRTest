//
//  ViewController.swift
//  AMRTest
//
//  Created by Erge AKOVA on 18.10.2023.
//

import UIKit
import AMRSDK


class ViewController: UIViewController, AMRBannerDelegate {

    @IBOutlet var native250: UIView!
    var native: AMRBanner!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        native = AMRBanner.init(forZoneId:"ccdea0b0-3629-49b2-a205-c72627d8229a")
        native.delegate = self
//        native.customNativeSize = CGSize(width: 300.0, height: 250.0)
//        native.customeNativeXibName = "AMRNativeAdBaseViewAlt250"
        native.load()   
        
    }
    
    @IBAction func load(_ sender: Any) {
        native.load()
    }
    
    // MARK: Banner
    func didReceive(_ banner: AMRBanner!) {
        print("<AMRTest> [Native] didReceive")
            self.native250.addSubview(banner.bannerView)
    }
    
    func didFail(toReceive banner: AMRBanner!, error: AMRError!) {
        print("<AMRTest> [Native] didFail \(String(describing: error.errorDescription))")
    }
}
