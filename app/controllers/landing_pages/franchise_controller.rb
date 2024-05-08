# frozen_string_literal: true

module LandingPages
  class FranchiseController < ApplicationController
    def index
      @franchise_intent = FranchiseIntent.new
    end

    def create
      franchise_intent = FranchiseIntent.new(franchise_intent_params)

      if franchise_intent.save
        flash[:success] = 'Cadastro efetuado com sucesso.'
        redirect_to landing_pages_franchise_index_path
      else
        flash.now[:error] = 'Falha ao efetuar cadastro, tente novamente.'
        render :index
      end
    end

    private

    def franchise_intent_params
      params.require(:franchise_intent)
            .permit(:first_name, :last_name, :email, :phone, :investor_profile, :investor_value)
    end
  end
end
