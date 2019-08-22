class Cods < Formula
  desc 'COdeup Deployment Scripts'
  version '3.0.1'
  url 'https://github.com/zgulde/cods/archive/v3.0.1.tar.gz'
  sha256 '6b446a8594983ad36af0456d86fda4601b503d984239afdb5311089ebaf54583'

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
