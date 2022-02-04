//
//  MainTableViewCell.swift
//  AppNationRedditProject
//
//  Created by Muhammed YILDIRIM  on 3.02.2022.
//

import UIKit

class MainTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var thumbnailLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
    func saveModel(model: Child) {
        titleLabel.text = model.data?.title
        thumbnailLabel.text = model.data?.thumbnail
        descriptionLabel.text = model.data?.selftext
    }

}
