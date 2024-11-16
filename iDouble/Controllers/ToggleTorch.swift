//
//  ToggleTorch.swift
//  iDouble
//
//  Created by Nicolò Amabile on 15/11/24.
//

import AVFoundation

func toggleTorch(isOn: Bool) {
    guard let device = AVCaptureDevice.default(for: .video), device.hasTorch else {
        print("Torch not available")
        return
    }

    do {
        try device.lockForConfiguration()
        device.torchMode = isOn ? .on : .off
        device.unlockForConfiguration()
    } catch {
        print("Torch could not be used: \(error)")
    }


}

