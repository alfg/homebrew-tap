cask 'somafm' do
  version '0.3.2'
  sha256 '23ed962c115da748425ed6416b78859de3d0b868b2c70957ffc7deb69003425b'

  url "https://github.com/alfg/somafm/releases/download/v#{version}/SomaFM-#{version}.dmg"
  appcast 'https://github.com/alfg/somafm/releases.atom',
          checkpoint: 'aac0a20962dea46ae1c17ba7b014b98df2d2ee4c4fca5845d77e5db2ccabbebd'
  name 'SomaFM'
  homepage 'https://github.com/alfg/somafm'

  app 'SomaFM.app'
end
