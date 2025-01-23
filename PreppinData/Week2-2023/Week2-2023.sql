select
replace(sort_code,'-','') as "Sort Code"
from TIL_PLAYGROUND.PREPPIN_DATA_INPUTS.PD2023_WK02_SWIFT_CODES s
inner join TIL_PLAYGROUND.PREPPIN_DATA_INPUTS.PD2023_WK02_TRANSACTIONS t
    on s.bank= t.bank