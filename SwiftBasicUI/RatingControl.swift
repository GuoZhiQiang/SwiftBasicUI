//
//  RatingControl.swift
//  SwiftBasicUI
//
//  Created by guo on 16/4/12.
//  Copyright © 2016年 guo. All rights reserved.
//

import UIKit

class RatingControl: UIView {
    
    // MARK: Initialization
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        let btn_first = UIButton(frame: CGRect(x: 0, y: 0, width: 44, height: 44));
        btn_first.backgroundColor = UIColor.redColor()
        addSubview(btn_first)
    }

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
