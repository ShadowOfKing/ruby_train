class HelloController < ApplicationController
  def world
    render text: 'Hello, world!'
  end
  def plain
      render plain: 'plain text'
  end
  def hi
    @title = 'Заголовок страницы ли?'
    render "hi"
  end
end
