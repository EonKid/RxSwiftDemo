//
//  ViewController.swift
//  RxSwiftDemo
//
//  Created by Dhruv  on 5/19/18.
//  Copyright © 2018 Dhruv . All rights reserved.
//

import UIKit
import RxSwift

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "RxSwift Demo"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnActionSelectData(_ sender: Any) {
       
        let selectedItemVC = self.storyboard?.instantiateViewController(withIdentifier: "SelectDataVC") as! SelectDataVC
        selectedItemVC.selectedObserver
        .subscribe(onNext: { [weak self] selectedName in
            if selectedName.count > 0 {
                self?.displayLabel.text = selectedName
            }
        }).disposed(by: disposeBag)
        self.navigationController?.pushViewController(selectedItemVC, animated: true)
        
    }
    
}

