# frozen_string_literal: true

require 'rspec'
require 'page-object'
require 'eventually_helper'

World(PageObject::PageFactory)
World(EventuallyHelper)
