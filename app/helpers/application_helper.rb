module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title)
    I18n.t("company.name") + (page_title.empty? ? "" : " | #{page_title}")
  end
end
