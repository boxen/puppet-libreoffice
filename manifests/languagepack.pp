# Public: Install Libreoffice.app into /Applications.
#
# Examples
#
#   include libreoffice::languagepack
#
#   or
#
#   class { 'libreoffice::languagepack':
#     locale => 'de',
#   }
class libreoffice::languagepack ($locale = 'de', $version = '4.1.6') {
  package { 'LibreOffice LanguagePack':
    provider => 'appdmg',
    source   => "http://download.documentfoundation.org/libreoffice/stable/${version}/mac/x86/LibreOffice_${version}_MacOS_x86_langpack_${locale}.dmg",
  }
}
