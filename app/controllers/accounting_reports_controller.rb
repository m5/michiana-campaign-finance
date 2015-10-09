class AccountingReportsController < ApplicationController
  before_action :set_accounting_report, only: [:show, :edit, :update, :destroy]

  # GET /accounting_reports
  # GET /accounting_reports.json
  def index
    @accounting_reports = AccountingReport.all
  end

  # GET /accounting_reports/1
  # GET /accounting_reports/1.json
  def show
  end

  # GET /accounting_reports/new
  def new
    @accounting_report = AccountingReport.new
  end

  # GET /accounting_reports/1/edit
  def edit
  end

  # POST /accounting_reports
  # POST /accounting_reports.json
  def create
    @accounting_report = AccountingReport.new(accounting_report_params)

    respond_to do |format|
      if @accounting_report.save
        format.html { redirect_to @accounting_report, notice: 'Accounting report was successfully created.' }
        format.json { render :show, status: :created, location: @accounting_report }
      else
        format.html { render :new }
        format.json { render json: @accounting_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accounting_reports/1
  # PATCH/PUT /accounting_reports/1.json
  def update
    respond_to do |format|
      if @accounting_report.update(accounting_report_params)
        format.html { redirect_to @accounting_report, notice: 'Accounting report was successfully updated.' }
        format.json { render :show, status: :ok, location: @accounting_report }
      else
        format.html { render :edit }
        format.json { render json: @accounting_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accounting_reports/1
  # DELETE /accounting_reports/1.json
  def destroy
    @accounting_report.destroy
    respond_to do |format|
      format.html { redirect_to accounting_reports_url, notice: 'Accounting report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accounting_report
      @accounting_report = AccountingReport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def accounting_report_params
      params.require(:accounting_report).permit(:committee_id, :type, :period_start, :period_end, :ammendment, :cash_year_start, :cash_period_start, :contributions_itemized, :contributions_itemized_ytd, :contributions_unitemized, :contributions_unitemized_ytd, :expenditures_itemized, :expenditures_unitemized, :expenditures_itemized_ytd, :expenditures_unitemized_ytd, :debts_owed_to, :debts_owed_by, :signed_at, :source_url)
    end
end
