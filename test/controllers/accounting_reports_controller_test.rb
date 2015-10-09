require 'test_helper'

class AccountingReportsControllerTest < ActionController::TestCase
  setup do
    @accounting_report = accounting_reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accounting_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accounting_report" do
    assert_difference('AccountingReport.count') do
      post :create, accounting_report: { ammendment: @accounting_report.ammendment, cash_period_start: @accounting_report.cash_period_start, cash_year_start: @accounting_report.cash_year_start, committee_id: @accounting_report.committee_id, contributions_itemized: @accounting_report.contributions_itemized, contributions_itemized_ytd: @accounting_report.contributions_itemized_ytd, contributions_unitemized: @accounting_report.contributions_unitemized, contributions_unitemized_ytd: @accounting_report.contributions_unitemized_ytd, debts_owed_by: @accounting_report.debts_owed_by, debts_owed_to: @accounting_report.debts_owed_to, expenditures_itemized: @accounting_report.expenditures_itemized, expenditures_itemized_ytd: @accounting_report.expenditures_itemized_ytd, expenditures_unitemized: @accounting_report.expenditures_unitemized, expenditures_unitemized_ytd: @accounting_report.expenditures_unitemized_ytd, period_end: @accounting_report.period_end, period_start: @accounting_report.period_start, signed_at: @accounting_report.signed_at, source_url: @accounting_report.source_url, type: @accounting_report.type }
    end

    assert_redirected_to accounting_report_path(assigns(:accounting_report))
  end

  test "should show accounting_report" do
    get :show, id: @accounting_report
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @accounting_report
    assert_response :success
  end

  test "should update accounting_report" do
    patch :update, id: @accounting_report, accounting_report: { ammendment: @accounting_report.ammendment, cash_period_start: @accounting_report.cash_period_start, cash_year_start: @accounting_report.cash_year_start, committee_id: @accounting_report.committee_id, contributions_itemized: @accounting_report.contributions_itemized, contributions_itemized_ytd: @accounting_report.contributions_itemized_ytd, contributions_unitemized: @accounting_report.contributions_unitemized, contributions_unitemized_ytd: @accounting_report.contributions_unitemized_ytd, debts_owed_by: @accounting_report.debts_owed_by, debts_owed_to: @accounting_report.debts_owed_to, expenditures_itemized: @accounting_report.expenditures_itemized, expenditures_itemized_ytd: @accounting_report.expenditures_itemized_ytd, expenditures_unitemized: @accounting_report.expenditures_unitemized, expenditures_unitemized_ytd: @accounting_report.expenditures_unitemized_ytd, period_end: @accounting_report.period_end, period_start: @accounting_report.period_start, signed_at: @accounting_report.signed_at, source_url: @accounting_report.source_url, type: @accounting_report.type }
    assert_redirected_to accounting_report_path(assigns(:accounting_report))
  end

  test "should destroy accounting_report" do
    assert_difference('AccountingReport.count', -1) do
      delete :destroy, id: @accounting_report
    end

    assert_redirected_to accounting_reports_path
  end
end
