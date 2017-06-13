//
//  ViewController.swift
//  Fizz Buzz
//
//  Created by Ziyun Ma on 6/7/17.
//  Copyright © 2017 Ziyun Ma. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var myNumberLabel: UILabel!
    var number = 0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        myNumberLabel.text = "\(number)"
    }

    @IBAction func screenTapped(_ sender: UITapGestureRecognizer)
    {
        print("Screen tapped")
        number += 1
        if number % 15 == 0
        {
            print("FIZZ BUZZ")
            view.backgroundColor = UIColor.yellow
            myNumberLabel.text = "FIZZ"
            myNumberLabel.font = myNumberLabel.font.withSize(75)
            
        }
        else if number % 3 == 0
        {
            print("FIZZ")
            view.backgroundColor = UIColor.blue
            myNumberLabel.text = "BUZZ"
            myNumberLabel.font = myNumberLabel.font.withSize(75)
        }
        else if number % 5 == 0
        {
            print("BUZZ")
            view.backgroundColor = UIColor.red
            myNumberLabel.text = "FIZZ BUZZ"
            myNumberLabel.font = myNumberLabel.font.withSize(75)
        }
        else
        {
            myNumberLabel.text = "\(number)"
            view.backgroundColor = UIColor.black
            myNumberLabel.font = myNumberLabel.font.withSize(160)
        }
    }
    @IBAction func longPress(_ sender: UILongPressGestureRecognizer)
    {
        print("Reset")
        number = 0
        myNumberLabel.text = "\(number)"
        view.backgroundColor = UIColor.black
        myNumberLabel.font = myNumberLabel.font.withSize(160)
    }

   





}

