
UPDATE  shd.Broker
SET     DetailLedgerId = dl.Id ,
        DetailLedgerCode = dl.Code
FROM    acc.DetailLedger dl
        JOIN shd.Broker br ON br.Title = dl.Title;