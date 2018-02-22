class Cods < Formula
  desc 'COdeup Deployment Scripts'
  version '0.2.0'
  url 'https://github.com/zgulde/cods/archive/v0.2.tar.gz'
  sha256 'eb84473d15341569b1f418efbefa2151b196514043f1a2329d239f3c2a45534c'
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
