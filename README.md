# CO₂ Detection Using Hyperspectral Data (Indian Pines Dataset)

This project simulates the detection of CO₂-like absorption features using a hyperspectral dataset. It uses the publicly available Indian Pines dataset and runs entirely in **MATLAB Online**, with no need for the Hyperspectral Imaging Toolbox.

---

## 🔍 Project Description

Hyperspectral imaging captures data across hundreds of narrow spectral bands. Certain gases like CO₂ have characteristic absorption dips, especially in the near-infrared (NIR) range.

This project performs the following steps:
- Loads a 3D hyperspectral cube (145 × 145 × 200)
- Extracts the spectrum from a selected pixel
- Averages bands 180–200 to simulate CO₂-related absorption
- Applies a manual threshold (based on histogram analysis) to detect low-reflectance areas
- Creates a binary mask of CO₂ detection
- Overlays the detection on a grayscale base image

---

## 📁 Files Included

- `indian_pines_corrected.mat` — Hyperspectral dataset in MATLAB format  
- `CO2_Detection_IndianPines.m` — MATLAB script with full analysis and visualization  
- `README.md` — This file for project documentation  

---

## 🚀 How to Run

1. Upload both `.mat` and `.m` files to your **MATLAB Online** Drive
2. Open the script `CO2_Detection_IndianPines.m`
3. Run the code step-by-step (or the whole script)
4. Adjust the `threshold` value in Step 6 if needed (based on the histogram)

---

## 🖼️ Output

- Grayscale image of Band 100  
- Spectral plot at selected pixel  
- Histogram of reflectance in simulated CO₂-sensitive bands  
- Binary detection mask  
- Blended overlay showing where simulated CO₂ absorption occurs

---

## 📌 Notes

This is a simulation — the Indian Pines dataset doesn’t actually contain CO₂ data, but the methodology can be adapted for real airborne or satellite-based CO₂-sensitive hyperspectral datasets.

---

**Author**: Aakash Balamurugan  
*Project created for educational purposes to demonstrate hyperspectral data visualization and threshold-based detection in MATLAB.*
