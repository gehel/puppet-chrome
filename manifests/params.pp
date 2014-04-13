# Class: chrome::params
#
# This class defines default parameters used by the main module class chrome
# Operating Systems differences in names and paths are addressed here
#
# == Variables
#
# Refer to chrome class for the variables defined here.
#
# == Usage
#
# This class is not intended to be used directly.
# It may be imported or inherited by other classes
#
class chrome::params {

  ### Application related parameters

  $package = $::operatingsystem ? {
    default => 'chrome',
  }

  $config_dir = $::operatingsystem ? {
    default => '/etc/chrome',
  }

  $config_file = $::operatingsystem ? {
    default => '/etc/chrome/chrome.conf',
  }

  $config_file_mode = $::operatingsystem ? {
    default => '0644',
  }

  $config_file_owner = $::operatingsystem ? {
    default => 'root',
  }

  $config_file_group = $::operatingsystem ? {
    default => 'root',
  }

  # General Settings
  $my_class = ''
  $source = ''
  $source_dir = ''
  $source_dir_purge = false
  $template = ''
  $options = ''
  $version = 'present'
  $absent = false
  $audit_only = false
  $noops = false

}
