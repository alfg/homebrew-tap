cask 'somafm' do
  version '0.3.1'
  sha256 '1a80ca569aeb86bd4da88da31d134fc7c273e58ecc3645e2d2d6af2cd22cbd18'

  url "https://github.com/alfg/somafm/releases/download/v#{version}/SomaFM-#{version}.dmg"
  appcast 'https://github.com/alfg/somafm/releases.atom',
          checkpoint: '17e2e5a28071c1cfa9ef1bf25053be2c6ad11626a755a2792c71a34c64f79ce6'
  name 'SomaFM'
  homepage 'https://github.com/alfg/somafm'

  app 'SomaFM.app'
end
