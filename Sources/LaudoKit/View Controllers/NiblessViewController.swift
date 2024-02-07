//
//  NiblessViewController.swift
//  LaudoKit
//
//  Created by Alexander Zhuchkov on 23.11.2020.
//

import UIKit

#if DEBUG
import LifetimeTracker
#endif

open class NiblessViewController: UIViewController {
    
    
    // MARK: - Initialization
    public init() {
        super.init(nibName: nil, bundle: nil)
        
        #if DEBUG
        trackLifetime()
        #endif
    }
    
    @available(*, unavailable, message: "Loading this view controller from a nib is unsupported in favor of initializer dependency injection.")
    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    @available(*, unavailable, message: "Loading this view controller from a nib is unsupported in favor of initializer dependency injection.")
    required public init?(coder aDecoder: NSCoder) {
        fatalError("Loading this view controller from a nib is unsupported in favor of initializer dependency injection.")
    }
    
}

#if DEBUG
extension NiblessViewController: LifetimeTrackable {
    public class var lifetimeConfiguration: LifetimeConfiguration {
        return LifetimeConfiguration(maxCount: 1)
    }
}
#endif
    
