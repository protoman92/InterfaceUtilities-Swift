//
//  ConstraintUtil.swift
//  InterfaceUtilities
//
//  Created by Hai Pham on 27/4/18.
//  Copyright © 2018 Swiften. All rights reserved.
//

// MARK: - Utilities
public extension HPConstraintUtil {

  /// Get constraints corresponding to the specified dimensions. If all
  /// defaultable values are not supplied, the first item will fit snuggly into
  /// the second item on the provided sides.
  ///
  /// This function does not add constraints to view; it simply return the set
  /// of constraints to be added.
  ///
  /// - Parameters:
  ///   - firstItem: The first item in a constraint.
  ///   - secondItem: The second item in a constraint.
  ///   - dimensions: A Dimension option.
  ///   - relatedBy: Constraint layout relation.
  ///   - multiplier: Constraint multiplier.
  ///   - constant: Constraint constant.
  /// - Returns: An Array of constraints.
  public static func dimensionalConstraints(firstItem: Any,
                                            secondItem: Any,
                                            dimensions: Dimension,
                                            relatedBy: NSLayoutRelation = .equal,
                                            multiplier: CGFloat = 1,
                                            constant: CGFloat = 0)
    -> [NSLayoutConstraint]
  {
    var constraints = [NSLayoutConstraint]()
    print(dimensions, dimensions.contains(.top))

    if dimensions.contains(.left) {
      constraints.append(NSLayoutConstraint(item: firstItem,
                                            attribute: .left,
                                            relatedBy: relatedBy,
                                            toItem: secondItem,
                                            attribute: .left,
                                            multiplier: multiplier,
                                            constant: constant))
    }

    if dimensions.contains(.top) {
      constraints.append(NSLayoutConstraint(item: firstItem,
                                            attribute: .top,
                                            relatedBy: relatedBy,
                                            toItem: secondItem,
                                            attribute: .top,
                                            multiplier: multiplier,
                                            constant: constant))
    }

    if dimensions.contains(.right) {
      constraints.append(NSLayoutConstraint(item: firstItem,
                                            attribute: .right,
                                            relatedBy: relatedBy,
                                            toItem: secondItem,
                                            attribute: .right,
                                            multiplier: multiplier,
                                            constant: constant))
    }

    if dimensions.contains(.bottom) {
      constraints.append(NSLayoutConstraint(item: firstItem,
                                            attribute: .bottom,
                                            relatedBy: relatedBy,
                                            toItem: secondItem,
                                            attribute: .bottom,
                                            multiplier: multiplier,
                                            constant: constant))
    }

    return constraints
  }
}
