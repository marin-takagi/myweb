class WorksController < ApplicationController
  def index
    @works = Work.all
  end

  def show
    @work = Work.find(params[:id])
  end

  def new
    @work = Work.new
  end

  def create
    @work = Work.new(work_params)
    if @work.save
      redirect_to @work
    else
      render 'new'
    end
  end

  def edit
    @work = Work.find(params[:id])
  end

  def update
    @work = Work.find(params[:id])
    if @work.update_attributes(work_params) # attributes => 更新と保存を同時に行う。
      redirect_to @work
    else
      render 'edit'
    end
  end

  def destroy
    Work.find(params[:id]).destroy
    flash[:success] = "削除しました。"
    redirect_to index_path
  end


  private
    def work_params
      params.require(:work).permit(:name, :contents, :link, :image)
    end
end
