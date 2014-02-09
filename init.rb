Rails.configuration.to_prepare do
  unless WikiContent.included_modules.include?(WikiLinksWikiContentPatch)
    WikiContent.send(:include, WikiLinksWikiContentPatch)
  end
end

Redmine::Plugin.register :wiki_links do
  name 'Wiki Links plugin'
  author 'Antonio Garcia-Dominguez'
  description 'Wiki link management for Redmine'
  version '0.0.1'
  url 'http://github.com/bluezio/wiki_links'
  author_url 'http://neptuno.uca.es/~agarcia'
end
