class Cods < Formula
  desc 'COdeup Deployment Scripts'
  version '0.1.1'
  url 'https://github.com/zgulde/cods.git'
  head 'https://github.com/zgulde/cods.git', :branch => 'develop'

  def install
    bin.install 'bin/init.sh' => 'cods'
    prefix.install 'server'
    prefix.install 'scripts'
    prefix.install 'templates'
  end
end
