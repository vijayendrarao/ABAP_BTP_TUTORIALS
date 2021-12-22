@AbapCatalog.sqlViewName: 'ZCDSACCOUNTS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface CDS View on ZACCOUNTS_VRAO'
define view ZI_CDS_ZACCOUNTS_VRAO
  as select from zaccounts_vrao
  association [0..1] to I_Currency as _Currency on $projection.Currency = _Currency.Currency
{
  key account_number   as AccountNumber,
      bank_customer_id as BankCustomerId,
      bank_name        as BankName,
      city             as City,
      @Semantics.amount.currencyCode: 'currency'
      balance          as Balance,
      @Semantics.currencyCode: true
      currency         as Currency,
      account_category as AccountCategory,
      lastchangedat    as Lastchangedat,
      
      _Currency
}
