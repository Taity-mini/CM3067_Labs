//
//  UKViewController.swift
//  Lab5
//
//  Created by Andrew Tait on 28/10/2016.
//  Copyright © 2016 Andrew Tait. All rights reserved.
//

import UIKit

class UKViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let url = NSURL (string: "https://en.wikipedia.org/wiki/United_Kingdom")
        let requestObj = NSURLRequest(URL: url!);
        webView.loadRequest(requestObj)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
