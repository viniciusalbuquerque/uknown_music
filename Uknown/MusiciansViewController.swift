//
//  MusiciansViewController.swift
//  Uknown
//
//  Created by Vinicius Araujo de Albuquerque on 8/18/16.
//  Copyright © 2016 uknown. All rights reserved.
//

import UIKit

class MusiciansViewController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableViewMusicians: UITableView!
    
    var musicians:[Musician]? = [Musician(name: "Musico 1"), Musician(name: "Musico 2"), Musician(name: "Musico 3")];
    
    var selectedMusician:Musician?;
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.tableViewMusicians.delegate = self;
        self.tableViewMusicians.dataSource = self;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if musicians != nil {
            return (musicians?.count)!;
        }
        return 0;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if musicians != nil {
            let cell = tableViewMusicians.dequeueReusableCellWithIdentifier(MusiciansCell.identifier) as! MusiciansCell;
            let musician = musicians![indexPath.row];
            
            cell.labelMusicianName.text = musician.name;
            
            return cell;
        }
        
        return UITableViewCell();
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        selectedMusician = musicians![indexPath.row];
        performSegueWithIdentifier(MusicianDetailController.segueIdentifier, sender: nil);
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == MusicianDetailController.segueIdentifier {
            let musicianDetailController = segue.destinationViewController as! MusicianDetailController;
            musicianDetailController.musician = selectedMusician;
        }
    }
    
}
