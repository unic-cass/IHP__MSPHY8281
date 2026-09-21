# Pinout Table

| Type      | Pin Name  | Voltage   |
|-----------|----------|----------|
| Power     | Logic_VDD | 1.2V      |
| Ground    | VSS/GND   | 0V        |
| Digital Input | IN        | 1.2V      |
| Digital Input | Vs        | 1.2V      |
| Analog    | Vddls     | 1.5V      |
| Analog    | VBAT      | 5V        |
| Analog    | VBAT2     | < 5V      |
| Analog    | VH        | 0-10V     |
| Analog    | VHLS      | 0-10V     |
| Analog    | Vout      | 0-10V     |

## Verification Status

- **DRC:** Only Filler and Density Errors (Minimal/Maximal)
- **LVS:** Clean, but could not export log so placed .spice at /verification/lvs/ instead
