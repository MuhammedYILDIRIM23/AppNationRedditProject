//
//  MainTableViewCell.swift
//  AppNationRedditProject
//
//  Created by Muhammed YILDIRIM  on 3.02.2022.
//

import UIKit

final class MainTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var thumbnailLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setConfigureLabels()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
    func showLabels(model: Child) {
        titleLabel.text = model.data?.title
        thumbnailLabel.text = model.data?.thumbnail
        descriptionLabel.text = model.data?.selftext
    }
    
    func setConfigureCell(cell: UITableViewCell) {
        cell.backgroundColor = UIColor.white
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.borderWidth = 1
        cell.layer.cornerRadius = 10
        cell.clipsToBounds = true
    }
    
    private func setConfigureLabels() {
        titleLabel.setConfigureLabel(label: titleLabel, font: 23, color: .black)
        thumbnailLabel.setConfigureLabel(label: thumbnailLabel, font: 20, color: .darkGray)
        descriptionLabel.setConfigureLabel(label: descriptionLabel, font: 18, color: .lightGray)
    }
    

}

extension UILabel  {
    func setConfigureLabel(label: UILabel, font: Int, color: UIColor) {
        label.adjustsFontSizeToFitWidth = true
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 10
        label.textColor = color
        label.font = .systemFont(ofSize: CGFloat(font), weight: .semibold)
        label.textAlignment = .center
        label.lineBreakMode = .byWordWrapping
    }
}
