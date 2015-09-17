
class OrganizationsController < ApplicationController
  before_action :set_organization, only: [:show, :edit, :update, :destroy]

  # GET /organizations
  # GET /organizations.json
  def index
   @organizations = Organization.where(parent_id: nil)
        # @organizations = Organization.all
  end

  def get_organization
    @child_organizations = Organization.where(:parent_id  => params[:id])
    # render :json => {:child_organization => @child_organizations }.to_json
    render :json => @child_organizations.as_json(:only => [:id,:name, :public_name, :organization_type])
  end


  def get_calculate_price

  end


  def api_for_get_calculate_price

     
     @pricing_policy = Organization.where(:id  => params[:org_id]).pluck(:pricing_policy)
     base_price = params[:base_price]

     if @pricing_policy == ["Flexible"]
    
     

     elsif @pricing_policy == ["Fixed"]
     
      require 'open-uri'
      doc = Nokogiri::HTML(open("https://developer.github.com/v3/#http-redirects"))
      
      text = doc.at('body').inner_text
      doc.css('script').remove
      words = doc.at('body').inner_text.scan(/\w+/)
      words_with_number = pp frequencies(words)
      words_to_json = words_with_number.to_json
      words_json = JSON.parse(words_to_json) 
      get_status_number = words_json['status']

      margin = get_status_number
      calculate_price = margin.to_i + base_price.to_i
      
   
     else
      @aok = "this is Prestige"
     end



     render :text =>  calculate_price

  end



  require 'pp'
    def frequencies(words)
      Hash[
      words.group_by(&:downcase).map{ |word,instances|
      [word,instances.length]
      }.sort_by(&:last).reverse
      ]
    end


  # GET /organizations/1
  # GET /organizations/1.json
  def show
        @organizations = Organization.all
  end

  # GET /organizations/new
  def new
    @organization = Organization.new
  end

  # GET /organizations/1/edit
  def edit
  end

  # POST /organizations
  # POST /organizations.json
  def create
    @organization = Organization.new(organization_params)

    respond_to do |format|
      if @organization.save
        format.html { redirect_to organizations_path, notice: 'Organization was successfully created.' }
        format.json { render :show, status: :created, location: @organization }
      else
        format.html { render :new }
        format.json { render json: @organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /organizations/1
  # PATCH/PUT /organizations/1.json
  def update
    respond_to do |format|
      if @organization.update(organization_params)
        format.html { redirect_to @organization, notice: 'Organization was successfully updated.' }
        format.json { render :show, status: :ok, location: @organization }
      else
        format.html { render :edit }
        format.json { render json: @organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organizations/1
  # DELETE /organizations/1.json
  def destroy
    @organization.destroy
    respond_to do |format|
      format.html { redirect_to organizations_url, notice: 'Organization was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organization
      @organization = Organization.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def organization_params
      params.require(:organization).permit(:name, :public_name, :organization_type, :pricing_policy, :country_id, :parent_id, :location => [])
    end
end
