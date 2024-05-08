# frozen_string_literal: true

module ApplicationHelper
  def load_json_ld(file_name)
    file_path = Rails.root.join('seo', 'ld_json', "#{file_name}.json.erb")

    File.exist?(file_path) ? ld_json_file = File.read(file_path) : return

    content_tag(:script, type: 'application/ld+json') do
      ld_json_file.html_safe
    end
  end
end
