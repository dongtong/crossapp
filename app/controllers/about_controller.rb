#-*- coding: utf-8 -*-
class AboutController < ApplicationController
  def index
  	@about = About.first || About.create(content: "请稍等...")
  end
end
