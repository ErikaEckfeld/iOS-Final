//
//  BooksEventsDetailViewController.swift
//  Books Events
//
//  Created by Erika Eckfeld on 12/3/19.
//  Copyright © 2019 Erika Eckfeld. All rights reserved.
//

import UIKit

class BooksEventsDetailViewController: UIViewController {
    
    var booksEvent: BooksEvent?
    
    var dateFormatter = DateFormatter()
    
    @IBOutlet weak var bookIconImageView: UIImageView!
    
     @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        self.title = "Event Details"
        
        
        bookIconImageView.image = booksEvent?.classification.image
        
        titleLabel.text = booksEvent?.title
        descriptionLabel.text = booksEvent?.description
        
        if let date = booksEvent?.date{
            dateLabel.text = dateFormatter.string(from: date)
        }else{
            dateLabel.text = ""
        }
        
        // Do any additional setup after loading the view.
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
