class WarehouseTypesController < ApplicationController
  # GET /warehouse_types
  # GET /warehouse_types.json
  def index
    @warehouse_types = WarehouseType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @warehouse_types }
    end
  end

  # GET /warehouse_types/1
  # GET /warehouse_types/1.json
  def show
    @warehouse_type = WarehouseType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @warehouse_type }
    end
  end

  # GET /warehouse_types/new
  # GET /warehouse_types/new.json
  def new
    @warehouse_type = WarehouseType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @warehouse_type }
    end
  end

  # GET /warehouse_types/1/edit
  def edit
    @warehouse_type = WarehouseType.find(params[:id])
  end

  # POST /warehouse_types
  # POST /warehouse_types.json
  def create
    @warehouse_type = WarehouseType.new(params[:warehouse_type])

    respond_to do |format|
      if @warehouse_type.save
        format.html { redirect_to @warehouse_type, notice: 'Warehouse type was successfully created.' }
        format.json { render json: @warehouse_type, status: :created, location: @warehouse_type }
      else
        format.html { render action: "new" }
        format.json { render json: @warehouse_type.errors, status: :unprocessable_entity }
      end
      format.js
    end
  end

  # PUT /warehouse_types/1
  # PUT /warehouse_types/1.json
  def update
    @warehouse_type = WarehouseType.find(params[:id])

    respond_to do |format|
      if @warehouse_type.update_attributes(params[:warehouse_type])
        format.html { redirect_to @warehouse_type, notice: 'Warehouse type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @warehouse_type.errors, status: :unprocessable_entity }
      end
      format.js
    end
  end

  # DELETE /warehouse_types/1
  # DELETE /warehouse_types/1.json
  def destroy
    @warehouse_type = WarehouseType.find(params[:id])
    @warehouse_type.destroy

    respond_to do |format|
      format.html { redirect_to warehouse_types_url }
      format.json { head :no_content }
      format.js
    end
  end
end
