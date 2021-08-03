//
//  ViewController.swift
//  camera&displayPhoto
//
//  Created by Anushka Rane on 8/3/21.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    var imagePicker = UIImagePickerController()
 
    @IBAction func takeSelfieTapped(_ sender: UIButton) {
        imagePicker.sourceType = .camera
        present(imagePicker, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
    }
    
    @IBAction func chooseImage(_ sender: UIButton) {
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        
        let actionSheet = UIAlertController(title: "Photo Source", message: "Choose a Source", preferredStyle: .actionSheet)
        
        actionSheet.addAction(UIAlertAction(title: "Camera", style: .default, handler: { (action:UIAlertAction) in self.present(imagePickerController, animated:true, completion:nil)
        }))
        
        actionSheet.addAction(UIAlertAction(title: "Photo Library", style: .default, handler: { (action:UIAlertAction) in self.present(imagePickerController, animated:true, completion:nil)
        }))
        
        actionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (action:UIAlertAction) in self.present(imagePickerController, animated:true, completion:nil)
        }))
        
        self.present(actionSheet, animated: true, completion: nil)
    }
    
}
