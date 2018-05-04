class Cods < Formula
  desc 'COdeup Deployment Scripts'
  version '1.2.0'
  url 'https://github.com/zgulde/cods/archive/v1.2.0.tar.gz'
  sha256 '638b64463bce1295554fd8a7a8d3d51f54834ef2af5772d4d95c389c48d564f7'

  head 'https://github.com/zgulde/cods.git', :branch => 'develop'
  devel do
    url 'https://github.com/zgulde/cods/archive/master.zip'
    version '1.3.0-beta'
  end

  def install
    bin.install 'bin/init.sh' => 'cods'
    prefix.install 'server'
    prefix.install 'scripts'
    prefix.install 'CHANGELOG.md' # this contains version information
    prefix.install 'templates'
  end
end
