require 'spec_helper'

describe 'libreoffice' do

  describe 'standard version' do
    version = '4.2.5'

    let(:facts) do
      {
        :boxen_home => '/opt/boxen'
      }
    end

    it do
      should contain_class('libreoffice')

      should contain_package("LibreOffice-#{version}").with({
        :source   => "http://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86/LibreOffice_#{version}_MacOS_x86.dmg",
          :provider => 'appdmg'
      })
    end
  end

  describe 'fixed version' do
    version = '4.2.6'
    fix = '-secfix'

    let(:facts) do
      {
        :boxen_home => '/opt/boxen'
      }
    end

    it do
      should contain_class('libreoffice')

      should contain_package("LibreOffice-#{version}#{fix}").with({
        :source   => "http://download.documentfoundation.org/libreoffice/stable/#{version}/mac/x86/LibreOffice_#{version}#{fix}_MacOS_x86.dmg",
          :provider => 'appdmg'
      })
    end
  end
end
