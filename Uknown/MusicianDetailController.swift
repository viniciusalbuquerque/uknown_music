//
//  MusicianDetailController.swift
//  Uknown
//
//  Created by Vinicius Araujo de Albuquerque on 8/18/16.
//  Copyright © 2016 uknown. All rights reserved.
//

import UIKit


class MusicianDetailController : UIViewController {
    
    static let segueIdentifier = "segueMusicianDetail";
    @IBOutlet var imageViewEvent: UIImageView!
    
    @IBOutlet var labelMusicianName: UILabel!
    
    @IBOutlet var collectionViewMedia: UICollectionView!
    var musician:Musician!;
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.labelMusicianName.text = musician.name;
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }
    
}
