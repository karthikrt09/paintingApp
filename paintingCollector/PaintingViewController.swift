//
//  PaintingViewController.swift
//  paintingCollector
//
//  Created by Karthik Thirunavukkarasan on 5/12/17.
//  Copyright © 2017 Karthik Thiru. All rights reserved.
//

import UIKit

class PaintingViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var paintingImageView: UIImageView!
    @IBOutlet weak var titleTextField: UITextField!
    
    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imagePicker.delegate = self
    }

    @IBAction func photoTapped(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        <#code#>
    }
    
    @IBAction func cameraTapped(_ sender: Any) {
        
    }

    @IBAction func addTapped(_ sender: Any) {
    }
}
