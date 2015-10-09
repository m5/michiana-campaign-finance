require 'test_helper'

class AccountingTransactionsControllerTest < ActionController::TestCase
  setup do
    @accounting_transaction = accounting_transactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accounting_transactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accounting_transaction" do
    assert_difference('AccountingTransaction.count') do
      post :create, accounting_transaction: { amount: @accounting_transaction.amount, amount_ytd: @accounting_transaction.amount_ytd, counterparty_id: @accounting_transaction.counterparty_id, date: @accounting_transaction.date, nature: @accounting_transaction.nature, type: @accounting_transaction.type }
    end

    assert_redirected_to accounting_transaction_path(assigns(:accounting_transaction))
  end

  test "should show accounting_transaction" do
    get :show, id: @accounting_transaction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @accounting_transaction
    assert_response :success
  end

  test "should update accounting_transaction" do
    patch :update, id: @accounting_transaction, accounting_transaction: { amount: @accounting_transaction.amount, amount_ytd: @accounting_transaction.amount_ytd, counterparty_id: @accounting_transaction.counterparty_id, date: @accounting_transaction.date, nature: @accounting_transaction.nature, type: @accounting_transaction.type }
    assert_redirected_to accounting_transaction_path(assigns(:accounting_transaction))
  end

  test "should destroy accounting_transaction" do
    assert_difference('AccountingTransaction.count', -1) do
      delete :destroy, id: @accounting_transaction
    end

    assert_redirected_to accounting_transactions_path
  end
end
