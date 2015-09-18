class OrganizationsController < ApplicationController
  before_action :set_organization, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_admin!, :except => [:api_for_get_calculate_price]
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

      require 'open-uri'
      doc = Nokogiri::HTML(open("http://reuters.com/"))
      
      text = doc.at('body').inner_text
      aok = doc.css('script').remove

      css_value = doc.xpath('@style|.//@style').remove
      words = doc.at('body').inner_text.scan(/\w+/)

      directory = "/#{Rails.root}/app/assets/"

      File.open(File.join(directory, 'file2.txt'), 'w') do |f|
        f.puts words
      end

      word_contents = File.read("/#{Rails.root}/app/assets/file2.txt")
      all_a = word_contents.count("a")


      File.open(File.join(directory, 'file.txt'), 'w') do |f|
        f.puts css_value
      end

      contents = File.read("/#{Rails.root}/app/assets/file.txt")
      clean_content1 = contents.gsub(":",",")
      clean_content2 = clean_content1.gsub(";",",")

      content_arr = clean_content2.scan /\w/
      css_number_of_a = content_arr.count('a') 

      number_of_letter_a = all_a.to_i - css_number_of_a.to_i
      margin = number_of_letter_a/100

      calculate_price = margin.to_i + base_price.to_i


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
      
      require 'nokogiri'
      require 'open-uri'
      require 'awesome_print'
      require 'pp'

      doc = Nokogiri::XML(open("http://www.yourlocalguardian.co.uk/sport/rugby/rss/"))
      pub = pp doc.xpath("//*").map(&:name).each_with_object({}) {|n, r| r[n] = (r[n] || 0) + 1 }
      pub_to_json = pub.to_json
      pub_json = JSON.parse(pub_to_json) 
      get_pub_number = pub_json['pubDate']

      margin = get_pub_number
      calculate_price = margin.to_i + base_price.to_i
    
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
    @country = Country.all()
    @country_list=[]
    @country.each do |c|
    @country_list << [c.name,c.id]
    end

    @parent = Organization.all()
    @parent_list=[]
    @parent.each do |c|
    @parent_list << [c.name,c.id]
    end
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
