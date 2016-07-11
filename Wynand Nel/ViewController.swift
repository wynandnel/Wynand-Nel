//
//  ViewController.swift
//  Wynand Nel
//
//  Created by Wynand Nel on 2016/05/14.
//  Copyright © 2016 Wynand Nel. All rights reserved.
//

import UIKit
import Foundation

struct printDesign {
    var name : String
    var description : String
    var image : UIImage
}

class ViewController: UIViewController, UITableViewDataSource {
    
    let portfolioData = [
        ("Print Design","print"),
        ("Logo Design","logo"),
        ("Photography","photo"),
        ("3D Design & Render","3drender"),
        ("Web Design","web"),
        ("Mobile Design","mobile")
    ]
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return portfolioData.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        let (portfolioTitle, portfolioImage) = portfolioData[indexPath.row]
        
        
        cell.textLabel!.text = portfolioTitle

        let myImage = UIImage(named: portfolioImage)
        cell.imageView?.image = myImage
        
        return cell
    }

    @IBOutlet weak var Time: UILabel!
    
    @IBOutlet weak var Date: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    
    
        NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: #selector(ViewController.updateTime), userInfo: nil, repeats: true)
        
    Date.text = NSDateFormatter.localizedStringFromDate(NSDate(), dateStyle: NSDateFormatterStyle.MediumStyle , timeStyle: NSDateFormatterStyle.NoStyle)
    
    
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


     
    
    

func updateTime(){
    
    Time.text = NSDateFormatter.localizedStringFromDate(NSDate(), dateStyle: NSDateFormatterStyle.NoStyle, timeStyle: NSDateFormatterStyle.MediumStyle)
}

    
    
    


}
