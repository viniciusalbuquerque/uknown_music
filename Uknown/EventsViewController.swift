//
//  EventsViewController.swift
//  Uknown
//
//  Created by Vinicius Araujo de Albuquerque on 8/18/16.
//  Copyright © 2016 uknown. All rights reserved.
//

import UIKit


class EventsViewController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableViewEvents: UITableView!
    
    var events:[Event]? = [Event(name: "Event 1"), Event(name: "Event 2"), Event(name: "Event 3")];
    var selectedEvent:Event?;
    
    override func viewDidLoad() {
        super.viewDidLoad();
        self.tableViewEvents.delegate = self;
        self.tableViewEvents.dataSource = self;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if events != nil {
            let cell = tableViewEvents.dequeueReusableCellWithIdentifier(EventCell.identifier) as! EventCell;
            let event = events![indexPath.row];
            
            cell.labelEventName.text = event.name;
            
            return cell;
        }
        return UITableViewCell();
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if events != nil {
            return (events?.count)!;
        }
        return 0;
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if events != nil {
            selectedEvent = events![indexPath.row];
            performSegueWithIdentifier(EventDetailViewController.segueIdentifier, sender: nil);
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == EventDetailViewController.segueIdentifier {
            let eventDetailVC = segue.destinationViewController as! EventDetailViewController
            eventDetailVC.event = selectedEvent;
        }
    }
    
    
}
