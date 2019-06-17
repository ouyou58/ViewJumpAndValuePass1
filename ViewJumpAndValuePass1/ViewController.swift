//
//  ViewController.swift
//  ViewJumpAndValuePass1
//
//  Created by ouyou on 2019/06/09.
//  Copyright © 2019 ouyou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var str : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "next" {
            let vc = segue.destination as! SecondViewController
            str = label.text
            vc.str = str
        }
    }
}

/*方法一：两个界面都是用StoryBoard做的
 界面的跳转：通过在storyboard连线设置segue的identifier来实现
 传值：通过override prepare重写这个方法来实现
 */
