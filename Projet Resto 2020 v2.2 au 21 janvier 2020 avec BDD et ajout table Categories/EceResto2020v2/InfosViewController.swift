//
//  InfosViewController.swift
//  EceResto2020v2
//
//  Created by Gian on 27/01/2020.
//  Copyright © 2020 Gian. All rights reserved.
//

import UIKit

class InfosViewController: UIViewController {
    
    @IBOutlet var viewContainer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let rotation = -CGFloat.pi/30.0
        let transform = viewContainer.transform
        let rotated = transform.rotated(by: rotation)
        self.viewContainer.transform = rotated
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
