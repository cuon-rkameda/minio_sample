CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  case Rails.env
  when 'production'
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: ENV['MINIO_SAMPLE_MINIO_ACCESS_KEY'],
      aws_secret_access_key: ENV['MINIO_SAMPLE_MINIO_SECRET_KEY'],
      region: 'ap-northeast-1',
    }
  else
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: ENV['MINIO_SAMPLE_MINIO_ACCESS_KEY'],
      aws_secret_access_key: ENV['MINIO_SAMPLE_MINIO_SECRET_KEY'],
      region: 'ap-northeast-1',
      host: 'localhost',
      endpoint: 'http://localhost:9000',
      path_style: true,
    }
  end
  config.fog_directory = 'minio-sample'
end