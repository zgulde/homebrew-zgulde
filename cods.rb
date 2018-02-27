class Cods < Formula
  desc 'COdeup Deployment Scripts'
  version '0.2.2'
  url 'https://github.com/zgulde/cods/archive/v0.2.2.tar.gz'
  sha256 'bee73df6a628ccbd4ce6c338e0eaf75da3c3948494a8556f855d4972531405be'

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
