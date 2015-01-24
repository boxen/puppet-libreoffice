require 'spec_helper'

describe 'libreoffice::languagepack' do
  version = '4.3.5'
  locale = 'de'

  it do
    should contain_class('libreoffice::languagepack')
  end

  it do
    should contain_package('LibreOffice LanguagePack').with({
     :source   => "http://download.documentfoundation.org/libreoffice/stable/${version}/mac/x86/LibreOffice_${version}_MacOS_x86_langpack_${locale}.dmg",
     :provider => "appdmg"
    })
  end

end
