import Foundation
import ARKit

extension ARCamera.TrackingState {
	var presentationString: String {
		switch self {
        case .notAvailable:
            return "TRACKING UNAVAILABLE"
        case .normal:
            return "TRACKING NORMAL"
        case .limited(let reason):
            switch reason {
            case .excessiveMotion:
                return "TRACKING LIMITED\nFör mycket kamera rörelse"
            case .insufficientFeatures:
                return "TRACKING LIMITED\nInte tillräckligt med ytdetaljer"
            case .initializing:
                return "INITIALIZING"
            case .relocalizing:
                return ""
            }
        }
	}
}
