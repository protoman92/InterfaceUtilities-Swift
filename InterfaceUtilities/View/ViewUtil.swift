//
//  ViewUtil.swift
//  InterfaceUtilities
//
//  Created by Hai Pham on 27/4/18.
//  Copyright © 2018 Swiften. All rights reserved.
//

// MARK: - Utilities
public extension HPViewUtil {

  /// Initialize a view with nib.
  ///
  /// - Parameter
  ///   - view: The view to be initialized.
  ///   - nibName: The name of the nib file. If this is nil, take the class name
  ///              assuming that the nib file name is the same.
  public static func initializeWithNib(view: UIView, nibName: String? = nil) {
    let nibName = nibName ?? String(describing: view.classForCoder)
    
    guard
      view.subviews.count == 0,
      let nibView = UINib
        .init(nibName: nibName, bundle: Bundle(for: view.classForCoder))
        .instantiate(withOwner: view, options: nil)[0]
        as? UIView else
    {
      return
    }

    nibView.frame = view.bounds
    nibView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    view.addSubview(nibView)
  }
}
