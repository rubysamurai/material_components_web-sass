require 'spec_helper'

describe 'Rails app' do
  it 'adds stylesheet files' do
    expect(Rails.application.assets.find_asset('custom'))
      .to be_instance_of(Sprockets::Asset)
  end

  it 'adds javascript file' do
    expect(Rails.application.assets.find_asset('material-components-web'))
      .to be_instance_of(Sprockets::Asset)
  end

  it 'adds material icon font files' do
    %w(eot ttf woff woff2).each do |extension|
      expect(Rails.application.assets.find_asset("material-icons/MaterialIcons-Regular.#{extension}"))
        .to be_instance_of(Sprockets::Asset)
    end
  end

  it 'adds roboto font files' do
    %w(Bold Light Medium Regular Thin).each do |font|
      %w(ttf woff woff2).each do |extension|
        expect(Rails.application.assets.find_asset("roboto/Roboto-#{font}.#{extension}"))
          .to be_instance_of(Sprockets::Asset)
      end
    end
  end
end
