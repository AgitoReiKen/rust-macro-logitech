# rust-macro
Rust (game) macrosses for `Logitech's lua api`
Macrosses taken from [https://botmek.ru/share/?group=Rust] and converted to lua by `amcToLua.py`

How to use Converter:
- Place needed `.amc` into `amc_files`
- copy the name of .amc file (without .amc)
- edit the `entry` variable in `amcToLua.py`
- launch the script `py amcToLua.py`

Notes: 
- Macro's recommended `input.sensitivity` must be close to your original `input.sensitivity`. If your sens is 0.5, look for macro with 0.4-0.6 sens
- Mouse DPI doesn't matter
- FOV multiplier is calculated in .lua. Differences accepted.
