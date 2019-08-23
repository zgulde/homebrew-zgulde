class Cods < Formula
  desc 'COdeup Deployment Scripts'
  version '3.1.1'
  url 'https://github.com/zgulde/cods/archive/v3.1.1.tar.gz'
  sha256 'd42eed5c236b29d54cfdda8e99af69bc3db62c9daf618616470b54fa9b681ae0'

  depends_on 'python'
  depends_on 'perl'

  head 'https://github.com/zgulde/cods.git', :branch => 'master'

  def install
    bin.install 'bin/cods.sh' => 'cods'
    prefix.install 'scripts'
    prefix.install 'templates'
    prefix.install 'bin'
    prefix.install 'CHANGELOG.md' # this contains version information
  end
end
