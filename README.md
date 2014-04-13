# Puppet module: chrome

This is a Puppet module for chrome
It provides only package installation and file configuration.

Based on Example42 layouts by Alessandro Franceschi / Lab42

Official site: http://www.example42.com

Official git repository: http://github.com/example42/puppet-chrome

Released under the terms of Apache 2 License.

This module requires the presence of Example42 Puppi module in your modulepath.


## USAGE - Basic management

* Install chrome with default settings

        class { 'chrome': }

* Install a specific version of chrome package

        class { 'chrome':
          version => '1.0.1',
        }

* Remove chrome resources

        class { 'chrome':
          absent => true
        }

* Enable auditing without without making changes on existing chrome configuration *files*

        class { 'chrome':
          audit_only => true
        }

* Module dry-run: Do not make any change on *all* the resources provided by the module

        class { 'chrome':
          noops => true
        }


## USAGE - Overrides and Customizations
* Use custom sources for main config file 

        class { 'chrome':
          source => [ "puppet:///modules/example42/chrome/chrome.conf-${hostname}" , "puppet:///modules/example42/chrome/chrome.conf" ], 
        }


* Use custom source directory for the whole configuration dir

        class { 'chrome':
          source_dir       => 'puppet:///modules/example42/chrome/conf/',
          source_dir_purge => false, # Set to true to purge any existing file not present in $source_dir
        }

* Use custom template for main config file. Note that template and source arguments are alternative. 

        class { 'chrome':
          template => 'example42/chrome/chrome.conf.erb',
        }

* Automatically include a custom subclass

        class { 'chrome':
          my_class => 'example42::my_chrome',
        }



## TESTING
[![Build Status](https://travis-ci.org/example42/puppet-chrome.png?branch=master)](https://travis-ci.org/example42/puppet-chrome)
