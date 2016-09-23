//
//  ViewController.swift
//  imageScroll
//
//  Created by Umoru Joseph on 9/23/16.
//  Copyright © 2016 Umoru Joseph. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var mainScrollView: UIScrollView!
    
    var imageArray = [UIImage]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mainScrollView.frame = view.frame
        
        imageArray = [#imageLiteral(resourceName: "images-of-landscapes-17"), #imageLiteral(resourceName: "images-of-landscapes-19"), #imageLiteral(resourceName: "photographing-landscapes-3e")]
        
        for i in 0..<imageArray.count{
            let imageView = UIImageView()
            imageView.image = imageArray[i]
            imageView.contentMode = .scaleAspectFit
            let xPosition = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPosition, y: 0, width: self.mainScrollView.frame.width, height: self.mainScrollView.frame.width)
            
            mainScrollView.contentSize.width = mainScrollView.frame.width * CGFloat(i + 1)
            mainScrollView.addSubview(imageView)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

