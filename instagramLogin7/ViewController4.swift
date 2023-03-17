//
//  ViewController4.swift
//  instagramLogin7
//
//  Created by R&W on 04/02/23.
//

import UIKit

class ViewController4: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate  {

    @IBOutlet weak var image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func addImageButtonAction(_ sender: UIButton) {
        showAlertView()
    }
    func showAlertView(){
        let alert = UIAlertController(title: "your choice", message: "", preferredStyle:.actionSheet)
        alert.addAction(UIAlertAction.init(title: "gallery", style: .default, handler: {i in self.openGallery()}))
        alert.addAction(UIAlertAction.init(title: "camera", style: .default, handler: nil))
        alert.addAction(UIAlertAction.init(title: "cancel", style: .destructive, handler: nil))
        present(alert,animated: true,completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        image.image=info[.editedImage] as! UIImage
        dismiss(animated: true, completion: nil)
    }
    
    
    func openGallery(){
        let gallery = UIImagePickerController()
        gallery.delegate = self
        gallery.allowsEditing = true
        gallery.sourceType =  .photoLibrary
        present(gallery,animated: true,completion: nil)
    }

}
