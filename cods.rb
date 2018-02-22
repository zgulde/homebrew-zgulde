class Cods < Formula
  desc 'COdeup Deployment Scripts'
  version '0.2.0'
  url 'https://github.com/zgulde/cods.git'
  head 'https://github.com/zgulde/cods.git', :branch => 'develop'
  devel do
    url 'https://github.com/zgulde/cods/archive/master.zip'
    version '0.3.0-beta'
  end

  def install
    bin.install 'bin/init.sh' => 'cods'
    prefix.install 'server'
    prefix.install 'scripts'
    prefix.install 'templates'
  end
end
