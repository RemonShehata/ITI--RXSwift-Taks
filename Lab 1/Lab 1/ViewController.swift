//
//  ViewController.swift
//  Lab 1
//
//  Created by Remon Gerges Shehata on 4/5/20.
//  Copyright © 2020 Remon Gerges Shehata. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var segment: UISegmentedControl!
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var labelSegment: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        segment.rx.selectedSegmentIndex.subscribe( {[weak self] (index) in
            guard let self = self else {return}
            self.labelSegment.text = self.segment.titleForSegment(at: self.segment.selectedSegmentIndex)
        })
        
        slider.rx.value.subscribe({[weak self] (index) in
            guard let self = self else {return}
            self.sliderLabel.text = "\(self.slider.value)"
        })
    }

    

    @IBAction func segmentChanged(_ sender: Any) {
    }
    @IBAction func sliderChanged(_ sender: Any) {
    }
}

