//
//  HESeletecedButton.swift
//  HEPhotoPicker
//
//  Created by heyode on 2018/11/21.
//  Copyright (c) 2018 heyode <1025335931@qq.com>
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

import UIKit

class HESeletecedButton: UIButton {

    var gl: CAGradientLayer?
    //MARK:- 重写init函数
    override init(frame: CGRect) {
        super.init(frame: frame)
        layer.cornerRadius = 4
        layer.masksToBounds = true
        setBackgroundImage(UIColor.hex(hexString: "E98F36").image(), for:.normal)
        setBackgroundImage(UIColor.hex(hexString: "EEEEEE").image(), for: .disabled)
        setTitleColor(UIColor.hex(hexString: "FFFFFF"), for: .normal)
        setTitleColor(UIColor.hex(hexString: "666666"), for: .disabled)
        
        contentEdgeInsets = UIEdgeInsets.init(top: 5, left: 10, bottom: 5, right: 10)
        titleLabel?.font = UIFont.systemFont(ofSize: 14)

    }

  func setGradientLayer() {

    if gl == nil {
      gl = CAGradientLayer()
      gl!.frame = bounds
      gl!.startPoint = CGPoint(x: 0, y: 0.5)
      gl!.endPoint = CGPoint(x: 1, y: 0.5)
      gl!.colors = [
        UIColor(red: 252 / 255.0, green: 128 / 255.0, blue: 131 / 255.0, alpha: 1.0).cgColor,
        UIColor(red: 251 / 255.0, green: 82 / 255.0, blue: 136 / 255.0, alpha: 1.0).cgColor
      ]
      gl!.locations = [NSNumber(value: 0), NSNumber(value: 1.0)]

      layer.insertSublayer(gl!, at: 0)
    } else {
      gl?.frame = bounds
    }

  }
    
    func setTitle(_ title:String)  {
        setTitle(title, for: .normal)
        sizeToFit()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   
    

}
