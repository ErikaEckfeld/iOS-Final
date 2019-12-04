//
//  BooksEventsViewController.swift
//  Books Events
//
//  Created by Erika Eckfeld on 12/3/19.
//  Copyright © 2019 Erika Eckfeld. All rights reserved.
//

import UIKit

class BooksEventsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var booksEventsTableView: UITableView!
    
    
    let booksEvents = BooksEventsJSONLoader.load(fileName: "books")
    
    
    let dateFormatter = DateFormatter()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        self.title = "Books Events"

        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return booksEvents.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: "booksEventsCell", for: indexPath)
        
        if let cell = cell as? BooksEventTableViewCell{
            let booksEvent = booksEvents[indexPath.row]
            cell.bookIconImageView.image = booksEvent.classification.image
            cell.titleLabel.text = booksEvent.title
            cell.dateLabel.text = dateFormatter.string(from: booksEvent.date)
        }
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if let destination =  segue.destination as? BooksEventsDetailViewController,
            let row = booksEventsTableView.indexPathForSelectedRow?.row{
            
            destination.booksEvent = booksEvents[row]
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
