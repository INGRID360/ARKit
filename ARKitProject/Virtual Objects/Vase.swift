import Foundation

class Vase: VirtualObject {

	override init() {
		super.init(modelName: "aland", fileExtension: "scn", thumbImageFilename: "chair", title: "Vas")
	}

	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}
