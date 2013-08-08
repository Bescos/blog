require 'lorem'

FactoryGirl.define do
    #-------------------------------  Sequences -------------------------------
    sequence :email do |n|
        "person#{n}@example.com"
    end

    sequence :name do |n|
        "name#{n}"
    end

    sequence :login do |n|
        "login#{n}"
    end

    sequence :text do |n|
        "Text#{n}" + Lorem::Base.new('words', 100).output
    end

    #---------------------------------- Model ---------------------------------
    factory :user do
        email
        password "foobarbar"
        password_confirmation 'foobarbar'
    end

    factory :post do
        user
        title { FactoryGirl.generate :name }
        body  { FactoryGirl.generate :text }
    end

    factory :comment do
        name { FactoryGirl.generate :name }
        body  { FactoryGirl.generate :text }
        post
    end

    factory :tag do
        name
    end

    factory :category do
        name
    end

end
