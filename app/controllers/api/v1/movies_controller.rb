# frozen_string_literal: true

class Api::V1::MoviesController < ApplicationController
  def index
    render json: Movie.all
  end

  def create
    movie = Movie.create(movie_params)
    render json: movie
  end

  def destroy
    Movie.destroy(params[:id])
  end

  def update
    movie = Movie.find(param[:id])
    movie.update_attributes(movie_params)
    render json: fruit
  end

  private

  def movie_params
    params.require(:movie).permit(:id, :title, :genre, :year, :rating)
  end
end
