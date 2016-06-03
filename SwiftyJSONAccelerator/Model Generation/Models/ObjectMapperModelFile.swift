//
//  ObjectMapperModel.swift
//  SwiftyJSONAccelerator
//
//  Created by Karthikeya Udupa on 02/06/16.
//  Copyright © 2016 Karthikeya Udupa K M. All rights reserved.
//

import Foundation

struct ObjectMapperModelFile: ModelFile {

  /// Filename for the model.
  var fileName: String
  var type: ConstructType
  var component: ModelComponent

  init() {
    self.fileName = ""
    type = ConstructType.StructType
    component = ModelComponent.init()
  }

  mutating func setInfo(fileName: String, _ configuration: ModelGenerationConfiguration) {
    self.fileName = fileName
    type = configuration.constructType
  }

  func generateModel() -> String {
    return ""

  }
  func moduleName() -> String {
    return "ObjectMapper"
  }

}
