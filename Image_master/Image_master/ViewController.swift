//
//  ViewController.swift
//  Image_master
//
//  Created by Yifan Xu on 10/6/16.
//  Copyright © 2016 Yifan Xu. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


    @IBAction func selectPict(sender: AnyObject)
    {
        let dialog = NSOpenPanel();
        dialog.title                   = "Choose source directory";
        dialog.showsResizeIndicator    = true;
        dialog.showsHiddenFiles        = false;
        dialog.canChooseDirectories    = true;
        dialog.canCreateDirectories    = false;
        dialog.allowsMultipleSelection = false;
        if (dialog.runModal() == NSModalResponseOK) {
            let result = dialog.URL // Pathname of the file
            
            if (result != nil) {
                let path = result!.path!
            }
        } else {
            // User clicked on "Cancel"
            return
        }
        

    }
}

