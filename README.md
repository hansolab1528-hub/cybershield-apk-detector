# 🛡️ CyberShield — Fake Transaction APK Detector

<p align="center">

<img src="https://img.shields.io/badge/Cybersecurity-AI%20Powered-00ff9d?style=for-the-badge&logo=shield&logoColor=white" />
<img src="https://img.shields.io/badge/Python-3.8%2B-3776AB?style=for-the-badge&logo=python&logoColor=white" />
<img src="https://img.shields.io/badge/Flask-3.0%2B-000000?style=for-the-badge&logo=flask&logoColor=white" />
<img src="https://img.shields.io/badge/Machine%20Learning-Ensemble-orange?style=for-the-badge" />
<img src="https://img.shields.io/badge/Platform-Web-00a8ff?style=for-the-badge" />

</p>

<p align="center">
  <strong>AI-powered cybersecurity platform for detecting fake and malicious Android transaction applications.</strong>
</p>

<p align="center">
  🔍 Static Analysis • 🤖 Machine Learning • 🧠 Visual Intelligence • 🚨 Threat Detection
</p>

---

## 🚨 About CyberShield

**CyberShield** is an advanced AI-powered cybersecurity platform designed to detect, analyze, and identify fraudulent Android applications targeting India's banking and digital payment ecosystem.

The system uses a **hybrid detection pipeline** that combines:

* 🔍 Static APK analysis
* 🧠 Machine Learning
* 👁️ Visual intelligence
* 🔐 Certificate and fingerprint analysis
* ⚠️ Permission-based threat detection
* 🛡️ Anti-analysis detection
* 🚨 Real-time incident alerts

CyberShield analyzes a suspicious APK **without installing or executing it**, extracts security-relevant information, evaluates multiple threat indicators, and produces a risk verdict.

According to the project evaluation described in the project presentation, the ML-based detection pipeline achieved **98.2% accuracy** on the evaluated dataset.

---

# 🎯 Problem Statement

The rapid adoption of **UPI, mobile banking, and digital payments in India** has created an attractive target for cybercriminals.

Attackers can create fake applications that imitate legitimate financial applications and distribute them through:

* Third-party websites
* SMS links
* Social media
* Suspicious download pages
* Other unofficial distribution channels

These applications may attempt to perform attacks such as:

### 🎭 Visual Spoofing

Fake applications can imitate legitimate payment-success screens and trick merchants or users.

### 🔑 Credential Theft

Malicious overlay interfaces can be placed over legitimate banking applications to capture sensitive information.

### 📩 SMS / OTP Interception

Applications requesting dangerous SMS permissions may attempt to intercept messages containing authentication codes.

### ♿ Accessibility Abuse

Abuse of Android Accessibility Services can allow malicious applications to monitor user interaction and potentially capture sensitive input.

The project presentation identifies these as key threats targeted by CyberShield.

---

# 💡 CyberShield Solution

CyberShield provides an automated analysis pipeline where a security analyst can submit a suspicious APK.

The platform then performs multiple layers of analysis:

```text
                ┌──────────────────────┐
                │     Suspicious APK   │
                └──────────┬───────────┘
                           │
                           ▼
                ┌──────────────────────┐
                │    APK Extraction    │
                └──────────┬───────────┘
                           │
              ┌────────────┼────────────┐
              ▼            ▼            ▼
        Static Analysis  Visual AI   Fingerprint
              │          Analysis       Analysis
              │            │              │
              └────────────┼──────────────┘
                           ▼
                ┌──────────────────────┐
                │ Feature Extraction   │
                │      80+ Features    │
                └──────────┬───────────┘
                           │
                           ▼
                ┌──────────────────────┐
                │   ML Ensemble Model  │
                │ RF + SVM + NB        │
                └──────────┬───────────┘
                           │
                           ▼
                ┌──────────────────────┐
                │   Threat Assessment  │
                └──────────┬───────────┘
                           │
              ┌────────────┼────────────┐
              ▼            ▼            ▼
            LOW         MEDIUM        HIGH
                           │
                           ▼
                      🚨 ALERT
```

The PPT describes the solution as checking package names, visual logo similarity, permissions, hardcoded URLs/IPs, and ensemble ML predictions before producing a risk verdict.

---

# ✨ Key Features

## 🔍 1. Static APK Analysis

CyberShield performs secure, zero-install analysis of Android APK files.

It extracts information including:

* Android Manifest
* Permissions
* Activities
* Services
* Intent filters
* Certificates
* Package information
* Security-related metadata

The project uses **Androguard** and Python ZIP processing for APK inspection.

---

## 🎯 2. Typosquatting Detection

CyberShield checks suspicious package names against known legitimate applications.

Example:

```text
Legitimate:
com.paytm

Suspicious:
com.evil.paytm
```

This helps identify applications attempting to impersonate well-known financial applications.

The project specifically targets package-name impersonation of major Indian financial applications.

---

## 👁️ 3. Visual Brand Protection

CyberShield uses **Perceptual Hashing (pHash)** to analyze application icons.

Instead of relying only on exact image matching, perceptual hashing can identify visually similar icons even when modifications have been made.

The system compares extracted APK icons against stored legitimate bank and UPI logo templates.

Technology used:

```text
Pillow
ImageHash
pHash
Hamming Distance
```

---

# 🤖 Machine Learning Engine

CyberShield uses an **ensemble machine-learning architecture**.

The system evaluates more than **80 static and behavioral feature vectors** according to the project design.

### 🌲 Random Forest

```text
200 Trees
Class Balanced
Primary Classifier
```

### 📈 Support Vector Machine

```text
RBF Kernel
Scaled Features
```

### 🧮 Gaussian Naive Bayes

```text
Gaussian Distribution
Robust Scaling
Fast Prediction
```

The three models are combined through an ensemble/soft-voting approach.

---

# 🧠 Detection Layers

CyberShield doesn't depend on a single detection technique.

Instead, it combines multiple security signals:

```text
                 CYBERSHIELD
                      │
        ┌─────────────┼─────────────┐
        │             │             │
        ▼             ▼             ▼
   APK Analysis   Visual Analysis   ML Analysis
        │             │             │
        ▼             ▼             ▼
   Permissions      Logo Match     RF / SVM / NB
   Manifest         pHash          80+ Features
   Certificates     Similarity
   URLs/IPs
   Package Names
        │             │             │
        └─────────────┼─────────────┘
                      ▼
                THREAT SCORE
                      │
                      ▼
             SECURITY VERDICT
```

---

# 🛡️ Security & Anti-Analysis Detection

CyberShield also looks for indicators that may suggest an application is attempting to evade analysis.

Detection includes:

* Anti-debugging indicators
* Code obfuscation
* Packed applications
* DexGuard-related indicators
* Suspicious security configurations

---

# 🇮🇳 Indian Financial Threat Intelligence

CyberShield is designed specifically around the Indian digital-payment ecosystem.

The project includes a built-in database/dictionary containing information related to:

### 🏦 Banks

* SBI
* HDFC
* ICICI
* AXIS

### 💳 UPI / Payment Applications

* PhonePe
* Paytm
* BHIM
* Google Pay

This enables the detector to identify applications attempting to impersonate recognized financial brands.

---

# 🚨 Real-Time Incident Response

When a critical threat is detected, CyberShield can generate alerts containing information such as:

```text
Package Hash
Threat Indicators
Risk Score
Detection Information
```

The project design includes **Slack/Webhook notification pipelines** for security-response workflows.

---

# 📊 Security Analytics Dashboard

CyberShield includes a web-based dashboard designed to visualize security information.

The dashboard can be used for:

* Scan statistics
* Threat trends
* Security logs
* ML accuracy curves
* Forensic evidence tracking
* Scan results

The implementation uses **Flask + SQLite + Chart.js** for the web application and analytics layer.

---

# 🏗️ Technology Stack

| Category             | Technology                 |
| -------------------- | -------------------------- |
| Programming Language | Python                     |
| Backend              | Flask                      |
| APK Analysis         | Androguard                 |
| Image Processing     | Pillow                     |
| Visual Hashing       | ImageHash                  |
| Machine Learning     | Scikit-learn               |
| Model Serialization  | Joblib                     |
| Data Processing      | Pandas                     |
| Numerical Computing  | NumPy                      |
| Database             | SQLite3                    |
| Frontend             | HTML5, CSS3, JavaScript    |
| Analytics            | Chart.js                   |
| Security             | Cryptography               |
| API Security         | Flask-Limiter / Flask-CORS |

These technologies and dependencies are specified in the project presentation.

---

# 📁 Suggested Project Structure

```text
CyberShield/
│
├── app.py
├── requirements.txt
├── README.md
│
├── trained_models/
│   ├── random_forest.pkl
│   ├── svm.pkl
│   └── naive_bayes.pkl
│
├── templates/
│   ├── index.html
│   ├── dashboard.html
│   └── results.html
│
├── static/
│   ├── css/
│   ├── js/
│   └── images/
│
├── database/
│   └── cybershield.db
│
├── analysis/
│   ├── apk_analyzer.py
│   ├── feature_extractor.py
│   ├── visual_analyzer.py
│   └── certificate_analyzer.py
│
└── datasets/
    └── features.csv
```

> Adjust this structure to match the actual files in your repository.

---

# ⚙️ System Requirements

### Hardware

```text
CPU      : Intel Core i3 / AMD Ryzen 3 or better
RAM      : 8 GB
Storage  : 20 GB available space
Display  : 1366 × 768 minimum
```

### Software

```text
Windows 10/11
macOS 11+
Linux / Ubuntu 20.04+

Python 3.8+
SQLite3
```

The project presentation states that the implementation was verified with **Python 3.14.6**.

---

# 🚀 Installation

## 1️⃣ Clone the Repository

```bash
git clone https://github.com/YOUR-USERNAME/CyberShield-FakeTransactionAPK-Detector.git
```

```bash
cd CyberShield-FakeTransactionAPK-Detector
```

---

## 2️⃣ Create a Virtual Environment

### Windows

```bash
python -m venv venv
venv\Scripts\activate
```

### Linux / macOS

```bash
python3 -m venv venv
source venv/bin/activate
```

---

## 3️⃣ Install Dependencies

```bash
pip install -r requirements.txt
```

---

## 4️⃣ Run CyberShield

```bash
python app.py
```

Then open the local Flask address displayed by the application in your browser.

---

# 🔬 How CyberShield Works

```text
1. Upload APK
      ↓
2. Validate APK
      ↓
3. Extract APK contents
      ↓
4. Analyze Android Manifest
      ↓
5. Extract permissions
      ↓
6. Analyze package name
      ↓
7. Analyze certificate fingerprints
      ↓
8. Extract application icon
      ↓
9. Perform perceptual logo matching
      ↓
10. Extract security features
      ↓
11. Generate ML feature vector
      ↓
12. Run Random Forest
      ↓
13. Run SVM
      ↓
14. Run Naive Bayes
      ↓
15. Combine predictions
      ↓
16. Calculate threat level
      ↓
17. Generate security report
      ↓
18. Trigger alert if critical
```

---

# 📈 Project Development Phases

The project was developed through six major phases:

### Phase 1 — Literature Review & Threat Analysis

Studied Android malware structures, APK compression, and fake UPI transaction vectors.

### Phase 2 — Static Analysis Pipeline

Developed Python-based APK parsers using Androguard and ZIP processing.

### Phase 3 — Visual Intelligence

Implemented perceptual image hashing for application-icon comparison.

### Phase 4 — Machine Learning

Extracted feature vectors and trained:

* Random Forest
* SVM
* Gaussian Naive Bayes

### Phase 5 — Web Interface & Dashboard

Developed the Flask interface, SQLite logging system, and Chart.js analytics dashboard.

### Phase 6 — Verification & Optimization

Tested the implementation, fixed Windows-specific issues, and prepared project review materials.

---

# 📊 Detection Output

CyberShield can categorize analyzed applications based on their assessed risk.

```text
🟢 LOW
   Low-risk indicators detected

🟡 MEDIUM
   Suspicious indicators detected

🟠 HIGH
   Multiple dangerous indicators detected

🔴 CRITICAL
   Strong evidence of malicious behavior
```

The project presentation describes the risk verdict as **Low, Medium, High, or Critical**.

---

# 🎯 Project Objectives

CyberShield was designed to:

* Automate APK reverse engineering
* Detect malicious permissions
* Identify financial-app impersonation
* Detect package-name typosquatting
* Identify visual brand spoofing
* Analyze certificate fingerprints
* Extract suspicious URLs/IP addresses
* Detect anti-analysis techniques
* Apply ML-based classification
* Provide security analytics
* Generate real-time security alerts

These objectives are directly based on the project's stated objectives and features.

---

# 🔐 Security Philosophy

CyberShield follows a **defense-in-depth** approach.

Instead of trusting a single indicator:

```text
Permission
     +
Package Name
     +
Certificate
     +
Icon Similarity
     +
URLs / IPs
     +
Security Indicators
     +
Machine Learning
     ↓
Combined Threat Assessment
```

This multi-layer approach is intended to make detection more robust against applications that attempt to disguise individual indicators.

---

# ⚠️ Disclaimer

CyberShield is a **cybersecurity research and educational project** developed for analyzing suspicious Android applications.

It should only be used on APK files that you are legally authorized to analyze.

**Do not install or execute unknown APK files on personal devices.**

The project performs static analysis and is not a replacement for professional malware-analysis infrastructure or commercial endpoint-security products.

---

# 👨‍💻 Developer

### Brij Mahendra Hansola

**ICT Engineering — Marwadi University, Rajkot**

**Project:** CyberShield — Fake Transaction APK Detector

**Domain:** Cybersecurity / Artificial Intelligence & Machine Learning

**Semester:** 5th

**Project Guide:** Prof. Vishalsinh P. Gohil

---

# 🌟 Why CyberShield?

CyberShield brings together several cybersecurity concepts into a single platform:

```text
        🛡️ CYBERSHIELD
              │
    ┌─────────┼─────────┐
    │         │         │
    ▼         ▼         ▼
 Cybersec    AI/ML    Forensics
    │         │         │
    ▼         ▼         ▼
 APK       Ensemble   Evidence
Analysis   Models     Analysis
    │         │         │
    └─────────┼─────────┘
              ▼
       Threat Intelligence
              │
              ▼
       🚨 Threat Detection
```

---

# 📌 Future Scope

Potential future development areas include:

* Dynamic APK sandbox analysis
* Behavioral monitoring
* Network traffic analysis
* Larger malware datasets
* Deep-learning-based malware detection
* Android emulator integration
* Threat-intelligence API integration
* Advanced forensic reporting
* Automated IOC extraction
* Expanded financial-app intelligence
* Cloud-based malware analysis

---

# ⭐ Project Status

```text
🟢 Development / Research Project

Static APK Analysis       ✅
Visual Logo Detection     ✅
ML Ensemble               ✅
Threat Classification     ✅
Flask Dashboard            ✅
SQLite Logging             ✅
Analytics                  ✅
Alert Pipeline             ✅
```

---

<p align="center">

### 🛡️ CyberShield

**Detect. Analyze. Protect.**

*Building smarter defenses against mobile financial threats.*

</p>

---

<p align="center">
  Made with ❤️ and ☕ by <strong>Brij Hansola</strong>
</p>
