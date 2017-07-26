//
//  ViewController.swift
//  ADG Internal
//
//  Created by Akshat Agarwal on 06/07/17.
//  Copyright © 2017 Akshat Agarwal. All rights reserved.
//

import UIKit
import Charts
import Foundation

class ViewController: UIViewController {

    @IBOutlet weak var statusColor: UIView!
    @IBOutlet weak var profileImage: UIImageView!
    let totalMeetings:Double = 4
    let attandedMeetings:Double = 3
    
    @IBOutlet weak var attandanceView: PieChartView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let a = [Double(attandedMeetings/totalMeetings*100),Double(100-(attandedMeetings/totalMeetings*100))]
        let yse1 = a.enumerated().map { x, y in return PieChartDataEntry(value: y, label: String(x)) }
        let data = PieChartData()
        let ds1 = PieChartDataSet(values: yse1, label: "")
        ds1.colors = [UIColor.init(red: 150/255, green: 204/255, blue: 255/255, alpha: 1.0), UIColor.init(red: 210/255, green: 210/255, blue: 210/255, alpha: 1.0)]
        data.addDataSet(ds1)
        let paragraphStyle: NSMutableParagraphStyle = NSParagraphStyle.default.mutableCopy() as! NSMutableParagraphStyle
        paragraphStyle.lineBreakMode = .byTruncatingTail
        paragraphStyle.alignment = .center
        let attandance:String = String(Double(attandedMeetings/totalMeetings*100)) + "%\n" + String(self.attandedMeetings) + "/" + String(self.totalMeetings)
        let centerText: NSMutableAttributedString = NSMutableAttributedString(string: attandance)
        self.attandanceView.centerAttributedText = centerText
        self.attandanceView.data = data
    }
    override func viewDidAppear(_ animated: Bool) {
        profileImage.layer.cornerRadius = profileImage.frame.height/2
        statusColor.layer.cornerRadius = statusColor.frame.height/2
        self.attandanceView.animate(xAxisDuration: 0.0, yAxisDuration: 1.0)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

