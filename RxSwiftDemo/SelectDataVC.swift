//
//  SelectDataVC.swift
//  RxSwiftDemo
//
//  Created by Dhruv  on 5/19/18.
//  Copyright © 2018 Dhruv . All rights reserved.
//

import UIKit
import RxSwift

class SelectDataVC: UIViewController {
    
   private let selectedVariable = Variable("")
    var selectedObserver:Observable<String>{
        return selectedVariable.asObservable()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnActionSelect(_ sender: Any) {
        guard let selectedName = (sender as? UIButton)?.titleLabel?.text else {return}
        selectedVariable.value = selectedName
        self.navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
