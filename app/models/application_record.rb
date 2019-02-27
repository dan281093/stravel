class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  include AlgoliaSearch

  algoliasearch do
    geoloc :lat_attr, :lng_attr
  end
end
