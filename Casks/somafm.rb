cask 'somafm' do
  version '0.2.0'
  sha256 '9d15ad0e41cbb352f382be8132c8af366fee1bcf46d99606b3aa059f5e55712c'

  url "https://github.com/alfg/somafm/releases/download/v#{version}/SomaFM-#{version}.dmg"
  appcast 'https://github.com/alfg/somafm/releases.atom',
          checkpoint: '233348c04067425f8e3281dabd79d0e2724983d883d84cdb63b08ab426eddecf'
  name 'SomaFM'
  homepage 'https://github.com/alfg/somafm'

  app 'SomaFM.app'
end
