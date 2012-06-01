-----
       _                _                   _     _               
      /_\  ___ ___  ___| |_  /\  /\___  ___| |_  /_\  _ __  _ __  
     //_\\/ __/ __|/ _ \ __|/ /_/ / _ \/ __| __|//_\\| '_ \| '_ \ 
    /  _  \__ \__ \  __/ |_/ __  / (_) \__ \ |_/  _  \ |_) | |_) |
    \_/ \_/___/___/\___|\__\/ /_/ \___/|___/\__\_/ \_/ .__/| .__/ 
                                                     |_|   |_|    
-----

This is a thin wrapper around the AssetHostCore engine.

It calls in the gem, loads AssetHost's js and css, and puts the AssetHost routes into /.

You can find AssetHost at <http://github.com/AssetHost/AssetHost>.

## Prerequisites 

* Redis (for Resque)
* ImageMagick (for cutting image sizes)

## Getting Started

1) Download this app:

    git clone git://github.com/AssetHost/AssetHostApp.git

2) Install the gem bundle:

    bundle install
    
3) Install the db seeds to set up some basic output sizes:

    rake db:seed

4) Fire up a simple server or install the app into [pow](http://pow.cx).  This demo app 
assumes that you are going to use pow and that you're going to register the app at 
<http://assethost.dev/>.

If you're not, or you just want to know where to configure that sort of thing, take a 
look at the bottom of config/environments/development.rb:

    config.assethost.server         = "assethost.dev"

    config.assethost.paperclip_options = {
      storage:        'filesystem',
      path:           ':rails_root/images/:id_:fingerprint_:sprint.:extension',
      url:            'http://assethost.dev/:fingerprint/:id-:style.:extension',
      use_timestamp:  false
    }

URL is a path to the public#image function, which maps an asset id, a fingerprint, and an output style 
to the underlying image path. In production, that would likely get sent out via x-sendfile or 
X-Accel-Redirect, but in development we just serve it out directly.

For the demo, you probably also don't need to mess with the authentication hooks, which are done in 
config/initializers/asset\_host\_core.rb. Still, take a look.

5) Start up the render queue.  

    QUEUE=assethost rake environment resque:work

6) Create a user for yourself at <http://assethost.dev/users/sign_up>

7) Once signed in, start uploading assets at <http://assethost.dev/a/assets>

## Who?

AssetHost was created to serve the media asset needs of [KPCC](http://www.scpr.org) 
and Southern California Public Radio, a member-supported public radio network that 
serves Los Angeles and Orange County on 89.3, the Inland Empire on 89.1, and the 
Coachella Valley on 90.3.

Ongoing open source development is being led by [Eric Richardson](http://ericrichardson.com) 
([ewr](http://github.com/ewr) on github, [@ewrcode](http://twitter.com/ewrcode) on twitter).
