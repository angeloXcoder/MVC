//
//  NewCell.swift
//  Task
//
//  Created by Mac on 8/25/19.
//  Copyright © 2019 Mac. All rights reserved.
//

import UIKit
import Kingfisher

class NewCell: UITableViewCell {
    @IBOutlet weak var newsImageView: UIImageView!
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func conigureCell(shortTitle:String,newsDate:String,photoLink:String){
  
        print("\(shortTitle)")
        self.titleLabel?.text  = "\(shortTitle)"
        self.dateLabel?.text  = "\(newsDate)"
        self.newsImageView?.kf.setImage(with: URL(string: photoLink),
            placeholder: UIImage(named: "placeholderImage"))
    }

}
