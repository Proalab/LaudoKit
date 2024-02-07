//
//  File.swift
//  
//
//  Created by Alexander Zhuchkov on 07.02.2024.
//

import UIKit

open class LTableViewHeaderFooterView: UITableViewHeaderFooterView, Identifiable {
    
    override public init(reuseIdentifier: String?) {
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
