//
//  ViewController.swift
//  CustomCamera
//
//  Created by iFlame on 5/3/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UIImagePickerControllerDelegate,UINavigationControllerDelegate{
    
    // Outlet Declare Here
    
    @IBOutlet var myImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func chooseImagePressed(_ sender: UIButton){
        
        print("pressed")
        
        
        let alert = UIAlertController(title: "i am use your camera", message: "i need", preferredStyle:.alert)
        alert.addAction(UIAlertAction(title: "Camera", style: .default, handler: { (action:UIAlertAction) in
            let imagePickerController = UIImagePickerController()
            imagePickerController.delegate = self
            imagePickerController.sourceType = .camera
            self.present(imagePickerController, animated: true, completion: nil)
        }))
        
        alert.addAction(UIAlertAction(title: "Photo Libarary ", style: .default, handler: { (action:UIAlertAction) in
            let imagePickerController = UIImagePickerController()
            imagePickerController.sourceType = .photoLibrary
            self.present(imagePickerController, animated: true, completion: nil)
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler:nil))        
        self.present(alert, animated: true, completion: nil)
        
    }
    //MARK:- ImagePicker Delegate Methods
    
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController){
        picker.dismiss(animated: true, completion: nil)
    }
func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
    let image = info[UIImagePickerControllerOriginalImage] as! UIImage
    
     myImageView.image = image
    
    picker.dismiss(animated: true, completion: nil)

  }
}
   
