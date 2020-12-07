
//  FindWordsScreenViewController.swift
//  Barron Slayer
//  Created by Clyde S. Henry on 2016/8/1.
//  Copyright © 2016 Specos Studios. All rights reserved.

import UIKit

class FindWordsScreenViewController: UIViewController {
    
    // MARK: - Color Code Translator
    
    func UIColorFromRGB (hex:String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: NSCharacterSet.whitespacesAndNewlines)
        if (cString.hasPrefix("#")) {
            cString = (cString as NSString).substring(from: 1)
        }
        let rString = (cString as NSString).substring(to: 2)
        let gString = ((cString as NSString).substring(from: 2) as NSString).substring(to: 2)
        let bString = ((cString as NSString).substring(from: 4) as NSString).substring(to: 2)
        var r:CUnsignedInt = 0, g:CUnsignedInt = 0, b:CUnsignedInt = 0;
        Scanner(string: rString).scanHexInt32(&r)
        Scanner(string: gString).scanHexInt32(&g)
        Scanner(string: bString).scanHexInt32(&b)
        return UIColor(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: CGFloat(1))
    }
    
    // MARK: - Status Bar
    
    var isStatusBarHidden:Bool = false
    override var preferredStatusBarUpdateAnimation: UIStatusBarAnimation {
        return .slide
    }
    
    override var prefersStatusBarHidden: Bool {
        return self.isStatusBarHidden
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    // MARK: - Defines
    
    @IBOutlet weak var backbackgroundRoundView: UIView!
    @IBOutlet weak var backgroundRoundView: UIView!
    
    var barron3500UnlistedWordsLabelArray = [UILabel]()
    var barron3500UnlistedTranslationsLabelArray = [UILabel]()
    var barron3500UnlistedClassesLabelArray = [UILabel]()
    var barron3500UnlistedExplainationsLabelArray = [UILabel]()
    var barron3500UnlistedBackgroundViewArray = [UIView]()
    var barron3500UnlistedSpesificMeaningButtonArray = [UIButton]()
    var keyboardButtonArray = [UIButton]()
    
    let fileManager = FileManager.default
    let pathForBarron3500UnlistedWords = Bundle.main.path(forResource: "Barron 3500 Unlisted Words", ofType: "txt")
    let pathForBarron3500UnlistedTranslations = Bundle.main.path(forResource: "Barron 3500 Unlisted Translations", ofType: "txt")
    let pathForBarron3500UnlistedClasses = Bundle.main.path(forResource: "Barron 3500 Unlisted Classes", ofType: "txt")
    let pathForBarron3500UnlistedExplainations = Bundle.main.path(forResource: "Barron 3500 Unlisted Explainations", ofType: "txt")
    var barron3500UnlistedWordsString = NSString()
    var barron3500UnlistedTranslationsString = NSString()
    var barron3500UnlistedClassesString = NSString()
    var barron3500UnlistedExplainationsString = NSString()
    
    @IBOutlet weak var Semibold29: UILabel!
    @IBOutlet weak var Regular27: UILabel!
    @IBOutlet weak var Medium22: UILabel!
    @IBOutlet weak var Regular21: UILabel!
    @IBOutlet weak var Bold21: UILabel!
    @IBOutlet weak var SemiBold19: UILabel!
    @IBOutlet weak var Medium19: UILabel!
    @IBOutlet weak var Light17: UILabel!
    @IBOutlet weak var Light15: UILabel!
    @IBOutlet weak var Medium30: UILabel!
    
    var barron3500UnlistedWordsArray = [String]()
    var barron3500UnlistedTranslationsArray = [String]()
    var barron3500UnlistedClassesArray = [String]()
    var barron3500UnlistedExplainationsArray = [String]()
    var barron3500UnlistedCount = 0
    
    var searchWordsArray = [String]()
    var searchTranslationsArray = [String]()
    var searchClassesArray = [String]()
    var searchExplainationsArray = [String]()
    var searchedWordsArray = [String]()
    var searchedTranslationsArray = [String]()
    var searchedClassesArray = [String]()
    var searchedExplainationsArray = [String]()
    var searchString = ""
    var searchCount = 0
    
    var barron3500AArrayWords = [String]()
    var barron3500AArrayTranslations = [String]()
    var barron3500BArrayWords = [String]()
    var barron3500BArrayTranslations = [String]()
    var barron3500CArrayWords = [String]()
    var barron3500CArrayTranslations = [String]()
    var barron3500DArrayWords = [String]()
    var barron3500DArrayTranslations = [String]()
    var barron3500EArrayWords = [String]()
    var barron3500EArrayTranslations = [String]()
    var barron3500FArrayWords = [String]()
    var barron3500FArrayTranslations = [String]()
    var barron3500GArrayWords = [String]()
    var barron3500GArrayTranslations = [String]()
    var barron3500HArrayWords = [String]()
    var barron3500HArrayTranslations = [String]()
    var barron3500IArrayWords = [String]()
    var barron3500IArrayTranslations = [String]()
    var barron3500JArrayWords = [String]()
    var barron3500JArrayTranslations = [String]()
    var barron3500KArrayWords = [String]()
    var barron3500KArrayTranslations = [String]()
    var barron3500LArrayWords = [String]()
    var barron3500LArrayTranslations = [String]()
    var barron3500MArrayWords = [String]()
    var barron3500MArrayTranslations = [String]()
    var barron3500NArrayWords = [String]()
    var barron3500NArrayTranslations = [String]()
    var barron3500OArrayWords = [String]()
    var barron3500OArrayTranslations = [String]()
    var barron3500PArrayWords = [String]()
    var barron3500PArrayTranslations = [String]()
    var barron3500QArrayWords = [String]()
    var barron3500QArrayTranslations = [String]()
    var barron3500RArrayWords = [String]()
    var barron3500RArrayTranslations = [String]()
    var barron3500SArrayWords = [String]()
    var barron3500SArrayTranslations = [String]()
    var barron3500TArrayWords = [String]()
    var barron3500TArrayTranslations = [String]()
    var barron3500UArrayWords = [String]()
    var barron3500UArrayTranslations = [String]()
    var barron3500VArrayWords = [String]()
    var barron3500VArrayTranslations = [String]()
    var barron3500WArrayWords = [String]()
    var barron3500WArrayTranslations = [String]()
    var barron3500XArrayWords = [String]()
    var barron3500XArrayTranslations = [String]()
    var barron3500YArrayWords = [String]()
    var barron3500YArrayTranslations = [String]()
    var barron3500ZArrayWords = [String]()
    var barron3500ZArrayTranslations = [String]()
    
    var barron3500AArrayClasses = [String]()
    var barron3500AArrayExplainations = [String]()
    var barron3500BArrayClasses = [String]()
    var barron3500BArrayExplainations = [String]()
    var barron3500CArrayClasses = [String]()
    var barron3500CArrayExplainations = [String]()
    var barron3500DArrayClasses = [String]()
    var barron3500DArrayExplainations = [String]()
    var barron3500EArrayClasses = [String]()
    var barron3500EArrayExplainations = [String]()
    var barron3500FArrayClasses = [String]()
    var barron3500FArrayExplainations = [String]()
    var barron3500GArrayClasses = [String]()
    var barron3500GArrayExplainations = [String]()
    var barron3500HArrayClasses = [String]()
    var barron3500HArrayExplainations = [String]()
    var barron3500IArrayClasses = [String]()
    var barron3500IArrayExplainations = [String]()
    var barron3500JArrayClasses = [String]()
    var barron3500JArrayExplainations = [String]()
    var barron3500KArrayClasses = [String]()
    var barron3500KArrayExplainations = [String]()
    var barron3500LArrayClasses = [String]()
    var barron3500LArrayExplainations = [String]()
    var barron3500MArrayClasses = [String]()
    var barron3500MArrayExplainations = [String]()
    var barron3500NArrayClasses = [String]()
    var barron3500NArrayExplainations = [String]()
    var barron3500OArrayClasses = [String]()
    var barron3500OArrayExplainations = [String]()
    var barron3500PArrayClasses = [String]()
    var barron3500PArrayExplainations = [String]()
    var barron3500QArrayClasses = [String]()
    var barron3500QArrayExplainations = [String]()
    var barron3500RArrayClasses = [String]()
    var barron3500RArrayExplainations = [String]()
    var barron3500SArrayClasses = [String]()
    var barron3500SArrayExplainations = [String]()
    var barron3500TArrayClasses = [String]()
    var barron3500TArrayExplainations = [String]()
    var barron3500UArrayClasses = [String]()
    var barron3500UArrayExplainations = [String]()
    var barron3500VArrayClasses = [String]()
    var barron3500VArrayExplainations = [String]()
    var barron3500WArrayClasses = [String]()
    var barron3500WArrayExplainations = [String]()
    var barron3500XArrayClasses = [String]()
    var barron3500XArrayExplainations = [String]()
    var barron3500YArrayClasses = [String]()
    var barron3500YArrayExplainations = [String]()
    var barron3500ZArrayClasses = [String]()
    var barron3500ZArrayExplainations = [String]()
    
    var blueLevel1 = UIColor.init()
    var blueLevel2 = UIColor.init()
    var blueLevel3 = UIColor.init()
    var blueLevel4 = UIColor.init()
    
    var searchActivation = false
    var aboutActivation = false
    var clearActivation = false
    var spesificMeaningActivation = false
    
    var keyboardKeyTouchedActication = false
    var findWordsButtonTouchedActivation = false
    var moreButtonTouchedActivation = false
    var clearButtonTouchedActivation = false
    var deleteButtonTouchedActivation = false
    
    var spesificMeaningtag = 0
    
    var keyboardLetters = "Q W E R T Y U I O P A S D F G H J K L Z X C V B N M"
    var WordsLetters = "A B C D E F G H I J K L M N O P Q R S T U V W X Y Z"
    var keyboardLettersArray = [String]()
    
    var keyboardBackgroundViewAppearTimer = Timer()
    var findWordsButtonLayerChangeTimer = Timer()
    var deleteButtonLongPressTimer = Timer()
    
    var wordsListBackgroundView = UIView()
        var nothingHereLabel = UILabel()
        var wordsListScrollView = UIScrollView()
        var wordsScrollViewQuickAccessButtonArray = [UIButton]()
    
    var findWordsButtonBackgroundView = UIView()
    var findWordsButtonContentView = UIView()
        var searchIconImageView = UIImageView()
        var searchTextLabel = UILabel()
        var findWordsButton = UIButton()
    
    var moreButtonBackgroundView = UIView()
    var moreButtonContentView = UIView()
        var aboutIconImageView = UIImageView()
        var aboutTextLabel = UILabel()
        var moreButton = UIButton()
        var aboutContentScrollView = UIScrollView()
            var aboutBarron3500CaptionLable = UILabel()
            var aboutBarron3500ContentLabel = UILabel()
            var aboutThisVersionCaptionLabel = UILabel()
            var aboutThisVersionContentLabel = UILabel()
            var openSourceCaptionLabel = UILabel()
            var openSourceContentLabel = UILabel()
            var mainIconImageView = UIImageView()
            var contactUsLabel = UILabel()
    
    var keyboardBackgroundView = UIView()
        var clearButtonContentView = UIView()
        var clearButton = UIButton()
        var clearButtonTextLabel = UILabel()
        var clearButtonBackgroundView = UIView()
        var keyboardBackgroundButton = UIButton()
        var deleteButton = UIButton()
        var deleteButtonContentView = UIView()
        var deleteButtonTextLabel = UILabel()
        var deleteButtonBackgroundView = UIView()
    
    var keyboardKeyTouchDownShownLabel = UILabel()
    
    func wordsScrollViewQuickAccessButtonDidTouchDown(_ touchedButton: UIButton) {
        if wordsListScrollView.isDecelerating != true {
        UIView.animate(withDuration: 0.1, animations:
            {
                touchedButton.backgroundColor = self.blueLevel4
            })
        }
    }
    
    @objc func wordsScrollViewQuickAccessButtonDidTouchUpInside(_ touchedButton: UIButton) {
        
        UIView.animate(withDuration: 0.1, animations:
            {
                for index in 0...25
                {
                    self.wordsScrollViewQuickAccessButtonArray[index].alpha = 0
                }
                touchedButton.backgroundColor = UIColor.clear
                
            })
        
        UIView.animate(withDuration: 0.01, delay: 0.1, options: .curveLinear, animations:
            {
                self.wordsListScrollView.contentOffset.y = 0
            }, completion: nil)
        
        UIView.animate(withDuration: 0.09, delay: 0.11, options: .curveLinear, animations:
            {
                self.searchLevel1(touchedButton)
            }, completion: nil)
        
        if searchActivation == true
        {
            searchTextLabel.text = searchString
        }
        
    }
    
    @objc func wordsScrollViewQuickAccessButtonDidTouchUpOutside(_ touchedButton: UIButton) {
        UIView.animate(withDuration: 0.1, animations:
            {
                touchedButton.backgroundColor = UIColor.clear
            })
    }

    @objc func findWordsButtonLayerChangeTimerPerform() {
        self.view.bringSubviewToFront(self.wordsListBackgroundView)
        self.view.bringSubviewToFront(self.moreButtonBackgroundView)
        self.view.bringSubviewToFront(self.moreButtonContentView)
        self.view.bringSubviewToFront(self.findWordsButtonBackgroundView)
        self.view.bringSubviewToFront(self.findWordsButtonContentView)
        self.view.bringSubviewToFront(self.keyboardBackgroundView)
    }
    
    @objc func findWordsButtonDidTouchDown() {
        
        if (findWordsButtonTouchedActivation == false) && (moreButtonTouchedActivation == false)
        {
            self.view.bringSubviewToFront(findWordsButtonBackgroundView)
            self.view.bringSubviewToFront(findWordsButtonContentView)
            self.view.bringSubviewToFront(wordsListBackgroundView)
            self.view.bringSubviewToFront(moreButtonBackgroundView)
            self.view.bringSubviewToFront(moreButtonContentView)
            self.view.bringSubviewToFront(keyboardBackgroundView)
            UIView.animate(withDuration: 0.2, animations:
                {
                    self.findWordsButtonContentView.bounds.size.width -= 8
                    self.findWordsButtonContentView.bounds.size.height -= 4
                    self.findWordsButtonBackgroundView.bounds.size.width -= 8
                    self.findWordsButtonBackgroundView.bounds.size.height -= 4
                    self.searchIconImageView.frame.origin.x -= 4
                    self.searchIconImageView.frame.origin.y -= 2
                    self.searchTextLabel.frame.origin.x -= 4
                    self.searchTextLabel.frame.origin.y -= 2
                    self.searchIconImageView.alpha = 0
                    self.findWordsButtonContentView.alpha = 0.7
                    self.searchTextLabel.alpha = 0
                    self.findWordsButtonBackgroundView.alpha = 0
                })
            findWordsButtonTouchedActivation = true
        }
    }
    
    @objc func findWordsButtonDidTouchUpInside() {
        if findWordsButtonTouchedActivation == true && moreButtonTouchedActivation == false
        {
            if searchActivation == false
            {
                UIView.animate(withDuration: 0.2, animations:
                    {
                        self.view.bringSubviewToFront(self.wordsListBackgroundView)
                        self.view.bringSubviewToFront(self.moreButtonBackgroundView)
                        self.view.bringSubviewToFront(self.moreButtonContentView)
                        self.view.bringSubviewToFront(self.findWordsButtonBackgroundView)
                        self.view.bringSubviewToFront(self.findWordsButtonContentView)
                        self.view.bringSubviewToFront(self.keyboardBackgroundView)
                        self.findWordsButtonBackgroundView.alpha = 1
                        self.findWordsButtonContentView.alpha = 1
                    })
            }
            else
            {
                UIView.animate(withDuration: 0.2, delay: 0, options: .curveLinear, animations:
                    {
                        self.findWordsButtonContentView.alpha = 1
                        self.findWordsButtonBackgroundView.alpha = 1
                    }, completion: nil)
                findWordsButtonLayerChangeTimer = Timer.scheduledTimer(timeInterval: 0, target: self, selector: #selector(FindWordsScreenViewController.findWordsButtonLayerChangeTimerPerform), userInfo: nil, repeats: false)
            }
        
            if searchActivation == false
            {
                UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut, animations:
                    {
                        if (UIDevice.current.modelName == "iPhone X") || (UIDevice.current.modelName == "Simulator") {
                            
                            
                            self.wordsListBackgroundView.bounds.size.height -= 269
                            self.wordsListBackgroundView.frame.origin.y = 44
                            self.wordsListScrollView.bounds.size.height -= 269
                            self.wordsListScrollView.frame.origin.y = 0
                            
                            //self.wordsListScrollView.contentSize.height = self.wordsListScrollView.bounds.size.width / 4 * 7
                            
                        }
                        else {
                            self.wordsListBackgroundView.bounds.size.height -= 267
                            self.wordsListBackgroundView.frame.origin.y = 14
                            self.wordsListScrollView.bounds.size.height -= 267
                            self.wordsListScrollView.frame.origin.y = 0
                        }
                        
                        self.nothingHereLabel.bounds = self.wordsListBackgroundView.bounds
                        self.nothingHereLabel.frame.origin.x = 0
                        self.nothingHereLabel.frame.origin.y = 0
                    }, completion: nil)
            
                UIView.animate(withDuration: 0.4, delay: 0.05, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut, animations:
                    {
                        self.moreButtonContentView.frame.origin.x = self.view.bounds.size.width
                        self.moreButtonBackgroundView.frame.origin.x = self.view.bounds.size.width
                    }, completion: nil)
            
                UIView.animate(withDuration: 0.4, delay: 0.1, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut, animations:
                    {
                        if self.findWordsButtonBackgroundView.bounds.size.height != 54
                        {
                            self.findWordsButtonContentView.bounds.size.width += 8
                            self.findWordsButtonContentView.bounds.size.height += 4
                            self.findWordsButtonBackgroundView.bounds.size.width += 8
                            self.findWordsButtonBackgroundView.bounds.size.height += 4
                            self.searchIconImageView.frame.origin.x += 4
                            self.searchIconImageView.frame.origin.y += 2
                            self.searchTextLabel.frame.origin.x += 4
                            self.searchTextLabel.frame.origin.y += 2
                        }
                        
                        if (UIDevice.current.modelName == "iPhone X") || (UIDevice.current.modelName == "Simulator") {
                            self.findWordsButtonContentView.bounds.size.width = self.view.bounds.size.width - 32
                            self.findWordsButtonContentView.frame.origin.x = 16
                            self.findWordsButtonContentView.frame.origin.y -= 269
                        }
                        else {
                        
                            self.findWordsButtonContentView.bounds.size.width = self.view.bounds.size.width - 28
                            self.findWordsButtonContentView.frame.origin.x = 14
                            self.findWordsButtonContentView.frame.origin.y -= 267
                            
                        }
                        
                        if self.searchString != "" {
                            self.searchTextLabel.text = self.searchString
                        }
                        else {
                            self.searchTextLabel.text = "ENTER WORDS HERE"
                        }
                        self.searchTextLabel.alpha = 1
                        self.searchTextLabel.bounds.size.width = self.findWordsButtonContentView.bounds.size.width - 99
                        self.searchTextLabel.frame.origin.x = 58
                        self.findWordsButton.bounds.size = self.findWordsButtonContentView.bounds.size
                        self.findWordsButton.frame.origin.x = 0
                    
                        self.searchIconImageView.image = UIImage.init(named: "Back Icon")
                        self.searchIconImageView.bounds.size.width = 58
                        self.searchIconImageView.frame.origin.x = 0
                        self.searchIconImageView.alpha = 1
                        
                        if (UIDevice.current.modelName == "iPhone X") || (UIDevice.current.modelName == "Simulator") {
                        
                            self.findWordsButtonBackgroundView.bounds.size.width = self.view.bounds.size.width - 32
                            self.findWordsButtonBackgroundView.frame.origin.x = 16
                            self.findWordsButtonBackgroundView.frame.origin.y -= 269
                            
                        }
                        else {
                            
                            self.findWordsButtonBackgroundView.bounds.size.width = self.view.bounds.size.width - 28
                            self.findWordsButtonBackgroundView.frame.origin.x = 14
                            self.findWordsButtonBackgroundView.frame.origin.y -= 267
                            
                        }
                    
                    }, completion: nil)
            
                UIView.animate(withDuration: 0.4, delay: 0.15, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut, animations:
                    {
                        
                        if (UIDevice.current.modelName == "iPhone X") || (UIDevice.current.modelName == "Simulator") {
                            
                            self.moreButtonBackgroundView.frame.origin.y -= 269
                            self.moreButtonContentView.frame.origin.y -= 269
                            self.keyboardBackgroundView.frame.origin.y -= 287
                            
                        }
                        else {
                            
                            self.moreButtonBackgroundView.frame.origin.y -= 267
                            self.moreButtonContentView.frame.origin.y -= 267
                            self.keyboardBackgroundView.frame.origin.y -= 267
                            
                        }
                        
                    }, completion: nil)
            
                searchActivation = true
            }
            else
            {
                UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut, animations:
                    {
                        
                        if (UIDevice.current.modelName == "iPhone X") || (UIDevice.current.modelName == "Simulator") {
                            
                            self.moreButtonBackgroundView.frame.origin.y = self.view.bounds.size.height - 34 - 54
                            self.moreButtonContentView.frame.origin.y = self.view.bounds.size.height - 34 - 54
                            self.keyboardBackgroundView.frame.origin.y = self.view.bounds.size.height
                            
                        }
                        else {
                            
                            self.moreButtonBackgroundView.frame.origin.y = self.view.bounds.size.height - 14 - 54
                            self.moreButtonContentView.frame.origin.y = self.view.bounds.size.height - 14 - 54
                            self.keyboardBackgroundView.frame.origin.y = self.view.bounds.size.height
                            
                        }
                        
                    }, completion: nil)
            
                UIView.animate(withDuration: 0.4, delay: 0.05, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut, animations:
                    {
                        if self.findWordsButtonBackgroundView.bounds.height != 54
                        {
                            self.findWordsButtonContentView.bounds.size.width += 8
                            self.findWordsButtonContentView.bounds.size.height += 4
                            self.findWordsButtonBackgroundView.bounds.size.width += 8
                            self.findWordsButtonBackgroundView.bounds.size.height += 4
                            self.searchIconImageView.frame.origin.x += 4
                            self.searchIconImageView.frame.origin.y += 2
                            self.searchTextLabel.frame.origin.x += 4
                            self.searchTextLabel.frame.origin.y += 2
                        }
                        
                        if (UIDevice.current.modelName == "iPhone X") || (UIDevice.current.modelName == "Simulator") {
                            
                            self.findWordsButtonContentView.bounds.size.width = (self.view.bounds.size.width - 48) / 2
                            self.findWordsButtonContentView.frame.origin.x = 16
                            self.findWordsButtonContentView.frame.origin.y = self.view.bounds.size.height - 34 - 54
                            
                            self.findWordsButtonBackgroundView.bounds.size.width = (self.view.bounds.size.width - 48) / 2
                            self.findWordsButtonBackgroundView.frame.origin.x = 16
                            self.findWordsButtonBackgroundView.frame.origin.y = self.view.bounds.size.height - 34 - 54
                            
                        }
                        else {
                            
                            self.findWordsButtonContentView.bounds.size.width = (self.view.bounds.size.width - 42) / 2
                            self.findWordsButtonContentView.frame.origin.x = 14
                            self.findWordsButtonContentView.frame.origin.y = self.view.bounds.size.height - 14 - 54
                            
                            self.findWordsButtonBackgroundView.bounds.size.width = (self.view.bounds.size.width - 42) / 2
                            self.findWordsButtonBackgroundView.frame.origin.x = 14
                            self.findWordsButtonBackgroundView.frame.origin.y = self.view.bounds.size.height - 14 - 54
                            
                        }
                    
                        self.searchTextLabel.bounds.size.width = self.findWordsButtonContentView.bounds.size.width - 35
                        self.searchTextLabel.frame.origin.x = 35
                        self.searchTextLabel.text = "SEARCH"
                        self.searchTextLabel.alpha = 1
                        self.findWordsButton.bounds.size = self.findWordsButtonContentView.bounds.size
                        self.findWordsButton.frame.origin.x = 0
                    
                        self.searchIconImageView.image = UIImage.init(named: "Search Icon")
                        self.searchIconImageView.bounds.size.width = 51
                        self.searchIconImageView.frame.origin.x = 0
                        self.searchIconImageView.alpha = 1
                    
                    }, completion: nil)
            
                UIView.animate(withDuration: 0.4, delay: 0.1, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut, animations:
                    {
                        
                        if (UIDevice.current.modelName == "iPhone X") || (UIDevice.current.modelName == "Simulator") {
                            
                            self.moreButtonContentView.frame.origin.x = 32 + self.findWordsButtonContentView.bounds.size.width
                            self.moreButtonBackgroundView.frame.origin.x = 32 + self.findWordsButtonContentView.bounds.size.width
                            
                        }
                        else {
                            
                            self.moreButtonContentView.frame.origin.x = 28 + self.moreButtonContentView.bounds.size.width
                            self.moreButtonBackgroundView.frame.origin.x = 28 + self.moreButtonBackgroundView.bounds.size.width
                            
                        }
                        
                    }, completion: nil)
            
                UIView.animate(withDuration: 0.4, delay: 0.15, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut, animations:
                    {
                        
                        if (UIDevice.current.modelName == "iPhone X") || (UIDevice.current.modelName == "Simulator") {
                            
                            self.wordsListBackgroundView.bounds.size.height = self.view.bounds.size.height - 148
                            self.wordsListBackgroundView.frame.origin.y = 44
                            self.wordsListScrollView.bounds.size.height = self.wordsListBackgroundView.bounds.size.height
                            self.wordsListScrollView.frame.origin.y = 0
                            
                        }
                        else {
                            
                            self.wordsListBackgroundView.bounds.size.height = self.view.bounds.size.height - 96
                            self.wordsListBackgroundView.frame.origin.y = 14
                            self.wordsListScrollView.bounds.size.height += 267
                            self.wordsListScrollView.frame.origin.y = 0
                            
                        }
                    
                        self.nothingHereLabel.bounds = self.wordsListBackgroundView.bounds
                        self.nothingHereLabel.frame.origin.x = 0
                        self.nothingHereLabel.frame.origin.y = 0
                    }, completion: nil)
            
                searchActivation = false
            }
        }
        findWordsButtonTouchedActivation = false
    }
    
    @objc func findWordsButtonDidTouchUpOutside() {
        if findWordsButtonTouchedActivation == true
        {
            self.view.bringSubviewToFront(wordsListBackgroundView)
            self.view.bringSubviewToFront(moreButtonBackgroundView)
            self.view.bringSubviewToFront(moreButtonContentView)
            self.view.bringSubviewToFront(findWordsButtonBackgroundView)
            self.view.bringSubviewToFront(findWordsButtonContentView)
            self.view.bringSubviewToFront(keyboardBackgroundView)
            UIView.animate(withDuration: 0.4, animations:
                {
                    self.findWordsButtonContentView.bounds.size.width += 8
                    self.findWordsButtonContentView.bounds.size.height += 4
                    self.findWordsButtonBackgroundView.bounds.size.width += 8
                    self.findWordsButtonBackgroundView.bounds.size.height += 4
                    self.searchIconImageView.frame.origin.x += 4
                    self.searchIconImageView.frame.origin.y += 2
                    self.searchTextLabel.frame.origin.x += 4
                    self.searchTextLabel.frame.origin.y += 2
                    self.searchIconImageView.alpha = 1
                    self.findWordsButtonContentView.alpha = 1
                    self.searchTextLabel.alpha = 1
                    self.findWordsButtonBackgroundView.alpha = 1
                })
            findWordsButtonTouchedActivation = false
        }
    }
    
    @objc func moreButtonDidTouchDown() {
        if (findWordsButtonTouchedActivation == false) && (moreButtonTouchedActivation == false)
        {
            self.view.bringSubviewToFront(moreButtonBackgroundView)
            self.view.bringSubviewToFront(moreButtonContentView)
            self.view.bringSubviewToFront(wordsListBackgroundView)
            self.view.bringSubviewToFront(findWordsButtonBackgroundView)
            self.view.bringSubviewToFront(findWordsButtonContentView)
            self.view.bringSubviewToFront(keyboardBackgroundView)
            UIView.animate(withDuration: 0.2, animations:
                {
                    if self.aboutActivation == false
                    {
                        self.moreButtonContentView.bounds.size.width -= 8
                        self.moreButtonContentView.bounds.size.height -= 4
                        self.moreButtonBackgroundView.bounds.size.width -= 8
                        self.moreButtonBackgroundView.bounds.size.height -= 4
                        self.aboutIconImageView.frame.origin.x -= 4
                        self.aboutIconImageView.frame.origin.y -= 2
                        self.aboutTextLabel.frame.origin.x -= 4
                        self.aboutTextLabel.frame.origin.y -= 2
                        self.moreButtonContentView.alpha = 0.7
                    }
                    self.moreButtonBackgroundView.alpha = 0
                    self.aboutIconImageView.alpha = 0
                })
            moreButtonTouchedActivation = true
        }
    }
    
    @objc func moreButtonDidTouchUpInside() {
        if (findWordsButtonTouchedActivation == false) && (moreButtonTouchedActivation == true)
        {
            self.view.bringSubviewToFront(wordsListBackgroundView)
            self.view.bringSubviewToFront(moreButtonBackgroundView)
            self.view.bringSubviewToFront(moreButtonContentView)
            self.view.bringSubviewToFront(findWordsButtonBackgroundView)
            self.view.bringSubviewToFront(findWordsButtonContentView)
            self.view.bringSubviewToFront(keyboardBackgroundView)
            
            UIView.animate(withDuration: 0.2, animations:
                {
                    self.moreButtonContentView.alpha = 1
                    self.moreButtonBackgroundView.alpha = 1
                })
            
            if aboutActivation == false
            {
                UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut, animations:
                    {
                    
                        self.findWordsButtonBackgroundView.frame.origin.x = 0 - self.findWordsButtonBackgroundView.bounds.size.width
                        self.findWordsButtonContentView.frame = self.findWordsButtonBackgroundView.frame
                    
                    }, completion: nil)
            
                UIView.animate(withDuration: 0.4, delay: 0.05, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut, animations:
                    {
                    
                        self.wordsListBackgroundView.frame.origin.y = 0 - self.wordsListBackgroundView.bounds.size.height
                    
                    }, completion: nil)
            
                UIView.animate(withDuration: 0.4, delay: 0.1, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut, animations:
                    {
                    
                        self.moreButtonContentView.bounds.size.width += 8
                        self.moreButtonContentView.bounds.size.height += 4
                        self.moreButtonBackgroundView.bounds.size.width += 8
                        self.moreButtonBackgroundView.bounds.size.height += 4
                        self.aboutIconImageView.frame.origin.x += 4
                        self.aboutIconImageView.frame.origin.y += 2
                        self.aboutTextLabel.frame.origin.x += 4
                        self.aboutTextLabel.frame.origin.y += 2
                        
                        if (UIDevice.current.modelName == "iPhone X") || (UIDevice.current.modelName == "Simulator") {
                            self.moreButtonBackgroundView.bounds.size.height = self.view.bounds.size.height - 78
                            self.moreButtonBackgroundView.bounds.size.width = self.view.bounds.size.width - 32
                            self.moreButtonBackgroundView.frame.origin.x = 16
                            self.moreButtonBackgroundView.frame.origin.y = 44
                        }
                        else {
                            self.moreButtonBackgroundView.bounds.size.height = self.view.bounds.size.height - 28
                            self.moreButtonBackgroundView.bounds.size.width = self.view.bounds.size.width - 28
                            self.moreButtonBackgroundView.frame.origin.x = 14
                            self.moreButtonBackgroundView.frame.origin.y = 14
                        }
                        
                        self.moreButtonContentView.bounds.size = self.moreButtonBackgroundView.bounds.size
                        self.moreButtonContentView.frame = self.moreButtonBackgroundView.frame
                        self.aboutIconImageView.bounds.size.width = 58
                        self.aboutIconImageView.frame.origin.x = 0
                        self.aboutIconImageView.image = UIImage.init(named: "Back Icon")
                        self.aboutIconImageView.alpha = 1
                        self.moreButton.bounds.size.width = self.moreButtonContentView.bounds.size.width
                        self.moreButton.frame.origin.x = 0
                        self.aboutTextLabel.frame.origin.x = (self.moreButtonContentView.bounds.size.width - self.aboutTextLabel.bounds.size.width) / 2
                    
                        self.aboutContentScrollView.bounds.size.height = self.moreButtonContentView.bounds.size.height - 57
                        self.aboutContentScrollView.bounds.size.width = self.moreButtonContentView.bounds.size.width - 44
                        self.aboutContentScrollView.frame.origin.x = 22
                        self.aboutContentScrollView.frame.origin.y = 57
                        self.aboutContentScrollView.contentSize.width = self.aboutContentScrollView.bounds.size.width
                        self.aboutContentScrollView.alpha = 1
                        self.aboutContentScrollView.contentOffset.y = 0
                    
                    }, completion: nil)
            
                    let pathForAboutBarron3500 = Bundle.main.path(forResource: "About Barron 3500", ofType: "txt")
                    let pathForAboutThisVersion = Bundle.main.path(forResource: "About This Version", ofType: "txt")
                    //let pathForOpenSource = Bundle.main.path(forResource: "Open Source", ofType: "txt")
                    let pathForContactUs = Bundle.main.path(forResource: "Contact Us", ofType: "txt")
            
                    let aboutBarron3500String = NSString(data: fileManager.contents(atPath: pathForAboutBarron3500!)!, encoding: String.Encoding.utf8.rawValue)!
                    let aboutThisVersionString = NSString(data: fileManager.contents(atPath: pathForAboutThisVersion!)!, encoding: String.Encoding.utf8.rawValue)!
                    //let openSourceString = NSString(data: fileManager.contents(atPath: pathForOpenSource!)!, encoding: String.Encoding.utf8.rawValue)!
                    let contactUsString = NSString(data: fileManager.contents(atPath: pathForContactUs!)!, encoding: String.Encoding.utf8.rawValue)!
            
                    aboutContentScrollView.addSubview(aboutBarron3500CaptionLable)
                    aboutContentScrollView.addSubview(aboutBarron3500ContentLabel)
                    aboutContentScrollView.addSubview(aboutThisVersionCaptionLabel)
                    aboutContentScrollView.addSubview(aboutThisVersionContentLabel)
                    aboutContentScrollView.addSubview(openSourceCaptionLabel)
                    aboutContentScrollView.addSubview(openSourceContentLabel)
                    aboutContentScrollView.addSubview(mainIconImageView)
                    aboutContentScrollView.addSubview(contactUsLabel)
            
                    aboutBarron3500CaptionLable.bounds.size.width = aboutContentScrollView.contentSize.width
                    aboutBarron3500CaptionLable.bounds.size.height = 25
                    aboutBarron3500CaptionLable.text = "ABOUT BARRON 3500"
                    aboutBarron3500CaptionLable.font = Bold21.font
                    aboutBarron3500CaptionLable.textColor = UIColor.white
                    aboutBarron3500CaptionLable.frame.origin.x = 0
                    aboutBarron3500CaptionLable.frame.origin.y = 0
            
                    aboutBarron3500ContentLabel.bounds.size.width = aboutContentScrollView.contentSize.width
                    aboutBarron3500ContentLabel.text = aboutBarron3500String as String
                    aboutBarron3500ContentLabel.font = Light17.font
                    aboutBarron3500ContentLabel.textColor = UIColor.white
                    aboutBarron3500ContentLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                    aboutBarron3500ContentLabel.numberOfLines = 0
                    aboutBarron3500ContentLabel.sizeToFit()
                    aboutBarron3500ContentLabel.frame.origin.x = 0
                    aboutBarron3500ContentLabel.frame.origin.y = aboutBarron3500CaptionLable.bounds.size.height + 3
            
                    aboutThisVersionCaptionLabel.bounds.size.width = aboutContentScrollView.contentSize.width
                    aboutThisVersionCaptionLabel.bounds.size.height = 25
                    aboutThisVersionCaptionLabel.text = "ABOUT THIS VERSION"
                    aboutThisVersionCaptionLabel.font = Bold21.font
                    aboutThisVersionCaptionLabel.textColor = UIColor.white
                    aboutThisVersionCaptionLabel.frame.origin.x = 0
                    aboutThisVersionCaptionLabel.frame.origin.y = aboutBarron3500ContentLabel.frame.origin.y + aboutBarron3500ContentLabel.bounds.size.height + 15
            
                    aboutThisVersionContentLabel.bounds.size.width = aboutContentScrollView.contentSize.width
                    aboutThisVersionContentLabel.text = aboutThisVersionString as String
                    aboutThisVersionContentLabel.font = Light17.font
                    aboutThisVersionContentLabel.textColor = UIColor.white
                    aboutThisVersionContentLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                    aboutThisVersionContentLabel.numberOfLines = 0
                    aboutThisVersionContentLabel.sizeToFit()
                    aboutThisVersionContentLabel.frame.origin.x = 0
                    aboutThisVersionContentLabel.frame.origin.y = aboutThisVersionCaptionLabel.frame.origin.y + aboutThisVersionCaptionLabel.bounds.size.height + 3
                
//                    openSourceCaptionLabel.bounds.size.width = aboutContentScrollView.contentSize.width
//                    openSourceCaptionLabel.bounds.size.height = 25
//                    openSourceCaptionLabel.text = "OPEN SOURCE"
//                    openSourceCaptionLabel.font = Bold21.font
//                    openSourceCaptionLabel.textColor = UIColor.white
//                    openSourceCaptionLabel.frame.origin.x = 0
//                    openSourceCaptionLabel.frame.origin.y = aboutThisVersionContentLabel.frame.origin.y + aboutThisVersionContentLabel.bounds.size.height + 15
//
//                    openSourceContentLabel.bounds.size.width = aboutContentScrollView.contentSize.width
//                    openSourceContentLabel.text = openSourceString as String
//                    openSourceContentLabel.font = Light17.font
//                    openSourceContentLabel.textColor = UIColor.white
//                    openSourceContentLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
//                    openSourceContentLabel.numberOfLines = 0
//                    openSourceContentLabel.sizeToFit()
//                    openSourceContentLabel.frame.origin.x = 0
//                    openSourceContentLabel.frame.origin.y = openSourceCaptionLabel.frame.origin.y + openSourceCaptionLabel.bounds.size.height + 3
            
                    mainIconImageView.bounds.size.width = aboutContentScrollView.bounds.size.width - 48
                    mainIconImageView.bounds.size.height = aboutContentScrollView.bounds.size.width / 2 - 24
                    mainIconImageView.backgroundColor = UIColor.clear
                    mainIconImageView.image = UIImage.init(named: "Main Icon")
                    mainIconImageView.frame.origin.x = 24
                    mainIconImageView.frame.origin.y = aboutThisVersionContentLabel.frame.origin.y + aboutThisVersionContentLabel.bounds.size.height + 80
            
                    contactUsLabel.bounds.size.width = self.aboutContentScrollView.contentSize.width
                    contactUsLabel.text = contactUsString as String
                    contactUsLabel.font = Light15.font
                    contactUsLabel.textAlignment = NSTextAlignment.center
                    contactUsLabel.textColor = UIColor.white
                    contactUsLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                    contactUsLabel.numberOfLines = 0
                    contactUsLabel.sizeToFit()
                    contactUsLabel.frame.origin.x = (aboutContentScrollView.contentSize.width - contactUsLabel.bounds.size.width) / 2
                    contactUsLabel.frame.origin.y = mainIconImageView.frame.origin.y + mainIconImageView.bounds.size.height + 80
            
                    aboutContentScrollView.contentSize.height = contactUsLabel.frame.origin.y + contactUsLabel.bounds.size.height + 20
            
                aboutActivation = true
            }
            else
            {
                UIView.animate(withDuration: 0.2, animations:
                    {
                        self.aboutContentScrollView.alpha = 0
                    })
                UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut, animations:
                    {
                        
                        if (UIDevice.current.modelName == "iPhone X") || (UIDevice.current.modelName == "Simulator") {
                            self.moreButtonBackgroundView.bounds.size.height = 54
                            self.moreButtonBackgroundView.bounds.size.width = (self.view.bounds.size.width - 48) / 2
                            self.moreButtonBackgroundView.frame.origin.x = 32 + self.moreButtonBackgroundView.bounds.size.width
                            self.moreButtonBackgroundView.frame.origin.y = self.view.bounds.size.height - 34 - 54
                        }
                        else {
                            self.moreButtonBackgroundView.bounds.size.height = 54
                            self.moreButtonBackgroundView.bounds.size.width = (self.view.bounds.size.width - 42) / 2
                            self.moreButtonBackgroundView.frame.origin.x = 28 + self.moreButtonBackgroundView.bounds.size.width
                            self.moreButtonBackgroundView.frame.origin.y = self.view.bounds.size.height - 14 - 54
                        }
                        
                        self.moreButtonContentView.bounds.size = self.moreButtonBackgroundView.bounds.size
                        self.moreButtonContentView.frame = self.moreButtonBackgroundView.frame
                            self.aboutIconImageView.bounds.size.width = 54
                            self.aboutIconImageView.frame.origin.x = 0
                            self.aboutIconImageView.image = UIImage.init(named: "About Icon")
                            self.aboutIconImageView.alpha = 1
                            self.moreButton.bounds.size.width = self.moreButtonContentView.bounds.size.width
                            self.moreButton.frame.origin.x = 0
                            self.aboutTextLabel.frame.origin.x = 37
                    }, completion: nil)
            
                UIView.animate(withDuration: 0.4, delay: 0.05, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut, animations:
                    {
                        if (UIDevice.current.modelName == "iPhone X") || (UIDevice.current.modelName == "Simulator") {
                            self.findWordsButtonBackgroundView.frame.origin.x = 16
                        }
                        else {
                            self.findWordsButtonBackgroundView.frame.origin.x = 14
                        }
                        
                        self.findWordsButtonContentView.frame = self.findWordsButtonBackgroundView.frame
                    }, completion: nil)
            
                UIView.animate(withDuration: 0.4, delay: 0.1, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut, animations:
                    {
                        
                        if (UIDevice.current.modelName == "iPhone X") || (UIDevice.current.modelName == "Simulator") {
                            self.wordsListBackgroundView.frame.origin.y = 44
                        }
                        else {
                            self.wordsListBackgroundView.frame.origin.y = 14
                        }
                        
                    }, completion: nil)
            
                aboutActivation = false
            }
        }
        moreButtonTouchedActivation = false
    }
    
    @objc func moreButtonDidTouchUpOutside() {
        if moreButtonTouchedActivation == true {
            self.view.bringSubviewToFront(wordsListBackgroundView)
            self.view.bringSubviewToFront(moreButtonBackgroundView)
            self.view.bringSubviewToFront(moreButtonContentView)
            self.view.bringSubviewToFront(findWordsButtonBackgroundView)
            self.view.bringSubviewToFront(findWordsButtonContentView)
            self.view.bringSubviewToFront(keyboardBackgroundView)
            UIView.animate(withDuration: 0.4, animations:
                {
                    if self.aboutActivation == false
                    {
                        self.moreButtonContentView.bounds.size.width += 8
                        self.moreButtonContentView.bounds.size.height += 4
                        self.moreButtonBackgroundView.bounds.size.width += 8
                        self.moreButtonBackgroundView.bounds.size.height += 4
                        self.aboutIconImageView.frame.origin.x += 4
                        self.aboutIconImageView.frame.origin.y += 2
                        self.aboutTextLabel.frame.origin.x += 4
                        self.aboutTextLabel.frame.origin.y += 2
                    }
                    self.moreButtonContentView.alpha = 1
                    self.moreButtonBackgroundView.alpha = 1
                    self.aboutIconImageView.alpha = 1
                })
            moreButtonTouchedActivation = false
        }
    }
    
    @objc func clearButtonDidTouchDown() {
        if (clearButtonTouchedActivation == false) && (deleteButtonTouchedActivation == false)
        {
            self.keyboardBackgroundView.bringSubviewToFront(clearButtonBackgroundView)
            self.keyboardBackgroundView.bringSubviewToFront(clearButtonContentView)
            self.keyboardBackgroundView.bringSubviewToFront(deleteButtonBackgroundView)
            self.keyboardBackgroundView.bringSubviewToFront(deleteButtonContentView)
            UIView.animate(withDuration: 0.15, animations:
                {
                    self.clearButtonContentView.bounds.size.width -= 8
                    self.clearButtonContentView.bounds.size.height -= 4
                    self.clearButtonBackgroundView.bounds.size.width -= 8
                    self.clearButtonBackgroundView.bounds.size.height -= 4
                    self.clearButtonTextLabel.frame.origin.x -= 4
                    self.clearButtonTextLabel.frame.origin.y -= 2
                    self.clearButtonContentView.alpha = 0.7
                    self.clearButtonTextLabel.alpha = 0
                    self.clearButtonBackgroundView.alpha = 0
                })
            clearButtonTouchedActivation = true
        }
    }
    
    @objc func clearButtonDidTouchUpInside() {
        if (clearButtonTouchedActivation == true) && (deleteButtonTouchedActivation == false)
        {
            self.keyboardBackgroundView.bringSubviewToFront(clearButtonBackgroundView)
            self.keyboardBackgroundView.bringSubviewToFront(clearButtonContentView)
            self.keyboardBackgroundView.bringSubviewToFront(deleteButtonBackgroundView)
            self.keyboardBackgroundView.bringSubviewToFront(deleteButtonContentView)
            UIView.animate(withDuration: 0.15, animations:
                {
                    self.clearButtonContentView.alpha = 1
                    self.clearButtonBackgroundView.alpha = 1
                    
                })
            if clearActivation == false
            {
                UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut, animations:
                    {
                        self.deleteButtonBackgroundView.frame.origin.x = self.keyboardBackgroundView.bounds.size.width
                        self.deleteButtonContentView.frame.origin.x = self.keyboardBackgroundView.bounds.size.width
                    }, completion: nil)
                
                UIView.animate(withDuration: 0.3, delay: 0.05, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut, animations:
                    {
                    
                        self.clearButtonContentView.bounds.size.width += 8
                        self.clearButtonContentView.bounds.size.height += 4
                        self.clearButtonBackgroundView.bounds.size.width += 8
                        self.clearButtonBackgroundView.bounds.size.height += 4
                        self.clearButtonTextLabel.frame.origin.x += 4
                        self.clearButtonTextLabel.frame.origin.y += 2
                        
                        self.clearButtonBackgroundView.bounds.size.width = self.keyboardBackgroundView.bounds.size.width - 28
                        self.clearButtonBackgroundView.frame.origin.x = 14
                        
                        self.clearButtonContentView.bounds = self.clearButtonBackgroundView.bounds
                        self.clearButtonContentView.frame = self.clearButtonBackgroundView.frame
                    
                        self.clearButton.bounds = self.clearButtonContentView.bounds
                        self.clearButton.frame.origin.x = 0
                        self.clearButton.frame.origin.y = 0
                        
                        self.clearButtonTextLabel.frame.origin.x = (self.clearButtonContentView.bounds.size.width - self.clearButtonTextLabel.bounds.size.width) / 2
                        self.clearButtonTextLabel.frame.origin.y = (self.clearButtonContentView.bounds.size.height - self.clearButtonTextLabel.bounds.size.height) / 2
                        self.clearButtonTextLabel.text = "CLEAR ALL"
                        self.clearButtonTextLabel.alpha = 1
                    
                    }, completion: nil)
                clearActivation = true
            }
            else
            {
                UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut, animations:
                    {
                        self.clearButtonContentView.bounds.size.width += 8
                        self.clearButtonContentView.bounds.size.height += 4
                        self.clearButtonBackgroundView.bounds.size.width += 8
                        self.clearButtonBackgroundView.bounds.size.height += 4
                        self.clearButtonTextLabel.frame.origin.x += 4
                        self.clearButtonTextLabel.frame.origin.y += 2
                        
                        self.clearButtonBackgroundView.bounds.size.width = (self.keyboardBackgroundView.bounds.size.width - 42) / 2
                        self.clearButtonBackgroundView.frame.origin.x = 14
                        
                        self.clearButtonContentView.bounds = self.clearButtonBackgroundView.bounds
                        self.clearButtonContentView.frame = self.clearButtonBackgroundView.frame
                        
                        self.clearButton.bounds = self.clearButtonContentView.bounds
                        self.clearButton.frame.origin.x = 0
                        self.clearButton.frame.origin.y = 0
                        
                        self.clearButtonTextLabel.frame.origin.x = (self.clearButtonContentView.bounds.size.width - self.clearButtonTextLabel.bounds.size.width) / 2
                        self.clearButtonTextLabel.frame.origin.y = (self.clearButtonContentView.bounds.size.height - self.clearButtonTextLabel.bounds.size.height) / 2
                        self.clearButtonTextLabel.text = "CLEAR"
                        self.clearButtonTextLabel.alpha = 1
                        
                    }, completion: nil)
            
                UIView.animate(withDuration: 0.3, delay: 0.05, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut, animations:
                    {
                        self.deleteButtonBackgroundView.frame.origin.x = 28 + self.deleteButtonBackgroundView.bounds.size.width
                        self.deleteButtonContentView.frame.origin.x = self.deleteButtonBackgroundView.frame.origin.x
                    }, completion: nil)
                
                if searchString != ""
                {
                    UIView.animate(withDuration: 0, animations:
                        {
                            self.searchTextLabel.text = "ENTER WORDS HERE"
                            for index in 0...373
                            {
                                self.barron3500UnlistedBackgroundViewArray[index].alpha = 0
                            }
                            self.nothingHereLabel.alpha = 0
                    })
                    
                    UIView.animate(withDuration: 0.001, delay: 0.1, options: [], animations:
                        {
                            self.wordsListScrollView.contentOffset.y = 0
                            self.wordsListScrollView.contentSize.height = self.wordsListScrollView.contentSize.width / 4 * 7
                            for index in 0...373 {
                                self.barron3500UnlistedBackgroundViewArray[index].backgroundColor = self.blueLevel3
                                self.barron3500UnlistedBackgroundViewArray[index].bounds.size.height = 62
                                self.barron3500UnlistedBackgroundViewArray[index].bounds.size.width = self.wordsListScrollView.contentSize.width - 8
                                self.barron3500UnlistedBackgroundViewArray[index].frame.origin.y = CGFloat(4 * (index + 1) + index * 62)
                                
                                self.barron3500UnlistedWordsLabelArray[index].font = self.Medium22.font
                                self.barron3500UnlistedWordsLabelArray[index].bounds.size.height = 25
                                self.barron3500UnlistedWordsLabelArray[index].bounds.size.width = self.barron3500UnlistedBackgroundViewArray[index].bounds.size.width - 32
                                self.barron3500UnlistedWordsLabelArray[index].frame.origin.x = 16
                                self.barron3500UnlistedWordsLabelArray[index].frame.origin.y = 8
                                self.barron3500UnlistedWordsLabelArray[index].textAlignment = NSTextAlignment.left
                                
                                self.barron3500UnlistedTranslationsLabelArray[index].bounds.size.height = 21
                                self.barron3500UnlistedTranslationsLabelArray[index].bounds.size.width = self.barron3500UnlistedWordsLabelArray[index].bounds.size.width
                                self.barron3500UnlistedTranslationsLabelArray[index].frame.origin.x = 16
                                self.barron3500UnlistedTranslationsLabelArray[index].frame.origin.y = 33
                                self.barron3500UnlistedTranslationsLabelArray[index].textAlignment = NSTextAlignment.left
                                
                                self.spesificMeaningActivation = false
                            }
                    }, completion: nil)
                    
                    UIView.animate(withDuration: 0.1, delay: 0.101, options: .curveLinear, animations:
                        {
                            for index in 0...25
                            {
                                self.wordsScrollViewQuickAccessButtonArray[index].alpha = 1
                            }
                    }, completion: nil)
                    
                    searchWordsArray = [String]()
                    searchTranslationsArray = [String]()
                    searchExplainationsArray = [String]()
                    searchClassesArray = [String]()
                    searchCount = 0
                    searchString = ""
                }
                
                clearActivation = false
            }
            clearButtonTouchedActivation = false
        }
    }
    
    @objc func clearButtonDidTouchUpOutside() {
        if clearButtonTouchedActivation == true && deleteButtonTouchedActivation == false
        {
            self.keyboardBackgroundView.bringSubviewToFront(clearButtonBackgroundView)
            self.keyboardBackgroundView.bringSubviewToFront(clearButtonContentView)
            self.keyboardBackgroundView.bringSubviewToFront(deleteButtonBackgroundView)
            self.keyboardBackgroundView.bringSubviewToFront(deleteButtonContentView)
            UIView.animate(withDuration: 0.3, animations:
                {
                    self.clearButtonContentView.bounds.size.width += 8
                    self.clearButtonContentView.bounds.size.height += 4
                    self.clearButtonBackgroundView.bounds.size.width += 8
                    self.clearButtonBackgroundView.bounds.size.height += 4
                    self.clearButtonTextLabel.frame.origin.x += 4
                    self.clearButtonTextLabel.frame.origin.y += 2
                    self.clearButtonTextLabel.alpha = 1
                    self.clearButtonContentView.alpha = 1
                    self.clearButtonBackgroundView.alpha = 1
                })
            clearButtonTouchedActivation = false
        }
    }
    
    @objc func deleteButtonDidTouchDown() {
        if (clearButtonTouchedActivation == false) && (deleteButtonTouchedActivation == false)
        {
            self.keyboardBackgroundView.bringSubviewToFront(deleteButtonBackgroundView)
            self.keyboardBackgroundView.bringSubviewToFront(deleteButtonContentView)
            self.keyboardBackgroundView.bringSubviewToFront(clearButtonBackgroundView)
            self.keyboardBackgroundView.bringSubviewToFront(clearButtonContentView)
            UIView.animate(withDuration: 0.03, animations:
                {
                    self.deleteButtonContentView.bounds.size.width -= 8
                    self.deleteButtonContentView.bounds.size.height -= 4
                    self.deleteButtonBackgroundView.bounds.size.width -= 8
                    self.deleteButtonBackgroundView.bounds.size.height -= 4
                    self.deleteButtonTextLabel.frame.origin.x -= 4
                    self.deleteButtonTextLabel.frame.origin.y -= 2
                    self.deleteButtonContentView.alpha = 0.7
                    self.deleteButtonBackgroundView.alpha = 0
                })
            if searchString != ""
            {
                searchString.remove(at: searchString.index(before: searchString.endIndex))
            }
            if searchString != ""
            {
                searchTextLabel.text = searchString
                searchLevel2()
            }
            else
            {
                UIView.animate(withDuration: 0, animations:
                    {
                        self.searchTextLabel.text = "ENTER WORDS HERE"
                        for index in 0...373
                        {
                            self.barron3500UnlistedBackgroundViewArray[index].alpha = 0
                        }
                })
            
                UIView.animate(withDuration: 0.001, delay: 0.1, options: [], animations:
                    {
                        for index in 0...373 {
                            self.barron3500UnlistedBackgroundViewArray[index].backgroundColor = self.blueLevel3
                            self.barron3500UnlistedBackgroundViewArray[index].bounds.size.height = 62
                            self.barron3500UnlistedBackgroundViewArray[index].bounds.size.width = self.wordsListScrollView.contentSize.width - 8
                            self.barron3500UnlistedBackgroundViewArray[index].frame.origin.y = CGFloat(4 * (index + 1) + index * 62)
                            
                            self.barron3500UnlistedWordsLabelArray[index].font = self.Medium22.font
                            self.barron3500UnlistedWordsLabelArray[index].bounds.size.height = 25
                            self.barron3500UnlistedWordsLabelArray[index].bounds.size.width = self.barron3500UnlistedBackgroundViewArray[index].bounds.size.width - 32
                            self.barron3500UnlistedWordsLabelArray[index].frame.origin.x = 16
                            self.barron3500UnlistedWordsLabelArray[index].frame.origin.y = 8
                            self.barron3500UnlistedWordsLabelArray[index].textAlignment = NSTextAlignment.left
                            
                            self.barron3500UnlistedTranslationsLabelArray[index].bounds.size.height = 21
                            self.barron3500UnlistedTranslationsLabelArray[index].bounds.size.width = self.barron3500UnlistedWordsLabelArray[index].bounds.size.width
                            self.barron3500UnlistedTranslationsLabelArray[index].frame.origin.x = 16
                            self.barron3500UnlistedTranslationsLabelArray[index].frame.origin.y = 33
                            self.barron3500UnlistedTranslationsLabelArray[index].textAlignment = NSTextAlignment.left
                            
                            self.wordsListScrollView.contentSize.height = self.wordsListScrollView.bounds.size.width / 4 * 7
                            self.wordsListScrollView.contentOffset.y = 0
                            
                            self.spesificMeaningActivation = false
                        }
                    }, completion: nil)
                
                UIView.animate(withDuration: 0.1, delay: 0.101, options: .curveLinear, animations:
                    {
                        for index in 0...25
                        {
                            self.wordsScrollViewQuickAccessButtonArray[index].alpha = 1
                        }
                    }, completion: nil)
                
                searchWordsArray = [String]()
                searchTranslationsArray = [String]()
                searchExplainationsArray = [String]()
                searchClassesArray = [String]()
                searchCount = 0
            }
        //NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: #selector(FindWordsScreenViewController.deleteButtonLongPressTimerPerform), userInfo: nil, repeats: true)
            deleteButtonTouchedActivation = true
        }
    }
    
    @objc func deleteButtonDidTouchUpInside() {
        if (deleteButtonTouchedActivation == true) && (clearButtonTouchedActivation == false)
        {
            //deleteButtonLongPressTimer.invalidate()
            self.keyboardBackgroundView.bringSubviewToFront(clearButtonBackgroundView)
            self.keyboardBackgroundView.bringSubviewToFront(clearButtonContentView)
            self.keyboardBackgroundView.bringSubviewToFront(deleteButtonBackgroundView)
            self.keyboardBackgroundView.bringSubviewToFront(deleteButtonContentView)
            UIView.animate(withDuration: 0.03, animations:
                {
                    self.deleteButtonContentView.bounds.size.width += 8
                    self.deleteButtonContentView.bounds.size.height += 4
                    self.deleteButtonBackgroundView.bounds.size.width += 8
                    self.deleteButtonBackgroundView.bounds.size.height += 4
                    self.deleteButtonTextLabel.frame.origin.x += 4
                    self.deleteButtonTextLabel.frame.origin.y += 2
                    self.deleteButtonBackgroundView.alpha = 1
                    self.deleteButtonContentView.alpha = 1
                })
            deleteButtonTouchedActivation = false
        }
    }
    
    @objc func deleteButtonDidTouchUpOutside() {
        if (deleteButtonTouchedActivation == true) && (clearButtonTouchedActivation == false)
        {
            //deleteButtonLongPressTimer.invalidate()
            self.keyboardBackgroundView.bringSubviewToFront(clearButtonBackgroundView)
            self.keyboardBackgroundView.bringSubviewToFront(clearButtonContentView)
            self.keyboardBackgroundView.bringSubviewToFront(deleteButtonBackgroundView)
            self.keyboardBackgroundView.bringSubviewToFront(deleteButtonContentView)
            UIView.animate(withDuration: 0.3, animations:
                {
                    self.deleteButtonContentView.bounds.size.width += 8
                    self.deleteButtonContentView.bounds.size.height += 4
                    self.deleteButtonBackgroundView.bounds.size.width += 8
                    self.deleteButtonBackgroundView.bounds.size.height += 4
                    self.deleteButtonTextLabel.frame.origin.x += 4
                    self.deleteButtonTextLabel.frame.origin.y += 2
                    self.deleteButtonBackgroundView.alpha = 1
                    self.deleteButtonContentView.alpha = 1
                })
            deleteButtonTouchedActivation = false
        }
    }
    
    @objc func keyboardKeyDidTouchDown(_ touchedKey:UIButton) {
        if keyboardKeyTouchedActication == false {
            self.view.bringSubviewToFront(keyboardKeyTouchDownShownLabel)
            touchedKey.backgroundColor = UIColor.white
            
            keyboardKeyTouchDownShownLabel.bounds = touchedKey.bounds
            keyboardKeyTouchDownShownLabel.bounds.size.height = 45
            keyboardKeyTouchDownShownLabel.backgroundColor = UIColor.white
            keyboardKeyTouchDownShownLabel.font = Medium30.font
            keyboardKeyTouchDownShownLabel.text = touchedKey.currentTitle
            keyboardKeyTouchDownShownLabel.textAlignment = NSTextAlignment.center
            keyboardKeyTouchDownShownLabel.textColor = blueLevel4
            keyboardKeyTouchDownShownLabel.alpha = 1
            keyboardKeyTouchDownShownLabel.frame.origin.x = touchedKey.frame.origin.x
            keyboardKeyTouchDownShownLabel.frame.origin.y = touchedKey.frame.origin.y - keyboardKeyTouchDownShownLabel.bounds.size.height + keyboardBackgroundView.frame.origin.y
            keyboardKeyTouchedActication = true
        }
    }
    
    @objc func keyboardKeyDidTouchUpInside(_ touchedKey:UIButton) {
        touchedKey.backgroundColor = self.blueLevel1
        keyboardKeyTouchDownShownLabel.alpha = 0
        if searchWordsArray != [String]()
        {
            searchString += (touchedKey.currentTitle?.lowercased())!
            searchLevel2()
        }
        else
        {
            UIView.animate(withDuration: 0.1, animations:
                {
                    for index in 0...25
                    {
                        self.wordsScrollViewQuickAccessButtonArray[index].alpha = 0
                    }
                })
            
            UIView.animate(withDuration: 0.01, delay: 0.1, options: .curveLinear, animations:
                {
                    self.wordsListScrollView.contentOffset.y = 0
                }, completion: nil)
            UIView.animate(withDuration: 0.09, delay: 0.11, options: .curveLinear, animations:
                {
                    self.wordsListScrollView.contentOffset.y = 0
                    self.searchLevel1(touchedKey)
                }, completion: nil)
        }
        searchTextLabel.text = searchString
        keyboardKeyTouchedActication = false
    }
    
    @objc func keyboardKeyDidTouchUpOutside(_ touchedKey:UIButton) {
        touchedKey.backgroundColor = self.blueLevel1
        keyboardKeyTouchDownShownLabel.alpha = 0
        keyboardKeyTouchedActication = false
    }
    
    @objc func keyboardBackgroundButtonDidTouchDown() {
        if clearActivation == true
        {
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut, animations:
                {
                    self.clearButtonBackgroundView.bounds.size.width = (self.keyboardBackgroundView.bounds.size.width - 42) / 2
                    self.clearButtonBackgroundView.frame.origin.x = 14
                    
                    self.clearButtonContentView.bounds = self.clearButtonBackgroundView.bounds
                    self.clearButtonContentView.frame = self.clearButtonBackgroundView.frame
                    
                    self.clearButton.bounds = self.clearButtonContentView.bounds
                    self.clearButton.frame.origin.x = 0
                    self.clearButton.frame.origin.y = 0
                    
                    self.clearButtonTextLabel.frame.origin.x = (self.clearButtonContentView.bounds.size.width - self.clearButtonTextLabel.bounds.size.width) / 2
                    self.clearButtonTextLabel.frame.origin.y = (self.clearButtonContentView.bounds.size.height - self.clearButtonTextLabel.bounds.size.height) / 2
                    self.clearButtonTextLabel.text = "CLEAR"
                    self.clearButtonTextLabel.alpha = 1
                    
                }, completion: nil)
            
            UIView.animate(withDuration: 0.3, delay: 0.05, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut, animations:
                {
                    self.deleteButtonBackgroundView.frame.origin.x = 28 + self.deleteButtonBackgroundView.bounds.size.width
                    self.deleteButtonContentView.frame.origin.x = self.deleteButtonBackgroundView.frame.origin.x
                    self.deleteButtonBackgroundView.alpha = 1
                    self.deleteButtonContentView.alpha = 1
                    
                }, completion: nil)
            clearActivation = false
        }
    }
    
    @objc func spesificMeaningButtonDidTouchDown(touchedButton:UIButton) {
        if (self.wordsListScrollView.isDragging == false) && (self.wordsListScrollView.isDecelerating == false) && (self.wordsListScrollView.isZoomBouncing == false) {
            if (self.wordsListScrollView.contentOffset.y >= 0.0) || (self.wordsListScrollView.contentOffset.y <= wordsListScrollView.contentSize.height - wordsListScrollView.bounds.size.height) {
                if barron3500UnlistedBackgroundViewArray[touchedButton.tag - 40000].bounds.size.height == 62 {
                    UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut, animations:
                        {
                            if (self.spesificMeaningtag != 0) && (self.barron3500UnlistedBackgroundViewArray[self.spesificMeaningtag - 40000].backgroundColor == self.blueLevel4)
                                {
                                    self.barron3500UnlistedWordsLabelArray[self.spesificMeaningtag - 40000].alpha = 0
                                }
                            self.barron3500UnlistedTranslationsLabelArray[touchedButton.tag - 40000].sizeToFit()
                            self.barron3500UnlistedTranslationsLabelArray[touchedButton.tag - 40000].bounds.size.height = 21
                            self.barron3500UnlistedTranslationsLabelArray[touchedButton.tag - 40000].frame.origin.x = 16
                            self.barron3500UnlistedTranslationsLabelArray[touchedButton.tag - 40000].frame.origin.y = 33
                            
                            self.barron3500UnlistedWordsLabelArray[touchedButton.tag - 40000].alpha = 0
                            self.wordsListScrollView.isScrollEnabled = false
                            self.barron3500UnlistedBackgroundViewArray[touchedButton.tag - 40000].backgroundColor = self.blueLevel4
                            if self.searchActivation == true
                            {
                                self.searchIconImageView.alpha = 0
                                self.searchTextLabel.alpha = 0
                            }
                        }, completion: nil)
                }
                else {
                    UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut, animations:
                        {
                            self.barron3500UnlistedWordsLabelArray[touchedButton.tag - 40000].alpha = 0
                            self.wordsListScrollView.isScrollEnabled = false
                            if self.searchActivation == true
                            {
                                self.searchIconImageView.alpha = 0
                                self.searchTextLabel.alpha = 0
                            }
                        }, completion: nil)
                }
            }
        }
    }
    
    @objc func spesificMeaningButtonDidTouchUpOutside(touchedButton:UIButton) {
        if barron3500UnlistedBackgroundViewArray[touchedButton.tag - 40000].bounds.size.height == 62 {
            self.wordsListScrollView.isScrollEnabled = true
            UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut, animations:
                {
                    if self.spesificMeaningtag != 0 {
                        self.barron3500UnlistedWordsLabelArray[self.spesificMeaningtag - 40000].alpha = 1
                    }

                    self.barron3500UnlistedWordsLabelArray[touchedButton.tag - 40000].alpha = 1
                    self.barron3500UnlistedTranslationsLabelArray[touchedButton.tag - 40000].bounds.size.width = self.barron3500UnlistedBackgroundViewArray[touchedButton.tag - 40000].bounds.size.width - 32
                    self.barron3500UnlistedTranslationsLabelArray[touchedButton.tag - 40000].frame.origin.x = 16
                    self.barron3500UnlistedBackgroundViewArray[touchedButton.tag - 40000].backgroundColor = self.blueLevel3
                    if self.searchActivation == true {
                        self.searchIconImageView.alpha = 1
                        self.searchTextLabel.alpha = 1
                    }
                }, completion: nil)
        }
        else {
            self.wordsListScrollView.isScrollEnabled = true
            UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut, animations:
                {
                    self.barron3500UnlistedWordsLabelArray[touchedButton.tag - 40000].alpha = 1
                    if self.searchActivation == true {
                        self.searchIconImageView.alpha = 1
                        self.searchTextLabel.alpha = 1
                    }
            }, completion: nil)
        }
        //spesificMeaningTouchedActivation = false
    }
    
    @objc func spesificMeaningButtonDidTouchUpInside(touchedButton:UIButton) {
        let originy = self.barron3500UnlistedBackgroundViewArray[touchedButton.tag - 40000].frame.origin.y
        if spesificMeaningActivation == false {
            spesificMeaningtag = touchedButton.tag
            
            barron3500UnlistedWordsLabelArray[touchedButton.tag - 40000].font = Semibold29.font
            barron3500UnlistedWordsLabelArray[touchedButton.tag - 40000].sizeToFit()
            barron3500UnlistedWordsLabelArray[touchedButton.tag - 40000].bounds.size.height = 35
            barron3500UnlistedWordsLabelArray[touchedButton.tag - 40000].textAlignment = NSTextAlignment.center
            barron3500UnlistedWordsLabelArray[touchedButton.tag - 40000].center.x = barron3500UnlistedBackgroundViewArray[touchedButton.tag - 40000].center.x
            barron3500UnlistedWordsLabelArray[touchedButton.tag - 40000].frame.origin.y = 16
            
            UIView.animate(withDuration: 0.6, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut, animations:
                {
                    self.barron3500UnlistedWordsLabelArray[touchedButton.tag - 40000].alpha = 1
                }, completion: nil)
            
            UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut, animations:
                {
                    self.barron3500UnlistedTranslationsLabelArray[touchedButton.tag - 40000].center.x = self.barron3500UnlistedWordsLabelArray[touchedButton.tag - 40000].center.x
                    self.barron3500UnlistedTranslationsLabelArray[touchedButton.tag - 40000].frame.origin.y = 51
                    
                    self.barron3500UnlistedClassesLabelArray[touchedButton.tag - 40000].alpha = 1
                    self.barron3500UnlistedExplainationsLabelArray[touchedButton.tag - 40000].alpha = 1
                    self.barron3500UnlistedExplainationsLabelArray[touchedButton.tag - 40000].sizeToFit()
                    
                    self.barron3500UnlistedBackgroundViewArray[touchedButton.tag - 40000].bounds.size.height = self.barron3500UnlistedExplainationsLabelArray[touchedButton.tag - 40000].bounds.size.height + 121
                    self.barron3500UnlistedBackgroundViewArray[touchedButton.tag - 40000].frame.origin.y = originy
                    
                    touchedButton.bounds.size = self.barron3500UnlistedBackgroundViewArray[touchedButton.tag - 40000].bounds.size
                    touchedButton.frame.origin.x = 0
                    touchedButton.frame.origin.y = 0
                    
                    for index in touchedButton.tag - 40000 + 1...373
                    {
                        self.barron3500UnlistedBackgroundViewArray[index].frame.origin.y += (self.barron3500UnlistedExplainationsLabelArray[touchedButton.tag - 40000].bounds.size.height + 121) - 62
                    }
                    
                    self.wordsListScrollView.contentSize.height += (self.barron3500UnlistedExplainationsLabelArray[touchedButton.tag - 40000].bounds.size.height + 121) - 62
                    self.wordsListScrollView.isScrollEnabled = true
                    
                    
                    if self.wordsListScrollView.contentOffset.y > self.barron3500UnlistedBackgroundViewArray[touchedButton.tag - 40000].frame.origin.y
                    {
                        self.wordsListScrollView.contentOffset.y = self.barron3500UnlistedBackgroundViewArray[touchedButton.tag - 40000].frame.origin.y - 4
                    }

                    if self.searchActivation == false {
                        if (self.wordsListScrollView.contentOffset.y + self.wordsListScrollView.bounds.size.height) < (self.barron3500UnlistedBackgroundViewArray[touchedButton.tag - 40000].frame.origin.y + self.barron3500UnlistedBackgroundViewArray[touchedButton.tag - 40000].bounds.size.height)
                        {
                            self.wordsListScrollView.contentOffset.y = self.barron3500UnlistedBackgroundViewArray[touchedButton.tag - 40000].frame.origin.y + self.barron3500UnlistedBackgroundViewArray[touchedButton.tag - 40000].bounds.size.height - self.wordsListScrollView.bounds.size.height + 4
                        }
                    }
                    
                    
                }, completion: nil)
            
            if searchActivation == true {
                findWordsButtonTouchedActivation = true
                findWordsButtonDidTouchUpInside()
            }
            spesificMeaningActivation = true
            
        }
        else {
            if touchedButton.tag == spesificMeaningtag {
                
                self.barron3500UnlistedWordsLabelArray[touchedButton.tag - 40000].font = self.Medium22.font
                self.barron3500UnlistedWordsLabelArray[touchedButton.tag - 40000].bounds.size.height = 25
                self.barron3500UnlistedWordsLabelArray[touchedButton.tag - 40000].bounds.size.width = self.barron3500UnlistedBackgroundViewArray[touchedButton.tag - 40000].bounds.size.width - 32
                self.barron3500UnlistedWordsLabelArray[touchedButton.tag - 40000].frame.origin.x = 16
                self.barron3500UnlistedWordsLabelArray[touchedButton.tag - 40000].frame.origin.y = 8
                self.barron3500UnlistedWordsLabelArray[touchedButton.tag - 40000].textAlignment = NSTextAlignment.left
                
                UIView.animate(withDuration: 0.6, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut, animations:
                    {
                        self.barron3500UnlistedWordsLabelArray[touchedButton.tag - 40000].alpha = 1
                    }, completion: nil)
                
                UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut, animations:
                    {
                        
                        self.barron3500UnlistedTranslationsLabelArray[touchedButton.tag - 40000].bounds.size.height = 21
                        self.barron3500UnlistedTranslationsLabelArray[touchedButton.tag - 40000].bounds.size.width = self.barron3500UnlistedWordsLabelArray[touchedButton.tag - 40000].bounds.size.width
                        self.barron3500UnlistedTranslationsLabelArray[touchedButton.tag - 40000].frame.origin.x = 16
                        self.barron3500UnlistedTranslationsLabelArray[touchedButton.tag - 40000].frame.origin.y = 33
                        self.barron3500UnlistedTranslationsLabelArray[touchedButton.tag - 40000].textAlignment = NSTextAlignment.left
                        
                        self.barron3500UnlistedClassesLabelArray[touchedButton.tag - 40000].alpha = 0
                        self.barron3500UnlistedExplainationsLabelArray[touchedButton.tag - 40000].alpha = 0
                        
                        self.barron3500UnlistedBackgroundViewArray[touchedButton.tag - 40000].bounds.size.height = 62
                        self.barron3500UnlistedBackgroundViewArray[touchedButton.tag - 40000].frame.origin.y = originy
                        
                        touchedButton.bounds.size = self.barron3500UnlistedBackgroundViewArray[touchedButton.tag - 40000].bounds.size
                        touchedButton.frame.origin.x = 0
                        touchedButton.frame.origin.y = 0
                        
                        for index in touchedButton.tag - 40000 + 1...373
                        {
                            self.barron3500UnlistedBackgroundViewArray[index].frame.origin.y -= self.barron3500UnlistedExplainationsLabelArray[touchedButton.tag - 40000].bounds.size.height + 121 - 62
                        }
                        
                        self.wordsListScrollView.contentSize.height -= self.barron3500UnlistedExplainationsLabelArray[touchedButton.tag - 40000].bounds.size.height + 121 - 62
                        self.wordsListScrollView.isScrollEnabled = true
                        
                        if self.searchActivation == true {
                            self.searchTextLabel.alpha = 1
                            self.searchIconImageView.alpha = 1
                        }
                        
                }, completion: nil)
                
                UIView.animate(withDuration: 0.3, delay: 0.2, options: [], animations:
                    {
                        self.barron3500UnlistedBackgroundViewArray[touchedButton.tag - 40000].backgroundColor = self.blueLevel3
                    }, completion: nil)
                
                spesificMeaningActivation = false
            }
            else {
                
                let tempForPreviousOriginalY = self.barron3500UnlistedBackgroundViewArray[self.spesificMeaningtag - 40000].frame.origin.y
                let tempForNowOriginalY = self.barron3500UnlistedBackgroundViewArray[touchedButton.tag - 40000].frame.origin.y
                
                self.barron3500UnlistedWordsLabelArray[touchedButton.tag - 40000].font = self.Semibold29.font
                self.barron3500UnlistedWordsLabelArray[touchedButton.tag - 40000].sizeToFit()
                self.barron3500UnlistedWordsLabelArray[touchedButton.tag - 40000].bounds.size.height = 35
                self.barron3500UnlistedWordsLabelArray[touchedButton.tag - 40000].textAlignment = NSTextAlignment.center
                self.barron3500UnlistedWordsLabelArray[touchedButton.tag - 40000].center.x = self.barron3500UnlistedBackgroundViewArray[touchedButton.tag - 40000].center.x
                self.barron3500UnlistedWordsLabelArray[touchedButton.tag - 40000].frame.origin.y = 16
                
                self.barron3500UnlistedWordsLabelArray[self.spesificMeaningtag - 40000].font = self.Medium22.font
                self.barron3500UnlistedWordsLabelArray[self.spesificMeaningtag - 40000].bounds.size.height = 25
                self.barron3500UnlistedWordsLabelArray[self.spesificMeaningtag - 40000].bounds.size.width = self.barron3500UnlistedBackgroundViewArray[touchedButton.tag - 40000].bounds.size.width - 32
                self.barron3500UnlistedWordsLabelArray[self.spesificMeaningtag - 40000].frame.origin.x = 16
                self.barron3500UnlistedWordsLabelArray[self.spesificMeaningtag - 40000].frame.origin.y = 8
                self.barron3500UnlistedWordsLabelArray[self.spesificMeaningtag - 40000].textAlignment = NSTextAlignment.left
                
                UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut, animations:
                    {
                        self.barron3500UnlistedWordsLabelArray[touchedButton.tag - 40000].alpha = 1
                        self.barron3500UnlistedWordsLabelArray[self.spesificMeaningtag - 40000].alpha = 1
                    }, completion: nil)
                
                UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseInOut, animations:
                    {
                        
                        self.barron3500UnlistedTranslationsLabelArray[touchedButton.tag - 40000].center.x = self.barron3500UnlistedWordsLabelArray[touchedButton.tag - 40000].center.x
                        self.barron3500UnlistedTranslationsLabelArray[touchedButton.tag - 40000].frame.origin.y = 51
                        
                        self.barron3500UnlistedTranslationsLabelArray[self.spesificMeaningtag - 40000].bounds.size.height = 21
                        self.barron3500UnlistedTranslationsLabelArray[self.spesificMeaningtag - 40000].bounds.size.width = self.barron3500UnlistedWordsLabelArray[self.spesificMeaningtag - 40000].bounds.size.width
                        self.barron3500UnlistedTranslationsLabelArray[self.spesificMeaningtag - 40000].frame.origin.x = 16
                        self.barron3500UnlistedTranslationsLabelArray[self.spesificMeaningtag - 40000].frame.origin.y = 33
                        self.barron3500UnlistedTranslationsLabelArray[self.spesificMeaningtag - 40000].textAlignment = NSTextAlignment.left
                        
                        self.barron3500UnlistedClassesLabelArray[touchedButton.tag - 40000].alpha = 1
                        self.barron3500UnlistedExplainationsLabelArray[touchedButton.tag - 40000].alpha = 1
                        self.barron3500UnlistedExplainationsLabelArray[touchedButton.tag - 40000].sizeToFit()
                        self.barron3500UnlistedClassesLabelArray[self.spesificMeaningtag - 40000].alpha = 0
                        self.barron3500UnlistedExplainationsLabelArray[self.spesificMeaningtag - 40000].alpha = 0
                        
                        self.barron3500UnlistedBackgroundViewArray[touchedButton.tag - 40000].bounds.size.height = self.barron3500UnlistedExplainationsLabelArray[touchedButton.tag - 40000].bounds.size.height + 121
                        self.barron3500UnlistedBackgroundViewArray[touchedButton.tag - 40000].frame.origin.y = tempForNowOriginalY
                        
                        self.barron3500UnlistedBackgroundViewArray[self.spesificMeaningtag - 40000].bounds.size.height = 62
                        self.barron3500UnlistedBackgroundViewArray[self.spesificMeaningtag - 40000].frame.origin.y = tempForPreviousOriginalY
                        
                        touchedButton.bounds.size = self.barron3500UnlistedBackgroundViewArray[touchedButton.tag - 40000].bounds.size
                        touchedButton.frame.origin.x = 0
                        touchedButton.frame.origin.y = 0
                        
                        for index in self.spesificMeaningtag - 40000 + 1...373
                        {
                            self.barron3500UnlistedBackgroundViewArray[index].frame.origin.y -= self.barron3500UnlistedExplainationsLabelArray[self.spesificMeaningtag - 40000].bounds.size.height + 121 - 62
                        }
                        for index in touchedButton.tag - 40000 + 1...373
                        {
                            self.barron3500UnlistedBackgroundViewArray[index].frame.origin.y += (self.barron3500UnlistedExplainationsLabelArray[touchedButton.tag - 40000].bounds.size.height + 121) - 62
                        }
                        
                        self.wordsListScrollView.contentSize.height += self.barron3500UnlistedExplainationsLabelArray[touchedButton.tag - 40000].bounds.size.height + 121 - 62
                        self.wordsListScrollView.contentSize.height -= self.barron3500UnlistedExplainationsLabelArray[self.spesificMeaningtag - 40000].bounds.size.height + 121 - 62
                        self.wordsListScrollView.isScrollEnabled = true
                        
                        
                        if self.wordsListScrollView.contentOffset.y > self.barron3500UnlistedBackgroundViewArray[touchedButton.tag - 40000].frame.origin.y
                        {
                            self.wordsListScrollView.contentOffset.y = self.barron3500UnlistedBackgroundViewArray[touchedButton.tag - 40000].frame.origin.y - 4
                        }
                        if self.searchActivation == false {
                            if (self.wordsListScrollView.contentOffset.y + self.wordsListScrollView.bounds.size.height) < (self.barron3500UnlistedBackgroundViewArray[touchedButton.tag - 40000].frame.origin.y + self.barron3500UnlistedBackgroundViewArray[touchedButton.tag - 40000].bounds.size.height)
                            {
                                self.wordsListScrollView.contentOffset.y = self.barron3500UnlistedBackgroundViewArray[touchedButton.tag - 40000].frame.origin.y + self.barron3500UnlistedBackgroundViewArray[touchedButton.tag - 40000].bounds.size.height - self.wordsListScrollView.bounds.size.height + 4
                            }
                        }
                        
                    }, completion: nil)
                
                UIView.animate(withDuration: 0.3, delay: 0.2, options: [], animations:
                    {
                        self.barron3500UnlistedBackgroundViewArray[self.spesificMeaningtag - 40000].backgroundColor = self.blueLevel3
                    }, completion: nil)
                
                if searchActivation == true {
                    findWordsButtonTouchedActivation = true
                    findWordsButtonDidTouchUpInside()
                }
                self.spesificMeaningtag = touchedButton.tag
            }
        }
    }
    
    // MARK: - Search Functions
    
    func searchLevel1(_ touchedButton:UIButton) {
        
        if touchedButton.currentTitle == "A"
        {
            
            for index in 0...self.barron3500AArrayWords.count - 1
            {
                
                self.barron3500UnlistedBackgroundViewArray[index].alpha = 1
                self.barron3500UnlistedTranslationsLabelArray[index].text = self.barron3500AArrayTranslations[index]
                self.barron3500UnlistedWordsLabelArray[index].text = self.barron3500AArrayWords[index]
                self.barron3500UnlistedClassesLabelArray[index].text = self.barron3500AArrayClasses[index]
                self.barron3500UnlistedExplainationsLabelArray[index].text = self.barron3500AArrayExplainations[index]
                self.barron3500UnlistedExplainationsLabelArray[index].bounds.size.width = self.barron3500UnlistedBackgroundViewArray[index].bounds.size.width - 32
                self.barron3500UnlistedExplainationsLabelArray[index].frame.origin.x = 16
            }
            
            self.wordsListScrollView.contentSize.height = CGFloat(self.barron3500AArrayWords.count) * 66 + 4
            self.searchString += "a"
            self.searchWordsArray = self.barron3500AArrayWords
            self.searchTranslationsArray = self.barron3500AArrayTranslations
            self.searchClassesArray = self.barron3500AArrayClasses
            self.searchExplainationsArray = self.barron3500AArrayExplainations
            
        }
        
        else if touchedButton.currentTitle == "B"
        {
            for index in 0...self.barron3500BArrayWords.count - 1
            {
                self.barron3500UnlistedBackgroundViewArray[index].alpha = 1
                self.barron3500UnlistedTranslationsLabelArray[index].text = self.barron3500BArrayTranslations[index]
                self.barron3500UnlistedWordsLabelArray[index].text = self.barron3500BArrayWords[index]
                self.barron3500UnlistedClassesLabelArray[index].text = self.barron3500BArrayClasses[index]
                self.barron3500UnlistedExplainationsLabelArray[index].text = self.barron3500BArrayExplainations[index]
                self.barron3500UnlistedExplainationsLabelArray[index].bounds.size.width = self.barron3500UnlistedBackgroundViewArray[index].bounds.size.width - 32
                self.barron3500UnlistedExplainationsLabelArray[index].frame.origin.x = 16
            }
            self.wordsListScrollView.contentSize.height = CGFloat(self.barron3500BArrayWords.count) * 66 + 4
            self.searchString += "b"
            self.searchWordsArray = self.barron3500BArrayWords
            self.searchTranslationsArray = self.barron3500BArrayTranslations
            self.searchClassesArray = self.barron3500BArrayClasses
            self.searchExplainationsArray = self.barron3500BArrayExplainations
        }
        else if touchedButton.currentTitle == "C"
        {
            for index in 0...self.barron3500CArrayWords.count - 1
            {
                self.barron3500UnlistedBackgroundViewArray[index].alpha = 1
                self.barron3500UnlistedTranslationsLabelArray[index].text = self.barron3500CArrayTranslations[index]
                self.barron3500UnlistedWordsLabelArray[index].text = self.barron3500CArrayWords[index]
                self.barron3500UnlistedClassesLabelArray[index].text = self.barron3500CArrayClasses[index]
                self.barron3500UnlistedExplainationsLabelArray[index].text = self.barron3500CArrayExplainations[index]
                self.barron3500UnlistedExplainationsLabelArray[index].bounds.size.width = self.barron3500UnlistedBackgroundViewArray[index].bounds.size.width - 32
                self.barron3500UnlistedExplainationsLabelArray[index].frame.origin.x = 16
            }
            self.searchString += "c"
            self.wordsListScrollView.contentSize.height = CGFloat(self.barron3500CArrayWords.count) * 66 + 4
            self.searchWordsArray = self.barron3500CArrayWords
            self.searchTranslationsArray = self.barron3500CArrayTranslations
            self.searchClassesArray = self.barron3500CArrayClasses
            self.searchExplainationsArray = self.barron3500CArrayExplainations
        }
        else if touchedButton.currentTitle == "D"
        {
            for index in 0...self.barron3500DArrayWords.count - 1
            {
                self.barron3500UnlistedBackgroundViewArray[index].alpha = 1
                self.barron3500UnlistedTranslationsLabelArray[index].text = self.barron3500DArrayTranslations[index]
                self.barron3500UnlistedWordsLabelArray[index].text = self.barron3500DArrayWords[index]
                self.barron3500UnlistedClassesLabelArray[index].text = self.barron3500DArrayClasses[index]
                self.barron3500UnlistedExplainationsLabelArray[index].text = self.barron3500DArrayExplainations[index]
                self.barron3500UnlistedExplainationsLabelArray[index].bounds.size.width = self.barron3500UnlistedBackgroundViewArray[index].bounds.size.width - 32
                self.barron3500UnlistedExplainationsLabelArray[index].frame.origin.x = 16
                
            }
            self.searchString += "d"
            self.wordsListScrollView.contentSize.height = CGFloat(self.barron3500DArrayWords.count) * 66 + 4
            self.searchWordsArray = self.barron3500DArrayWords
            self.searchTranslationsArray = self.barron3500DArrayTranslations
            self.searchClassesArray = self.barron3500DArrayClasses
            self.searchExplainationsArray = self.barron3500DArrayExplainations
        }
        else if touchedButton.currentTitle == "E"
        {
            for index in 0...self.barron3500EArrayWords.count - 1
            {
                self.barron3500UnlistedBackgroundViewArray[index].alpha = 1
                self.barron3500UnlistedTranslationsLabelArray[index].text = self.barron3500EArrayTranslations[index]
                self.barron3500UnlistedWordsLabelArray[index].text = self.barron3500EArrayWords[index]
                self.barron3500UnlistedClassesLabelArray[index].text = self.barron3500EArrayClasses[index]
                self.barron3500UnlistedExplainationsLabelArray[index].text = self.barron3500EArrayExplainations[index]
                self.barron3500UnlistedExplainationsLabelArray[index].bounds.size.width = self.barron3500UnlistedBackgroundViewArray[index].bounds.size.width - 32
                self.barron3500UnlistedExplainationsLabelArray[index].frame.origin.x = 16
                
            }
            self.searchString += "e"
            self.wordsListScrollView.contentSize.height = CGFloat(self.barron3500EArrayWords.count) * 66 + 4
            self.searchWordsArray = self.barron3500EArrayWords
            self.searchTranslationsArray = self.barron3500EArrayTranslations
            self.searchClassesArray = self.barron3500EArrayClasses
            self.searchExplainationsArray = self.barron3500EArrayExplainations
        }
        else if touchedButton.currentTitle == "F"
        {
            for index in 0...self.barron3500FArrayWords.count - 1
            {
                self.barron3500UnlistedBackgroundViewArray[index].alpha = 1
                self.barron3500UnlistedTranslationsLabelArray[index].text = self.barron3500FArrayTranslations[index]
                self.barron3500UnlistedWordsLabelArray[index].text = self.barron3500FArrayWords[index]
                self.barron3500UnlistedClassesLabelArray[index].text = self.barron3500FArrayClasses[index]
                self.barron3500UnlistedExplainationsLabelArray[index].text = self.barron3500FArrayExplainations[index]
                self.barron3500UnlistedExplainationsLabelArray[index].bounds.size.width = self.barron3500UnlistedBackgroundViewArray[index].bounds.size.width - 32
                self.barron3500UnlistedExplainationsLabelArray[index].frame.origin.x = 16
                
            }
            self.searchString += "f"
            self.wordsListScrollView.contentSize.height = CGFloat(self.barron3500FArrayWords.count) * 66 + 4
            self.searchWordsArray = self.barron3500FArrayWords
            self.searchTranslationsArray = self.barron3500FArrayTranslations
            self.searchClassesArray = self.barron3500FArrayClasses
            self.searchExplainationsArray = self.barron3500FArrayExplainations
        }
        else if touchedButton.currentTitle == "G"
        {
            for index in 0...self.barron3500GArrayWords.count - 1
            {
                self.barron3500UnlistedBackgroundViewArray[index].alpha = 1
                self.barron3500UnlistedTranslationsLabelArray[index].text = self.barron3500GArrayTranslations[index]
                self.barron3500UnlistedWordsLabelArray[index].text = self.barron3500GArrayWords[index]
                self.barron3500UnlistedClassesLabelArray[index].text = self.barron3500GArrayClasses[index]
                self.barron3500UnlistedExplainationsLabelArray[index].text = self.barron3500GArrayExplainations[index]
                self.barron3500UnlistedExplainationsLabelArray[index].bounds.size.width = self.barron3500UnlistedBackgroundViewArray[index].bounds.size.width - 32
                self.barron3500UnlistedExplainationsLabelArray[index].frame.origin.x = 16
                
            }
            self.searchString += "g"
            self.wordsListScrollView.contentSize.height = CGFloat(self.barron3500GArrayWords.count) * 66 + 4
            self.searchWordsArray = self.barron3500GArrayWords
            self.searchTranslationsArray = self.barron3500GArrayTranslations
            self.searchClassesArray = self.barron3500GArrayClasses
            self.searchExplainationsArray = self.barron3500GArrayExplainations
        }
        else if touchedButton.currentTitle == "H"
        {
            for index in 0...self.barron3500HArrayWords.count - 1
            {
                self.barron3500UnlistedBackgroundViewArray[index].alpha = 1
                self.barron3500UnlistedTranslationsLabelArray[index].text = self.barron3500HArrayTranslations[index]
                self.barron3500UnlistedWordsLabelArray[index].text = self.barron3500HArrayWords[index]
                self.barron3500UnlistedClassesLabelArray[index].text = self.barron3500HArrayClasses[index]
                self.barron3500UnlistedExplainationsLabelArray[index].text = self.barron3500HArrayExplainations[index]
                self.barron3500UnlistedExplainationsLabelArray[index].bounds.size.width = self.barron3500UnlistedBackgroundViewArray[index].bounds.size.width - 32
                self.barron3500UnlistedExplainationsLabelArray[index].frame.origin.x = 16
                
            }
            self.searchString += "h"
            self.wordsListScrollView.contentSize.height = CGFloat(self.barron3500HArrayWords.count) * 66 + 4
            self.searchWordsArray = self.barron3500HArrayWords
            self.searchTranslationsArray = self.barron3500HArrayTranslations
            self.searchClassesArray = self.barron3500HArrayClasses
            self.searchExplainationsArray = self.barron3500HArrayExplainations
        }
        else if touchedButton.currentTitle == "I"
        {
            for index in 0...self.barron3500IArrayWords.count - 1
            {
                self.barron3500UnlistedBackgroundViewArray[index].alpha = 1
                self.barron3500UnlistedTranslationsLabelArray[index].text = self.barron3500IArrayTranslations[index]
                self.barron3500UnlistedWordsLabelArray[index].text = self.barron3500IArrayWords[index]
                self.barron3500UnlistedClassesLabelArray[index].text = self.barron3500IArrayClasses[index]
                self.barron3500UnlistedExplainationsLabelArray[index].text = self.barron3500IArrayExplainations[index]
                self.barron3500UnlistedExplainationsLabelArray[index].bounds.size.width = self.barron3500UnlistedBackgroundViewArray[index].bounds.size.width - 32
                self.barron3500UnlistedExplainationsLabelArray[index].frame.origin.x = 16
                
            }
            self.searchString += "i"
            self.wordsListScrollView.contentSize.height = CGFloat(self.barron3500IArrayWords.count) * 66 + 4
            self.searchWordsArray = self.barron3500IArrayWords
            self.searchTranslationsArray = self.barron3500IArrayTranslations
            self.searchClassesArray = self.barron3500IArrayClasses
            self.searchExplainationsArray = self.barron3500IArrayExplainations
        }
        else if touchedButton.currentTitle == "J"
        {
            for index in 0...self.barron3500JArrayWords.count - 1
            {
                self.barron3500UnlistedBackgroundViewArray[index].alpha = 1
                self.barron3500UnlistedTranslationsLabelArray[index].text = self.barron3500JArrayTranslations[index]
                self.barron3500UnlistedWordsLabelArray[index].text = self.barron3500JArrayWords[index]
                self.barron3500UnlistedClassesLabelArray[index].text = self.barron3500JArrayClasses[index]
                self.barron3500UnlistedExplainationsLabelArray[index].text = self.barron3500JArrayExplainations[index]
                self.barron3500UnlistedExplainationsLabelArray[index].bounds.size.width = self.barron3500UnlistedBackgroundViewArray[index].bounds.size.width - 32
                self.barron3500UnlistedExplainationsLabelArray[index].frame.origin.x = 16
                
            }
            self.searchString += "j"
            self.wordsListScrollView.contentSize.height = CGFloat(self.barron3500JArrayWords.count) * 66 + 4
            self.searchWordsArray = self.barron3500JArrayWords
            self.searchTranslationsArray = self.barron3500JArrayTranslations
            self.searchClassesArray = self.barron3500JArrayClasses
            self.searchExplainationsArray = self.barron3500JArrayExplainations
        }
        else if touchedButton.currentTitle == "K"
        {
            for index in 0...self.barron3500KArrayWords.count - 1
            {
                self.barron3500UnlistedBackgroundViewArray[index].alpha = 1
                self.barron3500UnlistedTranslationsLabelArray[index].text = self.barron3500KArrayTranslations[index]
                self.barron3500UnlistedWordsLabelArray[index].text = self.barron3500KArrayWords[index]
                self.barron3500UnlistedClassesLabelArray[index].text = self.barron3500KArrayClasses[index]
                self.barron3500UnlistedExplainationsLabelArray[index].text = self.barron3500KArrayExplainations[index]
                self.barron3500UnlistedExplainationsLabelArray[index].bounds.size.width = self.barron3500UnlistedBackgroundViewArray[index].bounds.size.width - 32
                self.barron3500UnlistedExplainationsLabelArray[index].frame.origin.x = 16
                
            }
            self.searchString += "k"
            self.wordsListScrollView.contentSize.height = CGFloat(self.barron3500KArrayWords.count) * 66 + 4
            self.searchWordsArray = self.barron3500KArrayWords
            self.searchTranslationsArray = self.barron3500KArrayTranslations
            self.searchClassesArray = self.barron3500KArrayClasses
            self.searchExplainationsArray = self.barron3500KArrayExplainations
        }
        else if touchedButton.currentTitle == "L"
        {
            for index in 0...self.barron3500LArrayWords.count - 1
            {
                self.barron3500UnlistedBackgroundViewArray[index].alpha = 1
                self.barron3500UnlistedTranslationsLabelArray[index].text = self.barron3500LArrayTranslations[index]
                self.barron3500UnlistedWordsLabelArray[index].text = self.barron3500LArrayWords[index]
                self.barron3500UnlistedClassesLabelArray[index].text = self.barron3500LArrayClasses[index]
                self.barron3500UnlistedExplainationsLabelArray[index].text = self.barron3500LArrayExplainations[index]
                self.barron3500UnlistedExplainationsLabelArray[index].bounds.size.width = self.barron3500UnlistedBackgroundViewArray[index].bounds.size.width - 32
                self.barron3500UnlistedExplainationsLabelArray[index].frame.origin.x = 16
                
            }
            self.searchString += "l"
            self.wordsListScrollView.contentSize.height = CGFloat(self.barron3500LArrayWords.count) * 66 + 4
            self.searchWordsArray = self.barron3500LArrayWords
            self.searchTranslationsArray = self.barron3500LArrayTranslations
            self.searchClassesArray = self.barron3500LArrayClasses
            self.searchExplainationsArray = self.barron3500LArrayExplainations
        }
        else if touchedButton.currentTitle == "M"
        {
            for index in 0...self.barron3500MArrayWords.count - 1
            {
                self.barron3500UnlistedBackgroundViewArray[index].alpha = 1
                self.barron3500UnlistedTranslationsLabelArray[index].text = self.barron3500MArrayTranslations[index]
                self.barron3500UnlistedWordsLabelArray[index].text = self.barron3500MArrayWords[index]
                self.barron3500UnlistedClassesLabelArray[index].text = self.barron3500MArrayClasses[index]
                self.barron3500UnlistedExplainationsLabelArray[index].text = self.barron3500MArrayExplainations[index]
                self.barron3500UnlistedExplainationsLabelArray[index].bounds.size.width = self.barron3500UnlistedBackgroundViewArray[index].bounds.size.width - 32
                self.barron3500UnlistedExplainationsLabelArray[index].frame.origin.x = 16
                
            }
            self.searchString += "m"
            self.wordsListScrollView.contentSize.height = CGFloat(self.barron3500MArrayWords.count) * 66 + 4
            self.searchWordsArray = self.barron3500MArrayWords
            self.searchTranslationsArray = self.barron3500MArrayTranslations
            self.searchClassesArray = self.barron3500MArrayClasses
            self.searchExplainationsArray = self.barron3500MArrayExplainations
        }
        else if touchedButton.currentTitle == "N"
        {
            for index in 0...self.barron3500NArrayWords.count - 1
            {
                self.barron3500UnlistedBackgroundViewArray[index].alpha = 1
                self.barron3500UnlistedTranslationsLabelArray[index].text = self.barron3500NArrayTranslations[index]
                self.barron3500UnlistedWordsLabelArray[index].text = self.barron3500NArrayWords[index]
                self.barron3500UnlistedClassesLabelArray[index].text = self.barron3500NArrayClasses[index]
                self.barron3500UnlistedExplainationsLabelArray[index].text = self.barron3500NArrayExplainations[index]
                self.barron3500UnlistedExplainationsLabelArray[index].bounds.size.width = self.barron3500UnlistedBackgroundViewArray[index].bounds.size.width - 32
                self.barron3500UnlistedExplainationsLabelArray[index].frame.origin.x = 16
                
            }
            self.searchString += "n"
            self.wordsListScrollView.contentSize.height = CGFloat(self.barron3500NArrayWords.count) * 66 + 4
            self.searchWordsArray = self.barron3500NArrayWords
            self.searchTranslationsArray = self.barron3500NArrayTranslations
            self.searchClassesArray = self.barron3500NArrayClasses
            self.searchExplainationsArray = self.barron3500NArrayExplainations
        }
        else if touchedButton.currentTitle == "O"
        {
            for index in 0...self.barron3500OArrayWords.count - 1
            {
                self.barron3500UnlistedBackgroundViewArray[index].alpha = 1
                self.barron3500UnlistedTranslationsLabelArray[index].text = self.barron3500OArrayTranslations[index]
                self.barron3500UnlistedWordsLabelArray[index].text = self.barron3500OArrayWords[index]
                self.barron3500UnlistedClassesLabelArray[index].text = self.barron3500OArrayClasses[index]
                self.barron3500UnlistedExplainationsLabelArray[index].text = self.barron3500OArrayExplainations[index]
                self.barron3500UnlistedExplainationsLabelArray[index].bounds.size.width = self.barron3500UnlistedBackgroundViewArray[index].bounds.size.width - 32
                self.barron3500UnlistedExplainationsLabelArray[index].frame.origin.x = 16
                
            }
            self.searchString += "o"
            self.wordsListScrollView.contentSize.height = CGFloat(self.barron3500OArrayWords.count) * 66 + 4
            self.searchWordsArray = self.barron3500OArrayWords
            self.searchTranslationsArray = self.barron3500OArrayTranslations
            self.searchClassesArray = self.barron3500OArrayClasses
            self.searchExplainationsArray = self.barron3500OArrayExplainations
        }
        else if touchedButton.currentTitle == "P"
        {
            for index in 0...self.barron3500PArrayWords.count - 1
            {
                self.barron3500UnlistedBackgroundViewArray[index].alpha = 1
                self.barron3500UnlistedTranslationsLabelArray[index].text = self.barron3500PArrayTranslations[index]
                self.barron3500UnlistedWordsLabelArray[index].text = self.barron3500PArrayWords[index]
                self.barron3500UnlistedClassesLabelArray[index].text = self.barron3500PArrayClasses[index]
                self.barron3500UnlistedExplainationsLabelArray[index].text = self.barron3500PArrayExplainations[index]
                self.barron3500UnlistedExplainationsLabelArray[index].bounds.size.width = self.barron3500UnlistedBackgroundViewArray[index].bounds.size.width - 32
                self.barron3500UnlistedExplainationsLabelArray[index].frame.origin.x = 16
                
            }
            self.searchString += "p"
            self.wordsListScrollView.contentSize.height = CGFloat(self.barron3500PArrayWords.count) * 66 + 4
            self.searchWordsArray = self.barron3500PArrayWords
            self.searchTranslationsArray = self.barron3500PArrayTranslations
            self.searchClassesArray = self.barron3500PArrayClasses
            self.searchExplainationsArray = self.barron3500PArrayExplainations
        }
        else if touchedButton.currentTitle == "Q"
        {
            for index in 0...self.barron3500QArrayWords.count - 1
            {
                self.barron3500UnlistedBackgroundViewArray[index].alpha = 1
                self.barron3500UnlistedTranslationsLabelArray[index].text = self.barron3500QArrayTranslations[index]
                self.barron3500UnlistedWordsLabelArray[index].text = self.barron3500QArrayWords[index]
                self.barron3500UnlistedClassesLabelArray[index].text = self.barron3500QArrayClasses[index]
                self.barron3500UnlistedExplainationsLabelArray[index].text = self.barron3500QArrayExplainations[index]
                self.barron3500UnlistedExplainationsLabelArray[index].bounds.size.width = self.barron3500UnlistedBackgroundViewArray[index].bounds.size.width - 32
                self.barron3500UnlistedExplainationsLabelArray[index].frame.origin.x = 16
                
            }
            self.searchString += "q"
            self.wordsListScrollView.contentSize.height = CGFloat(self.barron3500QArrayWords.count) * 66 + 4
            self.searchWordsArray = self.barron3500QArrayWords
            self.searchTranslationsArray = self.barron3500QArrayTranslations
            self.searchClassesArray = self.barron3500QArrayClasses
            self.searchExplainationsArray = self.barron3500QArrayExplainations
        }
        else if touchedButton.currentTitle == "R"
        {
            for index in 0...self.barron3500RArrayWords.count - 1
            {
                self.barron3500UnlistedBackgroundViewArray[index].alpha = 1
                self.barron3500UnlistedTranslationsLabelArray[index].text = self.barron3500RArrayTranslations[index]
                self.barron3500UnlistedWordsLabelArray[index].text = self.barron3500RArrayWords[index]
                self.barron3500UnlistedClassesLabelArray[index].text = self.barron3500RArrayClasses[index]
                self.barron3500UnlistedExplainationsLabelArray[index].text = self.barron3500RArrayExplainations[index]
                self.barron3500UnlistedExplainationsLabelArray[index].bounds.size.width = self.barron3500UnlistedBackgroundViewArray[index].bounds.size.width - 32
                self.barron3500UnlistedExplainationsLabelArray[index].frame.origin.x = 16
                
            }
            self.searchString += "r"
            self.wordsListScrollView.contentSize.height = CGFloat(self.barron3500RArrayWords.count) * 66 + 4
            self.searchWordsArray = self.barron3500RArrayWords
            self.searchTranslationsArray = self.barron3500RArrayTranslations
            self.searchClassesArray = self.barron3500RArrayClasses
            self.searchExplainationsArray = self.barron3500RArrayExplainations
        }
        else if touchedButton.currentTitle == "S"
        {
            for index in 0...self.barron3500SArrayWords.count - 1
            {
                self.barron3500UnlistedBackgroundViewArray[index].alpha = 1
                self.barron3500UnlistedTranslationsLabelArray[index].text = self.barron3500SArrayTranslations[index]
                self.barron3500UnlistedWordsLabelArray[index].text = self.barron3500SArrayWords[index]
                self.barron3500UnlistedClassesLabelArray[index].text = self.barron3500SArrayClasses[index]
                self.barron3500UnlistedExplainationsLabelArray[index].text = self.barron3500SArrayExplainations[index]
                self.barron3500UnlistedExplainationsLabelArray[index].bounds.size.width = self.barron3500UnlistedBackgroundViewArray[index].bounds.size.width - 32
                self.barron3500UnlistedExplainationsLabelArray[index].frame.origin.x = 16
                
            }
            self.searchString += "s"
            self.wordsListScrollView.contentSize.height = CGFloat(self.barron3500SArrayWords.count) * 66 + 4
            self.searchWordsArray = self.barron3500SArrayWords
            self.searchTranslationsArray = self.barron3500SArrayTranslations
            self.searchClassesArray = self.barron3500SArrayClasses
            self.searchExplainationsArray = self.barron3500SArrayExplainations
        }
        else if touchedButton.currentTitle == "T"
        {
            for index in 0...self.barron3500TArrayWords.count - 1
            {
                self.barron3500UnlistedBackgroundViewArray[index].alpha = 1
                self.barron3500UnlistedTranslationsLabelArray[index].text = self.barron3500TArrayTranslations[index]
                self.barron3500UnlistedWordsLabelArray[index].text = self.barron3500TArrayWords[index]
                self.barron3500UnlistedClassesLabelArray[index].text = self.barron3500TArrayClasses[index]
                self.barron3500UnlistedExplainationsLabelArray[index].text = self.barron3500TArrayExplainations[index]
                self.barron3500UnlistedExplainationsLabelArray[index].bounds.size.width = self.barron3500UnlistedBackgroundViewArray[index].bounds.size.width - 32
                self.barron3500UnlistedExplainationsLabelArray[index].frame.origin.x = 16
                
            }
            self.searchString += "t"
            self.wordsListScrollView.contentSize.height = CGFloat(self.barron3500TArrayWords.count) * 66 + 4
            self.searchWordsArray = self.barron3500TArrayWords
            self.searchTranslationsArray = self.barron3500TArrayTranslations
            self.searchClassesArray = self.barron3500TArrayClasses
            self.searchExplainationsArray = self.barron3500TArrayExplainations
        }
        else if touchedButton.currentTitle == "U"
        {
            for index in 0...self.barron3500UArrayWords.count - 1
            {
                self.barron3500UnlistedBackgroundViewArray[index].alpha = 1
                self.barron3500UnlistedTranslationsLabelArray[index].text = self.barron3500UArrayTranslations[index]
                self.barron3500UnlistedWordsLabelArray[index].text = self.barron3500UArrayWords[index]
                self.barron3500UnlistedClassesLabelArray[index].text = self.barron3500UArrayClasses[index]
                self.barron3500UnlistedExplainationsLabelArray[index].text = self.barron3500UArrayExplainations[index]
                self.barron3500UnlistedExplainationsLabelArray[index].bounds.size.width = self.barron3500UnlistedBackgroundViewArray[index].bounds.size.width - 32
                self.barron3500UnlistedExplainationsLabelArray[index].frame.origin.x = 16
                
            }
            self.searchString += "u"
            self.wordsListScrollView.contentSize.height = CGFloat(self.barron3500UArrayWords.count) * 66 + 4
            self.searchWordsArray = self.barron3500UArrayWords
            self.searchTranslationsArray = self.barron3500UArrayTranslations
            self.searchClassesArray = self.barron3500UArrayClasses
            self.searchExplainationsArray = self.barron3500UArrayExplainations
        }
        else if touchedButton.currentTitle == "V"
        {
            for index in 0...self.barron3500VArrayWords.count - 1
            {
                self.barron3500UnlistedBackgroundViewArray[index].alpha = 1
                self.barron3500UnlistedTranslationsLabelArray[index].text = self.barron3500VArrayTranslations[index]
                self.barron3500UnlistedWordsLabelArray[index].text = self.barron3500VArrayWords[index]
                self.barron3500UnlistedClassesLabelArray[index].text = self.barron3500VArrayClasses[index]
                self.barron3500UnlistedExplainationsLabelArray[index].text = self.barron3500VArrayExplainations[index]
                self.barron3500UnlistedExplainationsLabelArray[index].bounds.size.width = self.barron3500UnlistedBackgroundViewArray[index].bounds.size.width - 32
                self.barron3500UnlistedExplainationsLabelArray[index].frame.origin.x = 16
                
            }
            self.searchString += "v"
            self.wordsListScrollView.contentSize.height = CGFloat(self.barron3500VArrayWords.count) * 66 + 4
            self.searchWordsArray = self.barron3500VArrayWords
            self.searchTranslationsArray = self.barron3500VArrayTranslations
            self.searchClassesArray = self.barron3500VArrayClasses
            self.searchExplainationsArray = self.barron3500VArrayExplainations
        }
        else if touchedButton.currentTitle == "W"
        {
            for index in 0...self.barron3500WArrayWords.count - 1
            {
                self.barron3500UnlistedBackgroundViewArray[index].alpha = 1
                self.barron3500UnlistedTranslationsLabelArray[index].text = self.barron3500WArrayTranslations[index]
                self.barron3500UnlistedWordsLabelArray[index].text = self.barron3500WArrayWords[index]
                self.barron3500UnlistedClassesLabelArray[index].text = self.barron3500WArrayClasses[index]
                self.barron3500UnlistedExplainationsLabelArray[index].text = self.barron3500WArrayExplainations[index]
                self.barron3500UnlistedExplainationsLabelArray[index].bounds.size.width = self.barron3500UnlistedBackgroundViewArray[index].bounds.size.width - 32
                self.barron3500UnlistedExplainationsLabelArray[index].frame.origin.x = 16
                
            }
            self.searchString += "w"
            self.wordsListScrollView.contentSize.height = CGFloat(self.barron3500WArrayWords.count) * 66 + 4
            self.searchWordsArray = self.barron3500WArrayWords
            self.searchTranslationsArray = self.barron3500WArrayTranslations
            self.searchClassesArray = self.barron3500WArrayClasses
            self.searchExplainationsArray = self.barron3500WArrayExplainations
        }
        else if touchedButton.currentTitle == "X"
        {
            for index in 0...self.barron3500XArrayWords.count - 1
            {
                self.barron3500UnlistedBackgroundViewArray[index].alpha = 1
                self.barron3500UnlistedTranslationsLabelArray[index].text = self.barron3500XArrayTranslations[index]
                self.barron3500UnlistedWordsLabelArray[index].text = self.barron3500XArrayWords[index]
                self.barron3500UnlistedClassesLabelArray[index].text = self.barron3500XArrayClasses[index]
                self.barron3500UnlistedExplainationsLabelArray[index].text = self.barron3500XArrayExplainations[index]
                self.barron3500UnlistedExplainationsLabelArray[index].bounds.size.width = self.barron3500UnlistedBackgroundViewArray[index].bounds.size.width - 32
                self.barron3500UnlistedExplainationsLabelArray[index].frame.origin.x = 16
                
            }
            self.searchString += "x"
            self.wordsListScrollView.contentSize.height = CGFloat(self.barron3500XArrayWords.count) * 66 + 4
            self.searchWordsArray = self.barron3500XArrayWords
            self.searchTranslationsArray = self.barron3500XArrayTranslations
            self.searchClassesArray = self.barron3500XArrayClasses
            self.searchExplainationsArray = self.barron3500XArrayExplainations
        }
        else if touchedButton.currentTitle == "Y"
        {
            for index in 0...self.barron3500YArrayWords.count - 1
            {
                self.barron3500UnlistedBackgroundViewArray[index].alpha = 1
                self.barron3500UnlistedTranslationsLabelArray[index].text = self.barron3500YArrayTranslations[index]
                self.barron3500UnlistedWordsLabelArray[index].text = self.barron3500YArrayWords[index]
                self.barron3500UnlistedClassesLabelArray[index].text = self.barron3500YArrayClasses[index]
                self.barron3500UnlistedExplainationsLabelArray[index].text = self.barron3500YArrayExplainations[index]
                self.barron3500UnlistedExplainationsLabelArray[index].bounds.size.width = self.barron3500UnlistedBackgroundViewArray[index].bounds.size.width - 32
                self.barron3500UnlistedExplainationsLabelArray[index].frame.origin.x = 16
                
            }
            self.searchString += "y"
            self.wordsListScrollView.contentSize.height = CGFloat(self.barron3500YArrayWords.count) * 66 + 4
            self.searchWordsArray = self.barron3500YArrayWords
            self.searchTranslationsArray = self.barron3500YArrayTranslations
            self.searchClassesArray = self.barron3500YArrayClasses
            self.searchExplainationsArray = self.barron3500YArrayExplainations
        }
        else if touchedButton.currentTitle == "Z"
        {
            for index in 0...self.barron3500ZArrayWords.count - 1
            {
                self.barron3500UnlistedBackgroundViewArray[index].alpha = 1
                self.barron3500UnlistedTranslationsLabelArray[index].text = self.barron3500ZArrayTranslations[index]
                self.barron3500UnlistedWordsLabelArray[index].text = self.barron3500ZArrayWords[index]
                self.barron3500UnlistedClassesLabelArray[index].text = self.barron3500ZArrayClasses[index]
                self.barron3500UnlistedExplainationsLabelArray[index].text = self.barron3500ZArrayExplainations[index]
                self.barron3500UnlistedExplainationsLabelArray[index].bounds.size.width = self.barron3500UnlistedBackgroundViewArray[index].bounds.size.width - 32
                self.barron3500UnlistedExplainationsLabelArray[index].frame.origin.x = 16
            }
            self.searchString += "z"
            self.wordsListScrollView.contentSize.height = CGFloat(self.barron3500ZArrayWords.count) * 66 + 4
            self.searchWordsArray = self.barron3500ZArrayWords
            self.searchTranslationsArray = self.barron3500ZArrayTranslations
            self.searchClassesArray = self.barron3500ZArrayClasses
            self.searchExplainationsArray = self.barron3500ZArrayExplainations
        }
        
        for index in 0...373 {
            
            
            self.barron3500UnlistedBackgroundViewArray[index].backgroundColor = self.blueLevel3
            self.barron3500UnlistedBackgroundViewArray[index].bounds.size.height = 62
            self.barron3500UnlistedBackgroundViewArray[index].bounds.size.width = self.wordsListScrollView.contentSize.width - 8
            self.barron3500UnlistedBackgroundViewArray[index].frame.origin.y = CGFloat(4 * (index + 1) + index * 62)
            
            self.barron3500UnlistedWordsLabelArray[index].font = self.Medium22.font
            self.barron3500UnlistedWordsLabelArray[index].bounds.size.height = 25
            self.barron3500UnlistedWordsLabelArray[index].bounds.size.width = self.barron3500UnlistedBackgroundViewArray[index].bounds.size.width - 32
            self.barron3500UnlistedWordsLabelArray[index].frame.origin.x = 16
            self.barron3500UnlistedWordsLabelArray[index].frame.origin.y = 8
            self.barron3500UnlistedWordsLabelArray[index].textAlignment = NSTextAlignment.left
            
            self.barron3500UnlistedTranslationsLabelArray[index].bounds.size.height = 21
            self.barron3500UnlistedTranslationsLabelArray[index].bounds.size.width = self.barron3500UnlistedWordsLabelArray[index].bounds.size.width
            self.barron3500UnlistedTranslationsLabelArray[index].frame.origin.x = 16
            self.barron3500UnlistedTranslationsLabelArray[index].frame.origin.y = 33
            self.barron3500UnlistedTranslationsLabelArray[index].textAlignment = NSTextAlignment.left
            
            
            self.spesificMeaningActivation = false
            
        }
    }
    func searchLevel2() {
        UIView.animate(withDuration: 0, animations:
            {
                for index in 0...373 {
                    self.barron3500UnlistedBackgroundViewArray[index].alpha = 0
                }
                self.nothingHereLabel.alpha = 0
            })
        UIView.animate(withDuration: 0.001, delay: 0.1, options: .curveLinear, animations:
            {
                self.wordsListScrollView.contentOffset.y = 0
                for index in 0...373 {
                    self.barron3500UnlistedBackgroundViewArray[index].backgroundColor = self.blueLevel3
                    self.barron3500UnlistedBackgroundViewArray[index].bounds.size.height = 62
                    self.barron3500UnlistedBackgroundViewArray[index].bounds.size.width = self.wordsListScrollView.contentSize.width - 8
                    self.barron3500UnlistedBackgroundViewArray[index].frame.origin.y = CGFloat(4 * (index + 1) + index * 62)
                    
                    self.barron3500UnlistedWordsLabelArray[index].font = self.Medium22.font
                    self.barron3500UnlistedWordsLabelArray[index].bounds.size.height = 25
                    self.barron3500UnlistedWordsLabelArray[index].bounds.size.width = self.barron3500UnlistedBackgroundViewArray[index].bounds.size.width - 32
                    self.barron3500UnlistedWordsLabelArray[index].frame.origin.x = 16
                    self.barron3500UnlistedWordsLabelArray[index].frame.origin.y = 8
                    self.barron3500UnlistedWordsLabelArray[index].textAlignment = NSTextAlignment.left
                    
                    self.barron3500UnlistedTranslationsLabelArray[index].bounds.size.height = 21
                    self.barron3500UnlistedTranslationsLabelArray[index].bounds.size.width = self.barron3500UnlistedWordsLabelArray[index].bounds.size.width
                    self.barron3500UnlistedTranslationsLabelArray[index].frame.origin.x = 16
                    self.barron3500UnlistedTranslationsLabelArray[index].frame.origin.y = 33
                    self.barron3500UnlistedTranslationsLabelArray[index].textAlignment = NSTextAlignment.left
                    
                    self.spesificMeaningActivation = false
                }
            }, completion: nil)
        
        wordsListScrollView.contentSize.height = 0
        searchedTranslationsArray = [String]()
        searchedWordsArray = [String]()
        searchedClassesArray = [String]()
        searchedExplainationsArray = [String]()
        
        searchCount = 0
        for index in 0...searchWordsArray.count - 1 {
            if searchWordsArray[index].hasPrefix(searchString) {
                searchCount += 1
                
                searchedWordsArray.append(searchWordsArray[index])
                searchedTranslationsArray.append(searchTranslationsArray[index])
                searchedClassesArray.append(searchClassesArray[index])
                searchedExplainationsArray.append(searchExplainationsArray[index])
            }
        }
        if searchCount != 0
        {
            UIView.animate(withDuration: 0.001, delay: 0.1, options: [], animations:
                {
                    self.wordsListScrollView.contentSize.height = CGFloat(self.searchCount) * 66 + 4
                    for index in 0...self.searchCount - 1 {
                        self.barron3500UnlistedWordsLabelArray[index].text = self.searchedWordsArray[index]
                        self.barron3500UnlistedTranslationsLabelArray[index].text = self.searchedTranslationsArray[index]
                        self.barron3500UnlistedClassesLabelArray[index].text = self.searchedClassesArray[index]
                        self.barron3500UnlistedExplainationsLabelArray[index].text = self.searchedExplainationsArray[index]
                        self.barron3500UnlistedExplainationsLabelArray[index].sizeToFit()
                    }
                }, completion: nil)
            
            UIView.animate(withDuration: 0.1, delay: 0.101, options: .curveLinear, animations:
                {
                    for index in 0...self.searchCount - 1 {
                        self.barron3500UnlistedBackgroundViewArray[index].alpha = 1
                    }
                    
                }, completion: nil)
        }
        else
        {
            UIView.animate(withDuration: 0.1, delay: 0.101, options: .curveLinear, animations:
                {
                    self.nothingHereLabel.alpha = 1
                }, completion: nil)
        }
    }
    
    
    // MARK: - viewDidLoad
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        if (UIDevice.current.modelName == "iPhone X") || (UIDevice.current.modelName == "Simulator") {
            self.isStatusBarHidden = false
            self.setNeedsStatusBarAppearanceUpdate()
        }
        else {
            self.isStatusBarHidden = true
            self.setNeedsStatusBarAppearanceUpdate()
        }
        
        blueLevel1 = UIColorFromRGB(hex: "#03A9F4")
        blueLevel2 = UIColorFromRGB(hex: "#0288D1")
        blueLevel3 = UIColorFromRGB(hex: "#01579B")
        blueLevel4 = UIColorFromRGB(hex: "#034375")
        
        self.view.backgroundColor = UIColor.black
        self.backgroundRoundView.backgroundColor = blueLevel2
        self.backbackgroundRoundView.backgroundColor = blueLevel2
        self.backgroundRoundView.clipsToBounds = true
        self.backgroundRoundView.bounds.size = self.view.bounds.size
        self.backgroundRoundView.frame.origin.x = 0
        self.backgroundRoundView.frame.origin.y = 0
        
        barron3500UnlistedWordsString = NSString(data: fileManager.contents(atPath: pathForBarron3500UnlistedWords!)!, encoding: String.Encoding.utf8.rawValue)!
        barron3500UnlistedTranslationsString = NSString(data: fileManager.contents(atPath: pathForBarron3500UnlistedTranslations!)!, encoding: String.Encoding.utf8.rawValue)!
        barron3500UnlistedClassesString = NSString(data: fileManager.contents(atPath: pathForBarron3500UnlistedClasses!)!, encoding: String.Encoding.utf8.rawValue)!
        barron3500UnlistedExplainationsString = NSString(data: fileManager.contents(atPath: pathForBarron3500UnlistedExplainations!)!, encoding: String.Encoding.utf8.rawValue)!
        barron3500UnlistedWordsArray = barron3500UnlistedWordsString.components(separatedBy: "\n")
        barron3500UnlistedTranslationsArray = barron3500UnlistedTranslationsString.components(separatedBy: "\n")
        barron3500UnlistedClassesArray = barron3500UnlistedClassesString.components(separatedBy: "\n")
        barron3500UnlistedExplainationsArray = barron3500UnlistedExplainationsString.components(separatedBy: "\n")
        barron3500UnlistedCount = barron3500UnlistedWordsArray.count
        for index in 0...barron3500UnlistedCount - 1
        {
            if barron3500UnlistedWordsArray[index].hasPrefix("a") {
                barron3500AArrayWords.append(barron3500UnlistedWordsArray[index])
                barron3500AArrayTranslations.append(barron3500UnlistedTranslationsArray[index])
                barron3500AArrayClasses.append(barron3500UnlistedClassesArray[index])
                barron3500AArrayExplainations.append(barron3500UnlistedExplainationsArray[index])
            }
            else if barron3500UnlistedWordsArray[index].hasPrefix("b") {
                barron3500BArrayWords.append(barron3500UnlistedWordsArray[index])
                barron3500BArrayTranslations.append(barron3500UnlistedTranslationsArray[index])
                barron3500BArrayClasses.append(barron3500UnlistedClassesArray[index])
                barron3500BArrayExplainations.append(barron3500UnlistedExplainationsArray[index])
            }
            else if barron3500UnlistedWordsArray[index].hasPrefix("c") {
                barron3500CArrayWords.append(barron3500UnlistedWordsArray[index])
                barron3500CArrayTranslations.append(barron3500UnlistedTranslationsArray[index])
                barron3500CArrayClasses.append(barron3500UnlistedClassesArray[index])
                barron3500CArrayExplainations.append(barron3500UnlistedExplainationsArray[index])
            }
            else if barron3500UnlistedWordsArray[index].hasPrefix("d") {
                barron3500DArrayWords.append(barron3500UnlistedWordsArray[index])
                barron3500DArrayTranslations.append(barron3500UnlistedTranslationsArray[index])
                barron3500DArrayClasses.append(barron3500UnlistedClassesArray[index])
                barron3500DArrayExplainations.append(barron3500UnlistedExplainationsArray[index])
            }
            else if barron3500UnlistedWordsArray[index].hasPrefix("e") {
                barron3500EArrayWords.append(barron3500UnlistedWordsArray[index])
                barron3500EArrayTranslations.append(barron3500UnlistedTranslationsArray[index])
                barron3500EArrayClasses.append(barron3500UnlistedClassesArray[index])
                barron3500EArrayExplainations.append(barron3500UnlistedExplainationsArray[index])
            }
            else if barron3500UnlistedWordsArray[index].hasPrefix("f") {
                barron3500FArrayWords.append(barron3500UnlistedWordsArray[index])
                barron3500FArrayTranslations.append(barron3500UnlistedTranslationsArray[index])
                barron3500FArrayClasses.append(barron3500UnlistedClassesArray[index])
                barron3500FArrayExplainations.append(barron3500UnlistedExplainationsArray[index])
            }
            else if barron3500UnlistedWordsArray[index].hasPrefix("g") {
                barron3500GArrayWords.append(barron3500UnlistedWordsArray[index])
                barron3500GArrayTranslations.append(barron3500UnlistedTranslationsArray[index])
                barron3500GArrayClasses.append(barron3500UnlistedClassesArray[index])
                barron3500GArrayExplainations.append(barron3500UnlistedExplainationsArray[index])
            }
            else if barron3500UnlistedWordsArray[index].hasPrefix("h") {
                barron3500HArrayWords.append(barron3500UnlistedWordsArray[index])
                barron3500HArrayTranslations.append(barron3500UnlistedTranslationsArray[index])
                barron3500HArrayClasses.append(barron3500UnlistedClassesArray[index])
                barron3500HArrayExplainations.append(barron3500UnlistedExplainationsArray[index])
            }
            else if barron3500UnlistedWordsArray[index].hasPrefix("i") {
                barron3500IArrayWords.append(barron3500UnlistedWordsArray[index])
                barron3500IArrayTranslations.append(barron3500UnlistedTranslationsArray[index])
                barron3500IArrayClasses.append(barron3500UnlistedClassesArray[index])
                barron3500IArrayExplainations.append(barron3500UnlistedExplainationsArray[index])
            }
            else if barron3500UnlistedWordsArray[index].hasPrefix("j") {
                barron3500JArrayWords.append(barron3500UnlistedWordsArray[index])
                barron3500JArrayTranslations.append(barron3500UnlistedTranslationsArray[index])
                barron3500JArrayClasses.append(barron3500UnlistedClassesArray[index])
                barron3500JArrayExplainations.append(barron3500UnlistedExplainationsArray[index])
            }
            else if barron3500UnlistedWordsArray[index].hasPrefix("k") {
                barron3500KArrayWords.append(barron3500UnlistedWordsArray[index])
                barron3500KArrayTranslations.append(barron3500UnlistedTranslationsArray[index])
                barron3500KArrayClasses.append(barron3500UnlistedClassesArray[index])
                barron3500KArrayExplainations.append(barron3500UnlistedExplainationsArray[index])
            }
            else if barron3500UnlistedWordsArray[index].hasPrefix("l") {
                barron3500LArrayWords.append(barron3500UnlistedWordsArray[index])
                barron3500LArrayTranslations.append(barron3500UnlistedTranslationsArray[index])
                barron3500LArrayClasses.append(barron3500UnlistedClassesArray[index])
                barron3500LArrayExplainations.append(barron3500UnlistedExplainationsArray[index])
            }
            else if barron3500UnlistedWordsArray[index].hasPrefix("m") {
                barron3500MArrayWords.append(barron3500UnlistedWordsArray[index])
                barron3500MArrayTranslations.append(barron3500UnlistedTranslationsArray[index])
                barron3500MArrayClasses.append(barron3500UnlistedClassesArray[index])
                barron3500MArrayExplainations.append(barron3500UnlistedExplainationsArray[index])
            }
            else if barron3500UnlistedWordsArray[index].hasPrefix("n") {
                barron3500NArrayWords.append(barron3500UnlistedWordsArray[index])
                barron3500NArrayTranslations.append(barron3500UnlistedTranslationsArray[index])
                barron3500NArrayClasses.append(barron3500UnlistedClassesArray[index])
                barron3500NArrayExplainations.append(barron3500UnlistedExplainationsArray[index])
            }
            else if barron3500UnlistedWordsArray[index].hasPrefix("o") {
                barron3500OArrayWords.append(barron3500UnlistedWordsArray[index])
                barron3500OArrayTranslations.append(barron3500UnlistedTranslationsArray[index])
                barron3500OArrayClasses.append(barron3500UnlistedClassesArray[index])
                barron3500OArrayExplainations.append(barron3500UnlistedExplainationsArray[index])
            }
            else if barron3500UnlistedWordsArray[index].hasPrefix("p") {
                barron3500PArrayWords.append(barron3500UnlistedWordsArray[index])
                barron3500PArrayTranslations.append(barron3500UnlistedTranslationsArray[index])
                barron3500PArrayClasses.append(barron3500UnlistedClassesArray[index])
                barron3500PArrayExplainations.append(barron3500UnlistedExplainationsArray[index])
            }
            else if barron3500UnlistedWordsArray[index].hasPrefix("q") {
                barron3500QArrayWords.append(barron3500UnlistedWordsArray[index])
                barron3500QArrayTranslations.append(barron3500UnlistedTranslationsArray[index])
                barron3500QArrayClasses.append(barron3500UnlistedClassesArray[index])
                barron3500QArrayExplainations.append(barron3500UnlistedExplainationsArray[index])
            }
            else if barron3500UnlistedWordsArray[index].hasPrefix("r") {
                barron3500RArrayWords.append(barron3500UnlistedWordsArray[index])
                barron3500RArrayTranslations.append(barron3500UnlistedTranslationsArray[index])
                barron3500RArrayClasses.append(barron3500UnlistedClassesArray[index])
                barron3500RArrayExplainations.append(barron3500UnlistedExplainationsArray[index])
            }
            else if barron3500UnlistedWordsArray[index].hasPrefix("s") {
                barron3500SArrayWords.append(barron3500UnlistedWordsArray[index])
                barron3500SArrayTranslations.append(barron3500UnlistedTranslationsArray[index])
                barron3500SArrayClasses.append(barron3500UnlistedClassesArray[index])
                barron3500SArrayExplainations.append(barron3500UnlistedExplainationsArray[index])
            }
            else if barron3500UnlistedWordsArray[index].hasPrefix("t") {
                barron3500TArrayWords.append(barron3500UnlistedWordsArray[index])
                barron3500TArrayTranslations.append(barron3500UnlistedTranslationsArray[index])
                barron3500TArrayClasses.append(barron3500UnlistedClassesArray[index])
                barron3500TArrayExplainations.append(barron3500UnlistedExplainationsArray[index])
            }
            else if barron3500UnlistedWordsArray[index].hasPrefix("u") {
                barron3500UArrayWords.append(barron3500UnlistedWordsArray[index])
                barron3500UArrayTranslations.append(barron3500UnlistedTranslationsArray[index])
                barron3500UArrayClasses.append(barron3500UnlistedClassesArray[index])
                barron3500UArrayExplainations.append(barron3500UnlistedExplainationsArray[index])
            }
            else if barron3500UnlistedWordsArray[index].hasPrefix("v") {
                barron3500VArrayWords.append(barron3500UnlistedWordsArray[index])
                barron3500VArrayTranslations.append(barron3500UnlistedTranslationsArray[index])
                barron3500VArrayClasses.append(barron3500UnlistedClassesArray[index])
                barron3500VArrayExplainations.append(barron3500UnlistedExplainationsArray[index])
            }
            else if barron3500UnlistedWordsArray[index].hasPrefix("w") {
                barron3500WArrayWords.append(barron3500UnlistedWordsArray[index])
                barron3500WArrayTranslations.append(barron3500UnlistedTranslationsArray[index])
                barron3500WArrayClasses.append(barron3500UnlistedClassesArray[index])
                barron3500WArrayExplainations.append(barron3500UnlistedExplainationsArray[index])
            }
            else if barron3500UnlistedWordsArray[index].hasPrefix("x") {
                barron3500XArrayWords.append(barron3500UnlistedWordsArray[index])
                barron3500XArrayTranslations.append(barron3500UnlistedTranslationsArray[index])
                barron3500XArrayClasses.append(barron3500UnlistedClassesArray[index])
                barron3500XArrayExplainations.append(barron3500UnlistedExplainationsArray[index])
            }
            else if barron3500UnlistedWordsArray[index].hasPrefix("y") {
                barron3500YArrayWords.append(barron3500UnlistedWordsArray[index])
                barron3500YArrayTranslations.append(barron3500UnlistedTranslationsArray[index])
                barron3500YArrayClasses.append(barron3500UnlistedClassesArray[index])
                barron3500YArrayExplainations.append(barron3500UnlistedExplainationsArray[index])
            }
            else if barron3500UnlistedWordsArray[index].hasPrefix("z") {
                barron3500ZArrayWords.append(barron3500UnlistedWordsArray[index])
                barron3500ZArrayTranslations.append(barron3500UnlistedTranslationsArray[index])
                barron3500ZArrayClasses.append(barron3500UnlistedClassesArray[index])
                barron3500ZArrayExplainations.append(barron3500UnlistedExplainationsArray[index])
            }
        }
        
        self.backgroundRoundView.addSubview(wordsListBackgroundView)

        if (UIDevice.current.modelName == "iPhone X") || (UIDevice.current.modelName == "Simulator") {
            wordsListBackgroundView.bounds.size.height = self.view.bounds.size.height - 148
            wordsListBackgroundView.bounds.size.width = self.view.bounds.size.width - 32
            wordsListBackgroundView.frame.origin.x = 16
            wordsListBackgroundView.frame.origin.y = 44
            wordsListBackgroundView.backgroundColor = blueLevel3
            wordsListBackgroundView.layer.cornerRadius = 14
            wordsListBackgroundView.layer.shadowRadius = 15
            wordsListBackgroundView.layer.shadowOffset = CGSize(width: 0, height: 6)
            wordsListBackgroundView.layer.shadowOpacity = 0.6
            wordsListBackgroundView.layer.shadowColor = blueLevel4.cgColor
            wordsListBackgroundView.clipsToBounds = true
        }
        else {
            wordsListBackgroundView.bounds.size.height = self.view.bounds.size.height - 96
            wordsListBackgroundView.bounds.size.width = self.view.bounds.size.width - 28
            wordsListBackgroundView.frame.origin.x = 14
            wordsListBackgroundView.frame.origin.y = 14
            wordsListBackgroundView.backgroundColor = blueLevel3
            wordsListBackgroundView.layer.cornerRadius = 14
            wordsListBackgroundView.layer.shadowRadius = 15
            wordsListBackgroundView.layer.shadowOffset = CGSize(width: 0, height: 6)
            wordsListBackgroundView.layer.shadowOpacity = 0.6
            wordsListBackgroundView.layer.shadowColor = blueLevel4.cgColor
            wordsListBackgroundView.clipsToBounds = true
        }
        
            wordsListBackgroundView.addSubview(nothingHereLabel)
            nothingHereLabel.bounds = wordsListBackgroundView.bounds
            nothingHereLabel.frame.origin.x = 0
            nothingHereLabel.frame.origin.y = 0
            nothingHereLabel.text = "NOTHING HERE"
            nothingHereLabel.font = Regular27.font
            nothingHereLabel.textAlignment = NSTextAlignment.center
            nothingHereLabel.textColor = UIColor.white
            nothingHereLabel.alpha = 0
        
            wordsListBackgroundView.addSubview(wordsListScrollView)
            wordsListScrollView.bounds = wordsListBackgroundView.bounds
            wordsListScrollView.frame.origin.x = 0
            wordsListScrollView.frame.origin.y = 0
            wordsListScrollView.backgroundColor = UIColor.clear
            wordsListScrollView.contentSize.width = wordsListScrollView.bounds.size.width
            wordsListScrollView.contentSize.height = wordsListScrollView.bounds.size.width / 4 * 7
            wordsListScrollView.showsVerticalScrollIndicator = false
            wordsListScrollView.canCancelContentTouches = false
            wordsListScrollView.delaysContentTouches = true
        
            for index in 0...373
            {
                let backgroundView = UIView()
                let wordsContentLabel = UILabel()
                let translationsContentLabel = UILabel()
                let classesContentLabel = UILabel()
                let explainationsContentLabel = UILabel()
                let spesificMeaningButton = UIButton()
                
                wordsListScrollView.addSubview(backgroundView)
                barron3500UnlistedBackgroundViewArray.append(backgroundView)
                backgroundView.addSubview(wordsContentLabel)
                backgroundView.addSubview(translationsContentLabel)
                backgroundView.addSubview(classesContentLabel)
                backgroundView.addSubview(explainationsContentLabel)
                backgroundView.addSubview(spesificMeaningButton)
                barron3500UnlistedWordsLabelArray.append(wordsContentLabel)
                barron3500UnlistedTranslationsLabelArray.append(translationsContentLabel)
                barron3500UnlistedSpesificMeaningButtonArray.append(spesificMeaningButton)
                barron3500UnlistedClassesLabelArray.append(classesContentLabel)
                barron3500UnlistedExplainationsLabelArray.append(explainationsContentLabel)
                
                backgroundView.bounds.size.height = 62
                backgroundView.bounds.size.width = wordsListScrollView.contentSize.width - 8
                backgroundView.frame.origin.x = 4
                backgroundView.frame.origin.y = CGFloat(4 * (index + 1) + index * 62)
                backgroundView.layer.cornerRadius = 14
                backgroundView.backgroundColor = blueLevel3
                backgroundView.alpha = 0
                backgroundView.tag = 10000 + index
                backgroundView.clipsToBounds = true
                
                    wordsContentLabel.bounds.size.height = 25
                    wordsContentLabel.bounds.size.width = backgroundView.bounds.size.width - 32
                    wordsContentLabel.frame.origin.x = 16
                    wordsContentLabel.frame.origin.y = 8
                    wordsContentLabel.backgroundColor = UIColor.clear
                    wordsContentLabel.textColor = UIColor.white
                    wordsContentLabel.font = Medium22.font
                    wordsContentLabel.tag = 20000 + index
                    wordsContentLabel.textAlignment = NSTextAlignment.left
                
                    translationsContentLabel.bounds.size.height = 21
                    translationsContentLabel.bounds.size.width = wordsContentLabel.bounds.size.width
                    translationsContentLabel.frame.origin.x = 16
                    translationsContentLabel.frame.origin.y = 33
                    translationsContentLabel.backgroundColor = UIColor.clear
                    translationsContentLabel.textColor = UIColor.white
                    translationsContentLabel.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.light)
                    translationsContentLabel.tag = 30000 + index
                    translationsContentLabel.textAlignment = NSTextAlignment.left
                
                    classesContentLabel.bounds.size.height = 18
                    classesContentLabel.bounds.size.width = 30
                    //classesContentLabel.frame.origin.x = (backgroundView.bounds.size.width - classesContentLabel.bounds.size.width) / 2
                    classesContentLabel.center.x = backgroundView.center.x
                    classesContentLabel.frame.origin.y = 72
                    classesContentLabel.backgroundColor = UIColor.clear
                    classesContentLabel.textColor = UIColor.white
                    classesContentLabel.font = Light15.font
                    classesContentLabel.tag = 50000 + index
                    classesContentLabel.textAlignment = NSTextAlignment.center
                    classesContentLabel.alpha = 0
                
                    explainationsContentLabel.bounds.size.width = backgroundView.bounds.size.width - 32
                    explainationsContentLabel.frame.origin.x = 16
                    explainationsContentLabel.frame.origin.y = 106
                    explainationsContentLabel.backgroundColor = UIColor.clear
                    explainationsContentLabel.textColor = UIColor.white
                    explainationsContentLabel.font = Light15.font
                    explainationsContentLabel.tag = 60000 + index
                    explainationsContentLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
                    explainationsContentLabel.numberOfLines = 0
                    explainationsContentLabel.sizeToFit()
                    explainationsContentLabel.alpha = 0
                
                    spesificMeaningButton.bounds = backgroundView.bounds
                    spesificMeaningButton.frame.origin.x = 0
                    spesificMeaningButton.frame.origin.y = 0
                    spesificMeaningButton.backgroundColor = UIColor.clear
                    spesificMeaningButton.alpha = 1
                    spesificMeaningButton.addTarget(self, action: #selector(FindWordsScreenViewController.spesificMeaningButtonDidTouchDown), for: .touchDown)
                    spesificMeaningButton.addTarget(self, action: #selector(FindWordsScreenViewController.spesificMeaningButtonDidTouchUpInside), for: .touchUpInside)
                    spesificMeaningButton.addTarget(self, action: #selector(FindWordsScreenViewController.spesificMeaningButtonDidTouchUpOutside), for: .touchUpOutside)
                    spesificMeaningButton.tag = 40000 + index
                
            }
        
        let WordsLettersArray = WordsLetters.components(separatedBy: " ")
            for index in 0...25
            {
                let wordsScrollViewQuickAccessButton = UIButton()
                wordsScrollViewQuickAccessButtonArray.append(wordsScrollViewQuickAccessButton)
                wordsListScrollView.addSubview(wordsScrollViewQuickAccessButton)
                wordsScrollViewQuickAccessButton.bounds.size.width = wordsListScrollView.contentSize.width / 4
                wordsScrollViewQuickAccessButton.bounds.size.height = wordsScrollViewQuickAccessButton.bounds.size.width
                wordsScrollViewQuickAccessButton.frame.origin.x = CGFloat(index).truncatingRemainder(dividingBy: 4) * wordsScrollViewQuickAccessButton.bounds.size.width
                wordsScrollViewQuickAccessButton.frame.origin.y = CGFloat((index - index % 4) / 4) * wordsScrollViewQuickAccessButton.bounds.size.width
                wordsScrollViewQuickAccessButton.setTitle(WordsLettersArray[index], for: UIControl.State.normal)
                wordsScrollViewQuickAccessButton.setTitleColor(UIColor.white, for: UIControl.State.normal)
                wordsScrollViewQuickAccessButton.titleLabel?.font = Medium22.font
                //wordsScrollViewQuickAccessButton.addTarget(self, action: #selector(FindWordsScreenViewController.wordsScrollViewQuickAccessButtonDidTouchDown(_:)), forControlEvents: .TouchDown)
                wordsScrollViewQuickAccessButton.addTarget(self, action: #selector(FindWordsScreenViewController.wordsScrollViewQuickAccessButtonDidTouchUpInside(_:)), for: .touchUpInside)
                wordsScrollViewQuickAccessButton.addTarget(self, action: #selector(FindWordsScreenViewController.wordsScrollViewQuickAccessButtonDidTouchUpOutside(_:)), for: .touchUpOutside)
            }
        
        if (UIDevice.current.modelName == "iPhone X") || (UIDevice.current.modelName == "Simulator") {
        
            self.backgroundRoundView.addSubview(findWordsButtonBackgroundView)
            findWordsButtonBackgroundView.bounds.size.height = 54
            findWordsButtonBackgroundView.bounds.size.width = (self.view.bounds.size.width - 48) / 2
            findWordsButtonBackgroundView.frame.origin.x = 16
            findWordsButtonBackgroundView.frame.origin.y = self.view.bounds.size.height - 34 - 54
            findWordsButtonBackgroundView.backgroundColor = blueLevel1
            findWordsButtonBackgroundView.layer.cornerRadius = 14
            findWordsButtonBackgroundView.layer.shadowRadius = 15
            findWordsButtonBackgroundView.layer.shadowOffset = CGSize(width: 0, height: 6)
            findWordsButtonBackgroundView.layer.shadowOpacity = 0.6
            findWordsButtonBackgroundView.layer.shadowColor = blueLevel4.cgColor
            
            self.backgroundRoundView.addSubview(moreButtonBackgroundView)
            moreButtonBackgroundView.bounds.size.height = 54
            moreButtonBackgroundView.bounds.size.width = (self.view.bounds.size.width - 48) / 2
            moreButtonBackgroundView.frame.origin.x = 32 + findWordsButtonBackgroundView.bounds.size.width
            moreButtonBackgroundView.frame.origin.y = self.view.bounds.size.height - 34 - 54
            moreButtonBackgroundView.backgroundColor = blueLevel1
            moreButtonBackgroundView.layer.cornerRadius = 14
            moreButtonBackgroundView.layer.shadowRadius = 15
            moreButtonBackgroundView.layer.shadowOffset = CGSize(width: 0, height: 6)
            moreButtonBackgroundView.layer.shadowOpacity = 0.6
            moreButtonBackgroundView.layer.shadowColor = blueLevel4.cgColor
            
            self.backgroundRoundView.addSubview(findWordsButtonContentView)
            findWordsButtonContentView.bounds.size.height = 54
            findWordsButtonContentView.bounds.size.width = (self.view.bounds.size.width - 48) / 2
            findWordsButtonContentView.frame.origin.x = 16
            findWordsButtonContentView.frame.origin.y = self.view.bounds.size.height - 34 - 54
            findWordsButtonContentView.backgroundColor = blueLevel1
            findWordsButtonContentView.layer.cornerRadius = 14
            
            self.backgroundRoundView.addSubview(moreButtonContentView)
            moreButtonContentView.bounds.size.height = 54
            moreButtonContentView.bounds.size.width = (self.view.bounds.size.width - 48) / 2
            moreButtonContentView.frame.origin.x = 32 + findWordsButtonContentView.bounds.size.width
            moreButtonContentView.frame.origin.y = self.view.bounds.size.height - 34 - 54
            moreButtonContentView.backgroundColor = blueLevel4
            moreButtonContentView.layer.cornerRadius = 14
            moreButtonContentView.clipsToBounds = true
            
        }
        else {
            
            self.backgroundRoundView.addSubview(findWordsButtonBackgroundView)
            findWordsButtonBackgroundView.bounds.size.height = 54
            findWordsButtonBackgroundView.bounds.size.width = (self.view.bounds.size.width - 42) / 2
            findWordsButtonBackgroundView.frame.origin.x = 14
            findWordsButtonBackgroundView.frame.origin.y = self.view.bounds.size.height - 14 - 54
            findWordsButtonBackgroundView.backgroundColor = blueLevel1
            findWordsButtonBackgroundView.layer.cornerRadius = 14
            findWordsButtonBackgroundView.layer.shadowRadius = 15
            findWordsButtonBackgroundView.layer.shadowOffset = CGSize(width: 0, height: 6)
            findWordsButtonBackgroundView.layer.shadowOpacity = 0.6
            findWordsButtonBackgroundView.layer.shadowColor = blueLevel4.cgColor
            
            self.backgroundRoundView.addSubview(moreButtonBackgroundView)
            moreButtonBackgroundView.bounds.size.height = 54
            moreButtonBackgroundView.bounds.size.width = (self.view.bounds.size.width - 42) / 2
            moreButtonBackgroundView.frame.origin.x = 28 + findWordsButtonBackgroundView.bounds.size.width
            moreButtonBackgroundView.frame.origin.y = self.view.bounds.size.height - 14 - 54
            moreButtonBackgroundView.backgroundColor = blueLevel1
            moreButtonBackgroundView.layer.cornerRadius = 14
            moreButtonBackgroundView.layer.shadowRadius = 15
            moreButtonBackgroundView.layer.shadowOffset = CGSize(width: 0, height: 6)
            moreButtonBackgroundView.layer.shadowOpacity = 0.6
            moreButtonBackgroundView.layer.shadowColor = blueLevel4.cgColor
            
            self.backgroundRoundView.addSubview(findWordsButtonContentView)
            findWordsButtonContentView.bounds.size.height = 54
            findWordsButtonContentView.bounds.size.width = (self.view.bounds.size.width - 42) / 2
            findWordsButtonContentView.frame.origin.x = 14
            findWordsButtonContentView.frame.origin.y = self.view.bounds.size.height - 14 - 54
            findWordsButtonContentView.backgroundColor = blueLevel1
            findWordsButtonContentView.layer.cornerRadius = 14
            
            self.backgroundRoundView.addSubview(moreButtonContentView)
            moreButtonContentView.bounds.size.height = 54
            moreButtonContentView.bounds.size.width = (self.view.bounds.size.width - 42) / 2
            moreButtonContentView.frame.origin.x = 28 + findWordsButtonContentView.bounds.size.width
            moreButtonContentView.frame.origin.y = self.view.bounds.size.height - 14 - 54
            moreButtonContentView.backgroundColor = blueLevel4
            moreButtonContentView.layer.cornerRadius = 14
            moreButtonContentView.clipsToBounds = true
            
        }
        
            findWordsButtonContentView.addSubview(searchIconImageView)
            searchIconImageView.bounds.size.height = 54
            searchIconImageView.bounds.size.width = 51
            searchIconImageView.frame.origin.x = 0
            searchIconImageView.frame.origin.y = 0
            searchIconImageView.image = UIImage.init(named: "Search Icon")
        
            findWordsButtonContentView.addSubview(searchTextLabel)
            searchTextLabel.bounds.size.height = 21
            searchTextLabel.bounds.size.width = findWordsButtonContentView.bounds.size.width - 35
            searchTextLabel.frame.origin.x = 35
            searchTextLabel.frame.origin.y = (findWordsButtonContentView.bounds.size.height - searchTextLabel.bounds.size.height) / 2
            searchTextLabel.text = "SEARCH"
            searchTextLabel.font = SemiBold19.font
            searchTextLabel.textAlignment = NSTextAlignment.center
            searchTextLabel.textColor = UIColor.white
        
            findWordsButtonContentView.addSubview(findWordsButton)
            findWordsButton.bounds.size = findWordsButtonContentView.bounds.size
            findWordsButton.frame.origin.x = 0
            findWordsButton.frame.origin.y = 0
            findWordsButton.backgroundColor = UIColor.clear
            findWordsButton.addTarget(self, action: #selector(FindWordsScreenViewController.findWordsButtonDidTouchDown), for: .touchDown)
            findWordsButton.addTarget(self, action: #selector(FindWordsScreenViewController.findWordsButtonDidTouchUpInside), for: .touchUpInside)
            findWordsButton.addTarget(self, action: #selector(FindWordsScreenViewController.findWordsButtonDidTouchUpOutside), for: .touchUpOutside)
        
            moreButtonContentView.addSubview(aboutIconImageView)
            aboutIconImageView.bounds.size.height = 54
            aboutIconImageView.bounds.size.width = 54
            aboutIconImageView.frame.origin.x = 0
            aboutIconImageView.frame.origin.y = 0
            aboutIconImageView.image = UIImage.init(named: "About Icon")
        
            moreButtonContentView.addSubview(aboutTextLabel)
            aboutTextLabel.bounds.size.height = 21
            aboutTextLabel.bounds.size.width = moreButtonContentView.bounds.size.width - 37
            aboutTextLabel.frame.origin.x = 37
            aboutTextLabel.frame.origin.y = (moreButtonContentView.bounds.size.height - aboutTextLabel.bounds.size.height) / 2
            aboutTextLabel.text = "ABOUT"
            aboutTextLabel.font = SemiBold19.font
            aboutTextLabel.textAlignment = NSTextAlignment.center
            aboutTextLabel.textColor = UIColor.white
        
            moreButtonContentView.addSubview(moreButton)
            moreButton.bounds.size = moreButtonContentView.bounds.size
            moreButton.frame.origin.x = 0
            moreButton.frame.origin.y = 0
            moreButton.backgroundColor = UIColor.clear
            moreButton.addTarget(self, action: #selector(FindWordsScreenViewController.moreButtonDidTouchDown), for: .touchDown)
            moreButton.addTarget(self, action: #selector(FindWordsScreenViewController.moreButtonDidTouchUpInside), for: .touchUpInside)
            moreButton.addTarget(self, action: #selector(FindWordsScreenViewController.moreButtonDidTouchUpOutside), for: .touchUpOutside)
        
            moreButtonContentView.addSubview(aboutContentScrollView)
            aboutContentScrollView.bounds.size.height = self.moreButtonContentView.bounds.size.height - 57
            aboutContentScrollView.bounds.size.width = self.moreButtonContentView.bounds.size.width - 44
            aboutContentScrollView.frame.origin.x = 22
            aboutContentScrollView.frame.origin.y = 57
            aboutContentScrollView.contentSize.width = aboutContentScrollView.bounds.size.width
            aboutContentScrollView.backgroundColor = UIColor.clear
            aboutContentScrollView.showsVerticalScrollIndicator = false
            aboutContentScrollView.alpha = 0
        
        if (UIDevice.current.modelName == "iPhone X") || (UIDevice.current.modelName == "Simulator") {
        
        self.backgroundRoundView.addSubview(keyboardBackgroundView)
        keyboardBackgroundView.bounds.size.height = 287
        keyboardBackgroundView.bounds.size.width = self.view.bounds.size.width
        keyboardBackgroundView.frame.origin.x = 0
        keyboardBackgroundView.frame.origin.y = self.view.bounds.size.height
        keyboardBackgroundView.backgroundColor = blueLevel1
            
        }
        else {
            
            self.backgroundRoundView.addSubview(keyboardBackgroundView)
            keyboardBackgroundView.bounds.size.height = 267
            keyboardBackgroundView.bounds.size.width = self.view.bounds.size.width
            keyboardBackgroundView.frame.origin.x = 0
            keyboardBackgroundView.frame.origin.y = self.view.bounds.size.height//self.view.bounds.size.height - 267
            keyboardBackgroundView.backgroundColor = blueLevel1
            
        }
        
            keyboardBackgroundView.addSubview(keyboardBackgroundButton)
            keyboardBackgroundButton.bounds = keyboardBackgroundView.bounds
            keyboardBackgroundButton.frame.origin.x = 0
            keyboardBackgroundButton.frame.origin.y = 0
            keyboardBackgroundButton.backgroundColor = UIColor.clear
            keyboardBackgroundButton.addTarget(self, action: #selector(FindWordsScreenViewController.keyboardBackgroundButtonDidTouchDown), for: .touchDown)
        
            keyboardLettersArray = keyboardLetters.components(separatedBy: " ")
            for index in 0...25
            {
                let keybordKey = UIButton()
                keyboardButtonArray.append(keybordKey)
                keyboardBackgroundView.addSubview(keybordKey)
                if (index != 10) && (index != 18)
                {
                    keybordKey.bounds.size.width = self.view.bounds.size.width / 10
                }
                else
                {
                    keybordKey.bounds.size.width = self.view.bounds.size.width / 10 * 1.5
                }
                keybordKey.bounds.size.height = 65
                keybordKey.backgroundColor = blueLevel1
                keybordKey.setTitle(keyboardLettersArray[index], for: UIControl.State.normal)
                keybordKey.titleLabel?.font = Medium19.font
                keybordKey.titleLabel?.textColor = UIColor.white
                if (index != 10) && (index != 18)
                {
                    if index <= 9
                    {
                        keybordKey.frame.origin.y = 0
                        keybordKey.frame.origin.x = CGFloat(index) * keybordKey.bounds.size.width
                    }
                    else if (index > 9) && (index <= 18)
                    {
                        keybordKey.frame.origin.y = 260 / 4
                        keybordKey.frame.origin.x = (keybordKey.bounds.size.width / 2) + CGFloat(index - 10) * keybordKey.bounds.size.width
                    }
                    else
                    {
                        keybordKey.frame.origin.y = 260 / 2
                        keybordKey.frame.origin.x = (keybordKey.bounds.size.width / 2 * 3) + CGFloat(index - 19) * keybordKey.bounds.size.width
                    }
                }
                else
                {
                    if index == 10
                    {
                        keybordKey.frame.origin.x = 0
                        keybordKey.frame.origin.y = 260 / 4
                        keybordKey.contentHorizontalAlignment = .right
                        keybordKey.titleEdgeInsets.right = (self.view.bounds.size.width / 10 - 12) / 2
                    }
                    else if index == 18
                    {
                        keybordKey.frame.origin.x = self.view.bounds.size.width / 10 * 8.5
                        keybordKey.frame.origin.y = 260 / 4
                        keybordKey.contentHorizontalAlignment = .left
                        keybordKey.titleEdgeInsets.left = (self.view.bounds.size.width / 10 - 10) / 2
                    }
                }
                keybordKey.addTarget(self, action: #selector(FindWordsScreenViewController.keyboardKeyDidTouchDown(_:)), for: .touchDown)
                keybordKey.addTarget(self, action: #selector(FindWordsScreenViewController.keyboardKeyDidTouchUpInside(_:)), for: .touchUpInside)
                keybordKey.addTarget(self, action: #selector(FindWordsScreenViewController.keyboardKeyDidTouchUpOutside(_:)), for: .touchUpOutside)
            }
        
            if (UIDevice.current.modelName == "iPhone X") || (UIDevice.current.modelName == "Simulator") {
                
                keyboardBackgroundView.addSubview(clearButtonBackgroundView)
                clearButtonBackgroundView.bounds.size.height = 54
                clearButtonBackgroundView.bounds.size.width = (self.view.bounds.size.width - 16 * 3) / 2
                clearButtonBackgroundView.frame.origin.x = 16
                clearButtonBackgroundView.frame.origin.y = 199
                clearButtonBackgroundView.backgroundColor = blueLevel3
                clearButtonBackgroundView.layer.cornerRadius = 14
                clearButtonBackgroundView.layer.shadowRadius = 15
                clearButtonBackgroundView.layer.shadowOffset = CGSize(width: 0, height: 6)
                clearButtonBackgroundView.layer.shadowOpacity = 0.6
                clearButtonBackgroundView.layer.shadowColor = blueLevel4.cgColor
                
            }
            else {
                
                keyboardBackgroundView.addSubview(clearButtonBackgroundView)
                clearButtonBackgroundView.bounds.size.height = 54
                clearButtonBackgroundView.bounds.size.width = (self.view.bounds.size.width - 14 * 3) / 2
                clearButtonBackgroundView.frame.origin.x = 14
                clearButtonBackgroundView.frame.origin.y = 199
                clearButtonBackgroundView.backgroundColor = blueLevel3
                clearButtonBackgroundView.layer.cornerRadius = 14
                clearButtonBackgroundView.layer.shadowRadius = 15
                clearButtonBackgroundView.layer.shadowOffset = CGSize(width: 0, height: 6)
                clearButtonBackgroundView.layer.shadowOpacity = 0.6
                clearButtonBackgroundView.layer.shadowColor = blueLevel4.cgColor
                
            }
        
            keyboardBackgroundView.addSubview(clearButtonContentView)
            clearButtonContentView.bounds = clearButtonBackgroundView.bounds
            clearButtonContentView.frame = clearButtonBackgroundView.frame
            clearButtonContentView.backgroundColor = blueLevel3
            clearButtonContentView.layer.cornerRadius = 14
        
                clearButtonContentView.addSubview(clearButtonTextLabel)
                clearButtonTextLabel.bounds = self.clearButtonContentView.bounds
                clearButtonTextLabel.frame.origin.x = 0
                clearButtonTextLabel.frame.origin.y = 0
                clearButtonTextLabel.font = SemiBold19.font
                clearButtonTextLabel.textColor = UIColor.white
                clearButtonTextLabel.text = "CLEAR"
                clearButtonTextLabel.textAlignment = NSTextAlignment.center
        
                clearButtonContentView.addSubview(clearButton)
                clearButton.bounds = clearButtonContentView.bounds
                clearButton.frame.origin.x = 0
                clearButton.frame.origin.y = 0
                clearButton.backgroundColor = UIColor.clear
                clearButton.addTarget(self, action: #selector(FindWordsScreenViewController.clearButtonDidTouchDown), for: .touchDown)
                clearButton.addTarget(self, action: #selector(FindWordsScreenViewController.clearButtonDidTouchUpInside), for: .touchUpInside)
                clearButton.addTarget(self, action: #selector(FindWordsScreenViewController.clearButtonDidTouchUpOutside), for: .touchUpOutside)
        
            if (UIDevice.current.modelName == "iPhone X") || (UIDevice.current.modelName == "Simulator") {
                
                keyboardBackgroundView.addSubview(deleteButtonBackgroundView)
                deleteButtonBackgroundView.bounds.size.height = 54
                deleteButtonBackgroundView.bounds.size.width = (self.view.bounds.size.width - 16 * 3) / 2
                deleteButtonBackgroundView.frame.origin.x = 32 + (self.view.bounds.size.width - 16 * 3) / 2
                deleteButtonBackgroundView.frame.origin.y = 199
                deleteButtonBackgroundView.backgroundColor = blueLevel4
                deleteButtonBackgroundView.layer.cornerRadius = 14
                deleteButtonBackgroundView.layer.shadowRadius = 15
                deleteButtonBackgroundView.layer.shadowOffset = CGSize(width: 0, height: 6)
                deleteButtonBackgroundView.layer.shadowOpacity = 0.6
                deleteButtonBackgroundView.layer.shadowColor = blueLevel4.cgColor
                
            }
            else {
                
                keyboardBackgroundView.addSubview(deleteButtonBackgroundView)
                deleteButtonBackgroundView.bounds.size.height = 54
                deleteButtonBackgroundView.bounds.size.width = (self.view.bounds.size.width - 14 * 3) / 2
                deleteButtonBackgroundView.frame.origin.x = 32 + (self.view.bounds.size.width - 14 * 3) / 2
                deleteButtonBackgroundView.frame.origin.y = 199
                deleteButtonBackgroundView.backgroundColor = blueLevel4
                deleteButtonBackgroundView.layer.cornerRadius = 14
                deleteButtonBackgroundView.layer.shadowRadius = 15
                deleteButtonBackgroundView.layer.shadowOffset = CGSize(width: 0, height: 6)
                deleteButtonBackgroundView.layer.shadowOpacity = 0.6
                deleteButtonBackgroundView.layer.shadowColor = blueLevel4.cgColor
                
            }
        
            keyboardBackgroundView.addSubview(deleteButtonContentView)
            deleteButtonContentView.frame = deleteButtonBackgroundView.frame
            deleteButtonContentView.bounds = deleteButtonBackgroundView.bounds
            deleteButtonContentView.backgroundColor = blueLevel4
            deleteButtonContentView.layer.cornerRadius = 14
            deleteButtonContentView.layer.shadowRadius = 15
            deleteButtonContentView.layer.shadowOffset = CGSize(width: 0, height: 6)
            deleteButtonContentView.layer.shadowOpacity = 0.6
            deleteButtonContentView.layer.shadowColor = blueLevel4.cgColor
        
                deleteButtonContentView.addSubview(deleteButtonTextLabel)
                deleteButtonTextLabel.bounds = deleteButtonContentView.bounds
                deleteButtonTextLabel.frame.origin.x = 0
                deleteButtonTextLabel.frame.origin.y = 0
                deleteButtonTextLabel.text = "DELETE"
                deleteButtonTextLabel.textAlignment = NSTextAlignment.center
                deleteButtonTextLabel.font = SemiBold19.font
                deleteButtonTextLabel.textColor = UIColor.white
        
                deleteButtonContentView.addSubview(deleteButton)
                deleteButton.bounds = deleteButtonContentView.bounds
                deleteButton.frame.origin.x = 0
                deleteButton.frame.origin.y = 0
                deleteButton.backgroundColor = UIColor.clear
        
                deleteButton.addTarget(self, action: #selector(FindWordsScreenViewController.deleteButtonDidTouchDown), for: .touchDown)
                deleteButton.addTarget(self, action: #selector(FindWordsScreenViewController.deleteButtonDidTouchUpInside), for: .touchUpInside)
                deleteButton.addTarget(self, action: #selector(FindWordsScreenViewController.deleteButtonDidTouchUpOutside), for: .touchUpOutside)
        
        self.backgroundRoundView.addSubview(keyboardKeyTouchDownShownLabel)
    }
}

















