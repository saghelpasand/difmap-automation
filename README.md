# difmap-automation
This Difmap script processes VLBA data of an X-ray binary jet by iteratively fitting Gaussian components and applying phase self-calibration, refining the model and map resolution to produce a clean, well-calibrated final image.
# Difmap Imaging Automation

This repository contains simple scripts to automate **radio interferometric imaging** using [Difmap](https://ftp.astro.caltech.edu/pub/difmap/).

It allows you to run Difmap in **non-interactive mode**, automatically loading your UVFITS file, cleaning, restoring, and exporting the final map and model.

---

## 🧰 Requirements

- Linux or macOS (tested on Ubuntu)
- [Difmap](https://ftp.astro.caltech.edu/pub/difmap/) installed and available in your `$PATH`
- Bash shell
- One or more UVFITS files for imaging

---

## 📂 Repository Contents

| File | Description |
|------|--------------|
| `auto_image.difmap` | Difmap command script for automated imaging (CLEAN + self-cal). |
| `run_difmap.sh` | Bash wrapper to execute Difmap in non-interactive mode. |

---

## 🚀 Usage

1. Make sure both scripts are in the same directory.
2. Make the shell script executable:

   ```bash
   chmod +x run_difmap.sh
   Run the script with your UVFITS file:
   ./run_difmap.sh mysource.UVFITS
   
Tips

You can edit auto_image.difmap to adjust CLEAN iterations, map size, or self-cal parameters.

To process multiple UVFITS files automatically, you can loop over them in bash:
for f in *.UVFITS; do
    ./run_difmap.sh "$f"
done

📜 License

This project is released under the MIT License
.

👩‍🔬 Author

Samaneh Aghelpasand
Astronomy & Astrophysics | Radio Interferometry & VLBI Imaging
GitHub: @saghelpasand
