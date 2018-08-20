#

## Setup

## Install programs to Mac-OSX Machine
Use `./bootstrap.sh` to install all package and gem dependencies, which contain:
- ruby-2.5.1
- rvm (https://rvm.io/rvm/install) if you have `rbenv`, please avoid using this script - just install manually
- selenium-webdriver gem
- watir gem
- rspec gem
- chromedriver (https://chromedriver.storage.googleapis.com/index.html) or `brew cask install chromedriver`
- geckodriver (https://github.com/mozilla/geckodriver/releases) or `brew install geckodriver`

## Manully Install
Go to each of the library on section above and install it manually.
For each driver please extract it from zipfile and move it to `/usr/local/bin` folder to be accessible from command-line.
Once you have all installed, please run `bundle install` to get all necessary gemset package for this package.

### Dockerfile
Also if you like to use docker on the CI server, just build docker-image using `Dockerfile` on the root directory and then place it accordingly.

#### Notes on Ruby, Gem and Driver.
Currently designed to run on ruby-2.5.1, watir-6.12, and selenium-webdriver-3.6
Also, this framework was tested mostly using chromedriver (given 2 hours of work time) but it will definitely work on firefox/geckodriver with little bit more modification.

### How to run the test

To run all the test suites just type `cucumber` in the command-line/terminal

To run one particular the test,  type `cucumber features/<file_name_>.feature ` in the command-line/terminal

Need information please email me budisugianto777@gmail.com
