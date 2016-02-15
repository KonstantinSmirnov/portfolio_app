class Admin::DashboardController < ApplicationAdminController

    def edit
      @content = Content.first
    end

    def update
      @content = Content.first

      respond_to do |format|
        if @content.update(content_params)
          format.html {
            flash.now[:success] = "Content was successfully updated."
            render :edit
          }
        else
          format.html { render :edit }
        end
      end
    end

    private

    def content_params
      params.require(:content).permit(:header, :subheader, :text)
    end

end
