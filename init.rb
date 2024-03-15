# Source Intrcom Org (DocketWise)
EXPORT_ACCESS_TOKEN = "6f4cca74_ddc9_4120_849e_4e87866e76c6"
# Target Intercom Org (Affinipay Test)
IMPORT_ACCESS_TOKEN = "35497e64_144f_4dfd_aa65_bc7eebc6e789"
COLLECTION_NAME = "Contacts and Matters"
AUTHOR_ID = "c3vx3woz"


#If you need to change URLS within your Articles that point to your old Helpcenter, fill in these fields. Otherwise, leave blank.
REPLACE_ARTICLE_URLS = true
EXPORT_CUSTOM_DOMAIN = ""
IMPORT_CUSTOM_DOMAIN = ""

#commandthatexports-importsarticles
#List all articles that need to be published
#if needs to be copied -- create an ArticleIndex object. This will contain both the import_id AND the export_id



require 'intercom'
require 'nokogiri'
require 'mutations'
require 'pry'
require './fix_redirects.rb'
require './article.rb'
require './article_collection.rb'
require './article_importer.rb'


ExportWorkspace = Intercom::Client.new(token: EXPORT_ACCESS_TOKEN)
ImportWorkspace = Intercom::Client.new(token: IMPORT_ACCESS_TOKEN)
Collection = ImportWorkspace.collections.create(name: COLLECTION_NAME)
