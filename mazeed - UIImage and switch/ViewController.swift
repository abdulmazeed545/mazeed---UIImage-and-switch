//
//  ViewController.swift
//  mazeed - UIImage and switch
//
//  Created by Shaik abdul mazeed on 03/12/20.
//  Copyright © 2020 Shaik abdul mazeed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Creating global variables and instances
    var label:UILabel!
    var image:UIImageView!
    var button:UIButton!
    var fan1Switch = UISwitch()
    var fan2Switch = UISwitch()
    var light1Switch = UISwitch()
    var light2Switch = UISwitch()
    var speaker1Switch = UISwitch()
    var speaker2Switch = UISwitch()
    var speaker3Switch = UISwitch()
    var speaker4Switch = UISwitch()
    var wooferSwitch = UISwitch()
    var ACSwitch = UISwitch()
    var mainSwitch = UISwitch()
    var projectorSwitch = UISwitch()
    var hideDetails:Bool = false
    override func viewDidLoad() {
        super.viewDidLoad()
        //Calling functions
        speakers()
        fans()
        lights()
        mainProjector()
        hideButton()
        // Do any additional setup after loading the view.
    }
    //1.Creating a function for Speakers Button
    func speakers()
    {
        
        button = UIButton(type: UIButton.ButtonType.system)
        button.frame = CGRect(x: 50, y: 73, width: 150, height: 50)
        button.setTitle("Speakers", for: UIControl.State.normal)
        button.setTitleColor(UIColor.systemBlue, for: UIControl.State.normal)
        //button.sizeToFit()
        view.addSubview(button)
        button.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 20)
        button.backgroundColor = .systemTeal
        button.layer.cornerRadius = 25
        button.addTarget(self, action: #selector(speakersImage), for: UIControl.Event.touchUpInside)
        
    }
    
    //2.Creating a function for Fans Button
    func fans()
    {
        button = UIButton(type: UIButton.ButtonType.system)
        button.frame = CGRect(x: 250, y: 73, width: 150, height: 50)
        button.setTitle("Fans", for: UIControl.State.normal)
        button.setTitleColor(UIColor.systemBlue, for: UIControl.State.normal)
        button.addTarget(self, action: #selector(fansImage), for: UIControl.Event.touchUpInside)
        //button.sizeToFit()
        view.addSubview(button)
        button.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 20)
        button.backgroundColor = .systemTeal
        button.layer.cornerRadius = 25
        button.addTarget(self, action: #selector(hideSpeakers(sender:)), for: UIControl.Event.valueChanged)
    }
    //3.Creating a function for Lights Button
    func lights()
    {
        button = UIButton(type: UIButton.ButtonType.system)
        button.frame = CGRect(x: 50, y: 137, width: 150, height: 50)
        button.setTitle("Lights", for: UIControl.State.normal)
        button.setTitleColor(UIColor.systemBlue, for: UIControl.State.normal)
        //button.sizeToFit()
        view.addSubview(button)
        button.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 20)
        button.backgroundColor = .systemTeal
        button.layer.cornerRadius = 25
        button.addTarget(self, action: #selector(lightsImage), for: UIControl.Event.touchUpInside)
    }
    //4.Creating a function for Main Button
    func mainProjector()
    {
        button = UIButton(type: UIButton.ButtonType.system)
        button.frame = CGRect(x: 250, y: 137, width: 150, height: 50)
        button.setTitle("Main", for: UIControl.State.normal)
        button.setTitleColor(UIColor.systemBlue, for: UIControl.State.normal)
        button.addTarget(self, action: #selector(mainImage), for: UIControl.Event.touchUpInside)
        //button.sizeToFit()
        view.addSubview(button)
        button.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 20)
        button.backgroundColor = .systemTeal
        button.layer.cornerRadius = 25
    }
    //A. Creaing a function for speakers UIimage and switches
    @objc func speakersImage()
    {
        //Creating an instance to the fans Speakers
        label = UILabel()
        label.frame = CGRect(x: 20, y: 200, width: 100, height: 25)
        label.text = "Speakers"
        label.textColor = .systemIndigo
        label.font = UIFont(name: "AlNile-Bold", size: 20)
        view.addSubview(label)
        
        //Creating an instance to the woofer
        let woofer = UIImage(named: "woofers")
        image = UIImageView()
        image.frame = CGRect(x: 20, y: 230, width: 45, height: 45)
        image.image = woofer
        view.addSubview(image)
        
        //Creating a switch instance to the woofer
        wooferSwitch = UISwitch()
        wooferSwitch.frame = CGRect(x: 80, y: 235, width: 45, height: 45)
        view.addSubview(wooferSwitch)
        wooferSwitch.tintColor = UIColor.black
        wooferSwitch.thumbTintColor = UIColor.red
        wooferSwitch.addTarget(self, action: #selector(allSwitchesOff(swithchOff:)), for: UIControl.Event.valueChanged)
        
        
        //Creating an instance to the speaker1
        let speaker1 = UIImage(named: "speaker")
        image = UIImageView()
        image.frame = CGRect(x: 20, y: 290, width: 50, height: 50)
        image.image = speaker1
        view.addSubview(image)
        
        //Creating a switch instance to the speaker1Switch
        speaker1Switch = UISwitch()
        speaker1Switch.frame = CGRect(x: 80, y: 295, width: 45, height: 45)
        view.addSubview(speaker1Switch)
        speaker1Switch.tintColor = UIColor.black
        speaker1Switch.thumbTintColor = UIColor.red
        speaker1Switch.addTarget(self, action: #selector(allSwitchesOff(swithchOff:)), for: UIControl.Event.valueChanged)
        
        //Creating an instance to the speaker2
        let speaker2 = UIImage(named: "speaker")
        image = UIImageView()
        image.frame = CGRect(x: 20, y: 350, width: 50, height: 50)
        image.image = speaker2
        view.addSubview(image)
        
        //Creating a switch instance to the speaker2Switch
        speaker2Switch = UISwitch()
        speaker2Switch.frame = CGRect(x: 80, y: 355, width: 45, height: 45)
        view.addSubview(speaker2Switch)
        speaker2Switch.tintColor = UIColor.black
        speaker2Switch.thumbTintColor = UIColor.red
        speaker2Switch.addTarget(self, action: #selector(allSwitchesOff(swithchOff:)), for: UIControl.Event.valueChanged)
        
        //Creating an instance to the speaker3
        let speaker3 = UIImage(named: "speaker")
        image = UIImageView()
        image.frame = CGRect(x: 20, y: 410, width: 50, height: 50)
        image.image = speaker3
        view.addSubview(image)
        
        //Creating a switch instance to the speaker3Switch
        speaker3Switch = UISwitch()
        speaker3Switch.frame = CGRect(x: 80, y: 415, width: 45, height: 45)
        view.addSubview(speaker3Switch)
        speaker3Switch.tintColor = UIColor.black
        speaker3Switch.thumbTintColor = UIColor.red
        speaker3Switch.addTarget(self, action: #selector(allSwitchesOff(swithchOff:)), for: UIControl.Event.valueChanged)
        
        //Creating an instance to the speaker4
        let speaker4 = UIImage(named: "speaker")
        image = UIImageView()
        image.frame = CGRect(x: 20, y: 470, width: 50, height: 50)
        image.image = speaker4
        view.addSubview(image)
        
        //Creating a switch instance to the speaker4Switch
        speaker4Switch = UISwitch()
        speaker4Switch.frame = CGRect(x: 80, y: 475, width: 45, height: 45)
        view.addSubview(speaker4Switch)
        speaker4Switch.tintColor = UIColor.black
        speaker4Switch.thumbTintColor = UIColor.red
        speaker4Switch.addTarget(self, action: #selector(allSwitchesOff(swithchOff:)), for: UIControl.Event.valueChanged)
    }
    //B. Creaing a function for fans UIimage and switches
    @objc func fansImage()
    {
        //Creating an instance to the fans label
        label = UILabel()
        label.frame = CGRect(x: 20, y: 545, width: 100, height: 25)
        label.text = "Fans"
        label.textColor = .systemIndigo
        label.font = UIFont(name: "AlNile-Bold", size: 20)
        view.addSubview(label)
        
        
        //Creating an instance to the fan
        let fan1 = UIImage(named: "fan")
        image = UIImageView()
        image.frame = CGRect(x: 20, y: 570, width: 45, height: 45)
        image.image = fan1
        view.addSubview(image)
        
        //Creating a switch instance to the fan1Switch
        fan1Switch = UISwitch()
        fan1Switch.frame = CGRect(x: 80, y: 580, width: 45, height: 45)
        view.addSubview(fan1Switch)
        fan1Switch.tintColor = UIColor.black
        fan1Switch.thumbTintColor = UIColor.red
        fan1Switch.addTarget(self, action: #selector(allSwitchesOff(swithchOff:)), for: UIControl.Event.valueChanged)
        
        
        //Creating an instance to the fan
        let fan2 = UIImage(named: "fan")
        image = UIImageView()
        image.frame = CGRect(x: 20, y: 620, width: 45, height: 45)
        image.image = fan2
        view.addSubview(image)
        
        //Creating a switch instance to the fan2Switch
        fan2Switch = UISwitch()
        fan2Switch.frame = CGRect(x: 80, y: 630, width: 45, height: 45)
        view.addSubview(fan2Switch)
        fan2Switch.tintColor = UIColor.black
        fan2Switch.thumbTintColor = UIColor.red
        fan2Switch.addTarget(self, action: #selector(allSwitchesOff(swithchOff:)), for: UIControl.Event.valueChanged)
        
        
        //Creating an instance to the AC
        let AC = UIImage(named: "AC")
        image = UIImageView()
        image.frame = CGRect(x: 200, y: 580, width: 60, height: 60)
        image.image = AC
        view.addSubview(image)
        
        //Creating a switch instance to the ACSwitch
        ACSwitch = UISwitch()
        ACSwitch.frame = CGRect(x: 270, y: 590, width: 45, height: 45)
        view.addSubview(ACSwitch)
        ACSwitch.tintColor = UIColor.black
        ACSwitch.thumbTintColor = UIColor.red
        ACSwitch.addTarget(self, action: #selector(allSwitchesOff(swithchOff:)), for: UIControl.Event.valueChanged)
    }
    //C. Creaing a function for lights UIimage and switches
    @objc func lightsImage()
    {
        //Creating an instance to the light label
        label = UILabel()
        label.frame = CGRect(x: 20, y: 700, width: 100, height: 25)
        label.text = "Lights"
        label.textColor = .systemIndigo
        label.font = UIFont(name: "AlNile-Bold", size: 20)
        view.addSubview(label)
        //Creating an instance to the ligths
        let light1 = UIImage(named: "light")
        image = UIImageView()
        image.frame = CGRect(x: 20, y: 730, width: 45, height: 45)
        image.image = light1
        view.addSubview(image)
        
        //Creating a switch instance to the light1Switch
        light1Switch = UISwitch()
        light1Switch.frame = CGRect(x: 80, y: 735, width: 45, height: 45)
        view.addSubview(light1Switch)
        light1Switch.tintColor = UIColor.black
        light1Switch.thumbTintColor = UIColor.red
        light1Switch.addTarget(self, action: #selector(allSwitchesOff(swithchOff:)), for: UIControl.Event.valueChanged)
        
        //Creating an instance to the ligths
        let light2 = UIImage(named: "light")
        image = UIImageView()
        image.frame = CGRect(x: 20, y: 790, width: 45, height: 45)
        image.image = light2
        view.addSubview(image)
        
        //Creating a switch instance to the light2Switch
        light2Switch = UISwitch()
        light2Switch.frame = CGRect(x: 80, y: 800, width: 45, height: 45)
        view.addSubview(light2Switch)
        light2Switch.tintColor = UIColor.black
        light2Switch.thumbTintColor = UIColor.red
        light2Switch.addTarget(self, action: #selector(allSwitchesOff(swithchOff:)), for: UIControl.Event.valueChanged)
    }
    //D. Creaing a function for main UIimage and switches
    @objc func mainImage()
    {
        //Creating an instance to the main
        let main = UIImage(named: "main")
        image = UIImageView()
        image.frame = CGRect(x: 234, y: 220, width: 50, height: 50)
        image.image = main
        view.addSubview(image)
        
        //Creating a switch instance to the mainSwitch
        mainSwitch = UISwitch()
        mainSwitch.frame = CGRect(x: 290, y: 230, width: 45, height: 45)
        view.addSubview(mainSwitch)
        mainSwitch.tintColor = UIColor.black
        mainSwitch.thumbTintColor = UIColor.red
        
        //Calling projector function
        projectorImage()
        mainSwitch.addTarget(self, action: #selector(allSwitchesOff(swithchOff:)), for: UIControl.Event.valueChanged)
            
        
    }
    //E. Creating a function for projector image and switch
    func projectorImage()
    {
        //Creating an instance to the projector
        let projector = UIImage(named: "projector")
        image = UIImageView()
        image.frame = CGRect(x: 234, y: 280, width: 50, height: 50)
        image.image = projector
        view.addSubview(image)
        
        //Creating a switch instance to the projectorSwitch
        projectorSwitch = UISwitch()
        projectorSwitch.frame = CGRect(x: 290, y: 290, width: 45, height: 45)
        view.addSubview(projectorSwitch)
        projectorSwitch.tintColor = UIColor.black
        projectorSwitch.thumbTintColor = UIColor.red
        projectorSwitch.addTarget(self, action: #selector(allSwitchesOff(swithchOff:)), for: UIControl.Event.valueChanged)
    }
    //Creating a function for switches off event handling
    @objc func allSwitchesOff(swithchOff:UISwitch)
    {
      
            if (mainSwitch.isOn == false)
            {
                fan1Switch.isOn = false
                fan2Switch.isOn = false
                ACSwitch.isOn = false
                wooferSwitch.isOn = false
                speaker1Switch.isOn = false
                speaker2Switch.isOn = false
                speaker3Switch.isOn = false
                speaker4Switch.isOn = false
                light1Switch.isOn = false
                light2Switch.isOn = false
                projectorSwitch.isOn = false
            }
            if ACSwitch.isOn == true
            {
                fan1Switch.isOn = false
                fan2Switch.isOn = false
                
            }
            if projectorSwitch.isOn == true
            {
                light1Switch.isOn = false
                light2Switch.isOn = false
            }
      }
    //Creating a button for hiding the swithces
    func hideButton()
    {
        button = UIButton()
        button.frame = CGRect(x: 234, y: 350, width: 100, height: 50)
        button.setTitle("Hide", for: UIControl.State.normal)
        button.setTitleColor(.black, for: UIControl.State.normal)
        view.addSubview(button)
        button.backgroundColor = UIColor.systemTeal
        button.layer.cornerRadius = 30
        button.addTarget(self, action: #selector(hideSpeakers(sender:)), for: UIControl.Event.touchUpInside)
    }
    //Creating function to hide the switches
    @objc func hideSpeakers(sender:UISwitch)
    {
       
            speaker1Switch.isHidden = true
            speaker2Switch.isHidden = true
            speaker3Switch.isHidden = true
            speaker4Switch.isHidden = true
            wooferSwitch.isHidden = true
            fan1Switch.isHidden = true
            fan2Switch.isHidden = true
            ACSwitch.isHidden = true
            light1Switch.isHidden = true
            light2Switch.isHidden = true
         
              
    }

}

