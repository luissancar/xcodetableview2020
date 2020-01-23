//
//  CellController.swift
//  tableViewA
//
//  Created by Luis José Sánchez Carrasco on 23/01/2020.
//  Copyright © 2020 Luis José Sánchez Carrasco. All rights reserved.
//

import UIKit

class CellController: UITableViewCell {
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func buttonPress(_ sender: Any) {
        label.text="ggg"
    }
}
