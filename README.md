# rust-macro-logitech
Rust (game) macrosses for `Logitech's lua api`

Macrosses taken from [https://botmek.ru/share/?group=Rust] and converted to lua by `amcToLua.py`

#### How to use:
- To use original file. you need at least 5 extra buttons on your logitech mouse

#### Support:
- Sensitivity scaling (*read notes)
- FOV scaling
- Macro switch
- Silencer
- Muzzle boost
- Holo/8x

#### Issues:
- it's problematic to use without second monitor as there is no notification method in logitech api
- it's problematic to switch macro as there is no keyboard bindings

#### How to edit:
- place original macro with `.amc` extension into `amc_files`
- copy the name of `.amc` file (without .amc)
- edit the `entry` variable in `amcToLua.py`
- launch the script `py amcToLua.py`
- find needed weapon (ak/smg/thompson/mp5/lr) in .lua and replace macro data. Also make sure to edit `BaseSens` and `BaseFOV` variables.

#### Notes: 
- macro's recommended `input.sensitivity` must be close to your original `input.sensitivity`. If your sens is 0.5, look for macro with 0.4-0.6 sens
- mouse DPI doesn't matter
- fov multiplier is calculated in .lua. Differences accepted.

#### Do not abuse low-skilled players.
#### Being super agressive will probably result in a macro check or ban on some servers. Use it carefully
