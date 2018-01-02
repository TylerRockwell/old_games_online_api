task generate_platforms: :environment do
  Platform::PLATFORM_LIST.each do |title|
    platform = Platform.find_or_initialize_by(title: title)
    platform.save if platform.changed?
  end
end
