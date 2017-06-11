class StudentsController < ApplicationController
  def index
    # @students = Student.all
    @q = Student.ransack(params[:q])
    @students = @q.result

    render("students/index.html.erb")
  end

  def show
    @student = Student.find(params[:id])

    render("students/show.html.erb")
  end

  def new
    @student = Student.new

    render("students/new.html.erb")
  end

  def create
    @student = Student.new

    @student.name = params[:name]
    @student.company = params[:company]
    @student.function = params[:function]
    @student.industry = params[:industry]
    @student.city = params[:city]
    @student.state = params[:state]
    @student.region = params[:region]
    @student.country = params[:country]
    @student.citizenship = params[:citizenship]

    save_status = @student.save

    if save_status == true
      redirect_to("/students/#{@student.id}", :notice => "Student created successfully.")
    else
      render("students/new.html.erb")
    end
  end

  def edit
    @student = Student.find(params[:id])

    render("students/edit.html.erb")
  end

  def update
    @student = Student.find(params[:id])

    @student.name = params[:name]
    @student.company = params[:company]
    @student.function = params[:function]
    @student.industry = params[:industry]
    @student.city = params[:city]
    @student.state = params[:state]
    @student.region = params[:region]
    @student.country = params[:country]
    @student.citizenship = params[:citizenship]

    save_status = @student.save

    if save_status == true
      redirect_to("/students/#{@student.id}", :notice => "Student updated successfully.")
    else
      render("students/edit.html.erb")
    end
  end

  def destroy
    @student = Student.find(params[:id])

    @student.destroy

    if URI(request.referer).path == "/students/#{@student.id}"
      redirect_to("/", :notice => "Student deleted.")
    else
      redirect_to(:back, :notice => "Student deleted.")
    end
  end
end
