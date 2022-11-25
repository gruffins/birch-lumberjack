//
//  DDBirchLogger.swift
//  BirchLumberjack
//
//  Created by Ryan Fung on 11/22/22.
//

import Foundation
import CocoaLumberjack
import Birch

public class DDBirchLogger: DDAbstractLogger {
    public override func log(message logMessage: DDLogMessage) {
        let message = logMessage.message

        switch logMessage.level {
        case .verbose:
            Birch.t { message }
        case .debug:
            Birch.d { message }
        case .info:
            Birch.i { message }
        case .warning:
            Birch.w { message }
        case .error:
            Birch.e { message }
        default:
            break
        }
    }

    public override func flush() {
        Birch.flush()
    }
}
