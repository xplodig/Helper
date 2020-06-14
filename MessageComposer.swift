//
//  MessageComposer.swift


import Foundation
import MessageUI

let textMessageRecipients = ["1-800-867-5309"] // Message Recipients


class MessageComposer: NSObject, MFMessageComposeViewControllerDelegate {
    var userName: String = ""

    func canSendText() -> Bool {
        return MFMessageComposeViewController.canSendText()
    }

    // Configures and returns a MFMessageComposeViewController instance
    func configuredMessageComposeViewController() -> MFMessageComposeViewController {
        self.fetchUsername()
        let messageComposeVC = MFMessageComposeViewController()
        //  Make sure to set this property to self, so that the controller can be dismissed!
        messageComposeVC.messageComposeDelegate = self
        messageComposeVC.recipients = textMessageRecipients

        messageComposeVC.body = "Message Body"
        return messageComposeVC
    }

    
    // MFMessageComposeViewControllerDelegate callback Dismiss
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
        controller.dismiss(animated: true, completion: nil)
    }
}
