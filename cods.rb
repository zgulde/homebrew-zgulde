class Cods < Formula
  desc 'COdeup Deployment Scripts'
  version '0.2.1'
  url 'https://github.com/zgulde/cods/archive/v0.2.1.tar.gz'
  sha256 'bb02bf036631df6244a79fc7d43548ea6494c02e774c676dbaa75297a71f4e02'

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
