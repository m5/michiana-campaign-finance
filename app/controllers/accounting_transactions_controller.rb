class AccountingTransactionsController < ApplicationController
  before_action :set_accounting_transaction, only: [:show, :edit, :update, :destroy]

  # GET /accounting_transactions
  # GET /accounting_transactions.json
  def index
    @accounting_transactions = AccountingTransaction.all
  end

  # GET /accounting_transactions/1
  # GET /accounting_transactions/1.json
  def show
  end

  # GET /accounting_transactions/new
  def new
    @accounting_transaction = AccountingTransaction.new
  end

  # GET /accounting_transactions/1/edit
  def edit
  end

  # POST /accounting_transactions
  # POST /accounting_transactions.json
  def create
    @accounting_transaction = AccountingTransaction.new(accounting_transaction_params)

    respond_to do |format|
      if @accounting_transaction.save
        format.html { redirect_to @accounting_transaction, notice: 'Accounting transaction was successfully created.' }
        format.json { render :show, status: :created, location: @accounting_transaction }
      else
        format.html { render :new }
        format.json { render json: @accounting_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accounting_transactions/1
  # PATCH/PUT /accounting_transactions/1.json
  def update
    respond_to do |format|
      if @accounting_transaction.update(accounting_transaction_params)
        format.html { redirect_to @accounting_transaction, notice: 'Accounting transaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @accounting_transaction }
      else
        format.html { render :edit }
        format.json { render json: @accounting_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accounting_transactions/1
  # DELETE /accounting_transactions/1.json
  def destroy
    @accounting_transaction.destroy
    respond_to do |format|
      format.html { redirect_to accounting_transactions_url, notice: 'Accounting transaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accounting_transaction
      @accounting_transaction = AccountingTransaction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def accounting_transaction_params
      params.require(:accounting_transaction).permit(:counterparty_id, :date, :amount, :amount_ytd, :type, :nature)
    end
end
