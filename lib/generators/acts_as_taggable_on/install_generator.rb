module ActsAsTaggableOn
	module Generators
		class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../../templates', __FILE__)

			desc "create necessary migrations"
		  def migrations
				i = 0
				%w{acts_as_taggable_on_migration.rb add_missing_unique_indices.rb add_taggings_counter_cache_to_tags.rb add_missing_taggable_index.rb change_collation_for_tag_names.rb}.each do |migration|
        	template migration, "db/migrate/#{(Time.now + (i+=1).second).to_s(:number)}_#{migration}"
				end
		  end
		end
	end
end
