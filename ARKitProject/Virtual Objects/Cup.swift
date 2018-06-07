import Foundation

class Cup: VirtualObject {

	override init() {
		super.init(modelName: "aland", fileExtension: "scn", thumbImageFilename: "chair", title: "Åland")
	}

	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}
