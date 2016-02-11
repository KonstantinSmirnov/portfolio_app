class ApplicationSignedInController < ApplicationController
  before_action :require_login #User must be logged in
end