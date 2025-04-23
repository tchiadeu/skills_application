class SkillsController < ApplicationController
  def index
    @skills = YAML.load_file("#{Rails.root}/data/skills.yml")
  end

  def show
  end
end
