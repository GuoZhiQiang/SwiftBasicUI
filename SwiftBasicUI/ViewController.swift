//
//  ViewController.swift
//  SwiftBasicUI
//
//  Created by guo on 16/4/7.
//  Copyright © 2016年 guo. All rights reserved.
//

import UIKit

//https://developer.apple.com/library/ios/referencelibrary/GettingStarted/DevelopiOSAppsSwift/Lesson3.html#//apple_ref/doc/uid/TP40015214-CH22-SW1

class ViewController: UIViewController,UITextFieldDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    
    // MARK: Properties
    
    @IBOutlet weak var lb_mealName:   UILabel!
    @IBOutlet weak var txtField_name: UITextField!
    @IBOutlet weak var img_photo:     UIImageView!
    @IBOutlet weak var ratingControl: RatingControl!
    
    @IBOutlet var btn_setName: UIButton!

    // MARK: Sys
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtField_name.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: UITextFieldDelegate
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        return true
    }
    // is called after the text field resigns its first-responder status
    func textFieldDidEndEditing(textField: UITextField) {
        
        lb_mealName.text = textField.text
    }
    
    // MARK: UIImagePickerControllerDelegate
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        
        let selectedImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        img_photo.image = selectedImage
        dismissViewControllerAnimated(true, completion: nil)
    }
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        dismissViewControllerAnimated(true, completion: nil)
    }

    // MARK: Actions
    
    @IBAction func btnClick(sender: UIButton) {
        txtField_name.text = "Default name"
        
    }
    @IBAction func selectImageFromPhotoLibrary(sender: UITapGestureRecognizer) {
        
        txtField_name.resignFirstResponder()
        let imagePickerController = UIImagePickerController()
        imagePickerController.sourceType = .PhotoLibrary
        imagePickerController.delegate = self
        presentViewController(imagePickerController, animated: true, completion: nil)
        
    }

}

