//
//  MusicListVC.swift
//  Swapping Screens
//
//  Created by Kimar Arakaki Neves on 2016-11-15.
//  Copyright © 2016 Kimar. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.blue
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backButtonPressed(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }

    @IBAction func loadThirdScreenPressed(_ sender: AnyObject) {
        let songTitle = "It's a kind of Magic"
        performSegue(withIdentifier: "SongVC", sender: songTitle)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongVC{
            if let song = sender as? String {
                destination.selectedSong = song
            }
            
        }
    }
}
