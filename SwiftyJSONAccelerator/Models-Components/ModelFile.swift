//
//  ModelFile.swift
//  SwiftyJSONAccelerator
//
//  Created by Karthikeya Udupa on 01/06/16.
//  Copyright © 2016 Karthikeya Udupa K M. All rights reserved.
//

import Foundation

/**
 *  A protocol defining the structure of the model file.
 */
protocol ModelFile {

  /// Filename for the model.
  var fileName: String { get set }

  /// Type of the the object, if a structure or a class.
  var type: ConstructType { get }

  /// Storage for various components of the model, it is used to store the intermediate data.
  var component: ModelComponent { get }

  /**
   Set the basic information for the given model file.

   - parameter fileName:      Name of the model file.
   - parameter configuration: Configuration for the model file.
   */
  mutating func setInfo(fileName: String, _ configuration: ModelGenerationConfiguration)

  /**
   Generate various required components for the given property.

   - parameter property: Property for which components are to be generated.
   */
  mutating func generateAndAddComponentsFor(property: PropertyComponent)

  /**
   Generate the final model.

   - returns: String representation for the model.
   */
  func generateModel() -> String

  /**
   Name of the module/model type.

   - returns: String representing the name of the model type.
   */
  func moduleName() -> String

}
