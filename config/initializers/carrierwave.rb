CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',               
    :aws_access_key_id      => 'AKIAIKWHFV2TIEEV4HSA',
    :aws_secret_access_key  => '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'
  }
  if Rails.env.development?
    config.fog_directory = 'stuff_finder_jayne_dev' #make new bucket names
    #config.fog_credentials[:region] = 'us-west-1'
  else
    config.fog_directory = 'stuff_finder_jayne'
  end
end
