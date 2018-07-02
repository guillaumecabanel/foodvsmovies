# frozen_string_literal: true

module LinkComponent
  extend ComponentHelper
  
  property :href, required: true

  def external_link?
    @href.starts_with? "http"
  end
end
