
DELETE FROM pm.PartyAttachment
DELETE FROM pm.PartyBankAccount
DELETE FROM pm.PartyCode
DELETE FROM pm.PartyRoles
DELETE FROM pm.Contact
DELETE FROM pm.PartyBranch
DELETE FROM pm.Party
DELETE FROM acc.FiscalYear
DELETE FROM shd.Branch

DELETE FROM mon.Auditing
DELETE FROM mf.BankDeposit
DELETE FROM mf.NAV
DELETE FROM req.Request



DELETE FROM acc.DetailLedger WHERE ClassId NOT IN (5)

DECLARE @id BIGINT = (SELECT MAX(Id) FROM acc.DetailLedger)

DBCC CHECKIDENT('pm.PartyAttachment', RESEED,0)
DBCC CHECKIDENT('pm.PartyBankAccount', RESEED,0)
DBCC CHECKIDENT('pm.PartyCode', RESEED,0)
DBCC CHECKIDENT('pm.PartyRoles', RESEED,0)
DBCC CHECKIDENT('pm.Contact', RESEED,0)
DBCC CHECKIDENT('pm.PartyBranch', RESEED,0)
DBCC CHECKIDENT('pm.Party', RESEED,0)
DBCC CHECKIDENT('acc.FiscalYear', RESEED,0)
DBCC CHECKIDENT('shd.Branch', RESEED,0)
DBCC CHECKIDENT('mf.BankDeposit', RESEED,0)
DBCC CHECKIDENT('mf.NAV', RESEED,0)
DBCC CHECKIDENT('req.Request', RESEED,0)
DBCC CHECKIDENT('acc.DetailLedger', RESEED,@id)


