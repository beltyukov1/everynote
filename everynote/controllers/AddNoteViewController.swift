//
//  AddNoteViewController.swift
//  EveryNote
//
//  Created by Alex Beltyukov on 12/2/14.
//  Copyright (c) 2014 Alex Beltyukov. All rights reserved.
//

import UIKit

class AddNoteViewController: UITableViewController {

    @IBOutlet weak var titleField: UITextField!
    var delegate: AddNoteDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func save(sender: AnyObject) {
        delegate?.savedNote(titleField.text)
    }
}

protocol AddNoteDelegate {
    func savedNote(title: String)
}
