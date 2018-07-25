class Cods < Formula
  desc 'COdeup Deployment Scripts'
  version '2.1.1'
  url 'https://github.com/zgulde/cods/archive/v2.1.1.tar.gz'
  sha256 'e7a7794e7e8480ea62f54134e0fa13d342ffbcfc0c55b299a3b20e43ab262248'

  head 'https://github.com/zgulde/cods.git', :branch => 'develop'
  devel do
    url 'https://github.com/zgulde/cods/archive/master.zip'
    version '1.3.0-beta'
  end

  def install
    bin.install 'bin/cods.sh' => 'cods'
    prefix.install 'server'
    prefix.install 'scripts'
    prefix.install 'templates'
    prefix.install 'bin'
    prefix.install 'CHANGELOG.md' # this contains version information
  end
end
