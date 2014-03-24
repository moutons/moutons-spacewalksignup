# == Class: spacewalksignup
#
# when functional, it will ensure that the system is registered with
#  the defined spacewalk server for .. stuff
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if it
#   has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should not be used in preference to class parameters  as of
#   Puppet 2.6.)
#
# === Examples
#
#  class { spacewalksignup:
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ]
#  }
#
# === Authors
#
# Shaun Mouton <sdmouton@gmail.com>
#
# === Copyright
#
# Copyright 2014 Shaun Mouton, unless otherwise noted.
#
class spacewalksignup (
) inherits spacewalksignup::params {
  if $::osfamily == 'RedHat' {
    # do something cool here with this command:
    # rhnreg_ks --serverUrl=$spacewalksignup::spacewalk_host --activationkey=$spacewalksignup::activation_key
    } else {
        notice ("Your operating system ${::operatingsystem} is not supported by EPEL or IUS repositories")
    }
}
