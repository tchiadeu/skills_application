class SkillsController < ApplicationController
  before_action :set_skills

  def index
  end

  def show
    @skill = @skills[params[:skill]]
  end

  private
    def set_skills
      @skills = YAML.load_file("#{Rails.root}/data/skills.yml")
    end
end
