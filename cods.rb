class Cods < Formula
  desc 'COdeup Deployment Scripts'
  version '1.2.2'
  url 'https://github.com/zgulde/cods/archive/v1.2.2.tar.gz'
  sha256 '47a6b37aa7de2c874118ea2ec83961ae6228d93e0bd8d836a252f5333bbcb9c6'

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
