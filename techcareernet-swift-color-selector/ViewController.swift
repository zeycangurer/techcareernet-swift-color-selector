//
//  ViewController.swift
//  techcareernet-swift-color-selector
//
//  Created by Zeycan GÜRER on 12.05.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sldRed: UISlider!
    @IBOutlet weak var sldBlue: UISlider!
    @IBOutlet weak var sldGreen: UISlider!
    @IBOutlet weak var vwColor: UIView!
    @IBOutlet weak var lblRGB: UILabel!
    @IBOutlet weak var lblHEX: UILabel!
    
    var k:Float = 0.0
    var y:Float = 0.0
    var m:Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sldRed.maximumValue = 1
        sldGreen.maximumValue = 1
        sldBlue.maximumValue = 1
    }

    @IBAction func sldRed_Change(_ sender: UISlider) {
        k = sldRed.value
        Paint()
    }
    
    @IBAction func sldBlue_Change(_ sender: UISlider) {
        y = sender.value
        Paint()
    }
    
    @IBAction func sldGreen_Change(_ sender: UISlider) {
        m = sender.value
        Paint()
    }
    
    func Paint()
    {
        vwColor.backgroundColor = UIColor(red: CGFloat(k), green: CGFloat(y), blue: CGFloat(m), alpha: 1.0)
        let r = Int(k * 255)
        let g = Int(y * 255)
        let b = Int(m * 255)
        
        lblRGB.text = String(format: "R: %d G: %d B: %d", r, g, b)
        
        lblHEX.text = String(format: "#%x%x%x", r, g, b)
    }

}

