class ClientPoliciesController < ApplicationController
  before_action :set_client_policy, only: [:show, :edit, :update, :destroy]

  # GET /client_policies
  # GET /client_policies.json
  def index
    @client_policies = ClientPolicy.all
  end

  # GET /client_policies/1
  # GET /client_policies/1.json
  def show
  end

  # GET /client_policies/new
  def new
    @client_policy = ClientPolicy.new
  end

  # GET /client_policies/1/edit
  def edit
  end

  # POST /client_policies
  # POST /client_policies.json
  def create
    @client_policy = ClientPolicy.new(client_policy_params)

    respond_to do |format|
      if @client_policy.save
        format.html { redirect_to @client_policy, notice: 'Client policy was successfully created.' }
        format.json { render :show, status: :created, location: @client_policy }
      else
        format.html { render :new }
        format.json { render json: @client_policy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /client_policies/1
  # PATCH/PUT /client_policies/1.json
  def update
    respond_to do |format|
      if @client_policy.update(client_policy_params)
        format.html { redirect_to @client_policy, notice: 'Client policy was successfully updated.' }
        format.json { render :show, status: :ok, location: @client_policy }
      else
        format.html { render :edit }
        format.json { render json: @client_policy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /client_policies/1
  # DELETE /client_policies/1.json
  def destroy
    @client_policy.destroy
    respond_to do |format|
      format.html { redirect_to client_policies_url, notice: 'Client policy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client_policy
      @client_policy = ClientPolicy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def client_policy_params
      params.require(:client_policy).permit(:client_name_id, :coverage_type_id, :insurer_id, :loss_runs_reqd, :renewal_date, :underwriter_id, :quote_recieved, :quote_recieved_date, :did_client_confirmed, :did_confirm_to_underwriter, :did_underwriter_confirm)
    end
end
