# frozen_string_literal: true

class AuthorsController < ApplicationController
  def show
    @author = current_author
  end

  def new
    @author = Author.new
  end

  def edit
    @author = current_author
  end

  def create
    @author = Author.create(author_params)
    if @author.valid?
      redirect_to author_path(@author)
    else
      render :new
    end
  end

  def update
    @author = current_author

    @author.update(author_params)
    if @author.valid?
      redirect_to author_path(@author)
    else
      render :edit
    end
  end

private

  def author_params
    params.permit(:name, :email, :phone_number)
  end

  def current_author
    Author.find(params[:id])
  end
end
