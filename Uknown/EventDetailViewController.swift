//
//  EventDetailViewController.swift
//  Uknown
//
//  Created by Vinicius Araujo de Albuquerque on 8/19/16.
//  Copyright © 2016 uknown. All rights reserved.
//

import UIKit

class EventDetailViewController : UIViewController {
    
    static let segueIdentifier = "eventDetailSegue";
    
    @IBOutlet var imageViewEvent: UIImageView!
    
    @IBOutlet var labelEventName: UILabel!
    
    @IBOutlet var collectionViewMedia: UICollectionView!
    
    var event:Event!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.labelEventName.text = event.name;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}