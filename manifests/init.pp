# Public: Install Libreoffice.app into /Applications.
#
# Examples
#
#   include libreoffice
#   class { 'libreoffice':
#     version => '4.2.5',
#   }
class libreoffice($version='4.2.5',$fix='') {
  package { "LibreOffice-${version}${fix}":
    provider => 'appdmg',
    source   => "http://download.documentfoundation.org/libreoffice/stable/${version}/mac/x86_64/LibreOffice_${version}${fix}_MacOS_x86-64.dmg",
  }
}
