//
//  File.swift
//  
//
//  Created by Alexander Zhuchkov on 07.02.2024.
//

import UIKit

class LTableViewHeaderFooterView: UITableViewHeaderFooterView, Identifiable {
    
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        
        initialize()
    }
    
    @available(*, unavailable)
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open func initialize() {
    
    }
}
