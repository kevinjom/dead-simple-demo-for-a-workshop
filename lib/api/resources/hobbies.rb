require 'grape'
require_relative '../../util/files.rb'

class Hobbies < Grape::API
  format :txt

  resource :hobbies do
    desc 'put hobbies'
    params do
      requires :name, :sex, :hobby
    end
    put '' do
      line="#{params['name']}, #{params['sex']}, #{params['hobby']}"
      Files.append(line)
      "\nHave a good day, #{params[:name]}\n#{Files.resp}"
    end
  end
end