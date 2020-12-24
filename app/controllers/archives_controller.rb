class ArchivesController < ApplicationController
  def index
  	@entries = current_user.entries.all.group_by(&:day)
  end
end
