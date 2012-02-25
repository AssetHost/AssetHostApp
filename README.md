# AssetHostApp

This is a thin wrapper around the AssetHostCore engine.

It calls in the gem, loads AssetHost's js and css, and puts the AssetHost routes into /.

You can find AssetHost at <http://github.com/SCPR/AssetHost>.

## Prerequisites 

* Redis (for Resque)
* ImageMagick (for cutting image sizes)

## Getting Started

1) Download this app:

    git clone git://github.com/SCPR/AssetHostApp.git

2) Install the gem bundle:

    bundle install

3) Fire up a simple server or install the app into [pow](http://pow.cx).  This demo app 
assumes that you are going to use pow and that you're going to register the app at 
<http://assethost.dev/>.

If you're not, or you just want to know where to configure that sort of thing, take a 
look at the bottom of config/environments/development.rb:

    config.assethost.server         = "assethost.dev"
    config.assethost.flickr_api_key = nil
    config.assethost.path           = ':rails_root/public/images/:id_:fingerprint_:sprint.:extension'
    config.assethost.trueurl        = 'http://assethost.dev/images/:id_:fingerprint_:sprint.:extension'
    config.assethost.url            = 'http://assethost.dev/i/:fingerprint/:id-:style.:extension'

URL is a path to the public#image function, which maps an asset id, a fingerprint, and an output style 
to the underlying image path. That's served up at trueurl, which in the case of our demo is just a 
directory in public/.  

For the demo, you probably also don't need to mess with the authentication hooks, which are done in 
config/initializers/asset\_host\_core.rb. Still, take a look.

4) Start up the render queue.  

    QUEUE=assethost rake environment resque:work

5) Create a user for yourself at <http://assethost.dev/users/sign_up>

6) Once signed in, start uploading assets at <http://assethost.dev/a/admin>

## Who?

AssetHost is being developed to serve the media asset needs of [KPCC](http://www.scpr.org) 
and Southern California Public Radio, a member-supported public radio network that 
serves Los Angeles and Orange County on 89.3, the Inland Empire on 89.1, and the 
Coachella Valley on 90.3.

AssetHost development is led by Eric Richardson (erichardson@scpr.org).
