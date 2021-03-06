require File.expand_path("../../Abstract/abstract-php-phar", __FILE__)

class Phpunit < AbstractPhpPhar
  init
  desc "Programmer-oriented testing framework for PHP"
  homepage "http://phpunit.de"
  url "https://phar.phpunit.de/phpunit-5.2.9.phar"
  sha256 "1ad347bfd34a09a72bbfc9ef05b3b230dc8087194297dfe5d33138f995bd580f"

  bottle do
    cellar :any_skip_relocation
    sha256 "4a919863a1883cfcbf990a5bbdf856cb67c2e79ef56ad68d7ba4753c531f276c" => :el_capitan
    sha256 "c18e9b2475e1e049a41d2e90168716b08c08fcafe527414325ed5dd1245e8b64" => :yosemite
    sha256 "d2d5ff80b9afffb6c7671e6fd8fcd9a56da644f59cb0e6de1f42c21f88079b6d" => :mavericks
  end

  def phar_file
    "phpunit-#{version}.phar"
  end

  test do
    shell_output("phpunit --version").include?(version)
  end
end
