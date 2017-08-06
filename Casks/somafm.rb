cask 'somafm' do
  version '0.3.0'
  sha256 'ca8cad7cb28ddcc4c6f3ba10d488c83af8745f966f439fca6246d539f22e802b'

  url "https://github.com/alfg/somafm/releases/download/v#{version}/SomaFM-#{version}.dmg"
  appcast 'https://github.com/alfg/somafm/releases.atom',
          checkpoint: '5afaf0bfdb8b96964c507146d3e37d98d8a554ca10cb8fe62a3ff32c3f071fc9'
  name 'SomaFM'
  homepage 'https://github.com/alfg/somafm'

  app 'SomaFM.app'
end
