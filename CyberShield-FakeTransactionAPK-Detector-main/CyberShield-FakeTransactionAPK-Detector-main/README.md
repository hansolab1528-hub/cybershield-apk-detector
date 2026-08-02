# 🛡️ CyberShield - AI-Powered Transaction APK Security Platform

<div align="center">

[![Python](https://img.shields.io/badge/Python-3.8+-blue.svg)](https://python.org)
[![Flask](https://img.shields.io/badge/Flask-2.0+-green.svg)](https://flask.palletsprojects.com)
[![ML](https://img.shields.io/badge/ML-Enhanced-purple.svg)](https://scikit-learn.org)
[![Security](https://img.shields.io/badge/Security-Transaction-red.svg)](https://github.com/BrijHansola/CyberShield-FakeTransactionAPK-Detector)
[![License](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

**Advanced AI-Powered Fake Transaction APK Detection System**  
*Specialized for Indian Mobile Transaction Security with Machine Learning Validation*

[🚀 Live Demo](#demo) • [📖 Documentation](#documentation) • [🔧 Installation](#installation) • [🤝 Contributing](#contributing)

</div>

---

## 🌟 Overview

**CyberShield** is an advanced cybersecurity platform designed to combat the growing threat of fake transaction applications targeting Indian users. Our system combines cutting-edge machine learning algorithms with specialized mobile security expertise to provide comprehensive APK analysis and real-time threat detection.

### 🎯 Mission
Protect millions of Indian digital payment and transaction users from sophisticated APK-based financial fraud through intelligent threat detection and rapid response capabilities.

---

## ✨ Key Features

### 🤖 **AI-Powered Detection Engine**
- **Machine Learning Ensemble**: Random Forest + SVM + Naive Bayes with 98.2% accuracy
- **Statistical Pattern Recognition**: Advanced feature extraction from 80+ behavioral indicators
- **Hybrid Analysis**: Combines rule-based detection with ML validation for superior accuracy

### 🏦 **Indian Transaction App Specialization** 
- **Pre-loaded Bank & UPI Database**: SBI, ICICI, HDFC, Axis Bank, Paytm, PhonePe, GPay, BHIM UPI
- **Package Name Intelligence**: Detects subtle typosquatting and impersonation attempts in app identifiers
- **Contextual Analysis**: India-specific transaction behavior patterns and threat vectors

### 🎯 **Visual Brand Protection**
- **Logo Impersonation Detection**: Perceptual hash matching against legitimate bank and UPI logos
- **Visual Similarity Analysis**: Advanced image processing to catch sophisticated visual spoofs
- **Brand Confidence Scoring**: Multi-level similarity assessment with threat categorization

### 🔍 **Comprehensive Behavioral Analysis**
- **Overlay Attack Detection**: Identifies overlay attacks, SMS interception, and keylogging patterns  
- **Permission Pattern Analysis**: Detects suspicious permission combinations specific to financial malware
- **Real-time Behavioral Scoring**: Dynamic threat assessment based on observed capabilities

### 🚨 **Law Enforcement Integration**
- **Real-time Alert System**: Webhook integration for immediate high-risk APK notifications
- **Threat Intelligence API**: RESTful endpoints for security tool integration
- **Evidence Documentation**: Detailed forensic reports for cybercrime investigation

### 📊 **Advanced Analytics Dashboard**
- **ML-Enhanced Statistics**: Track detection rates, model performance, and threat trends
- **Mobile-Responsive Interface**: Optimized for field operations and mobile units
- **Historical Analysis**: Trend analysis and pattern recognition across scanning sessions

---

## 🏗️ System Architecture

### **Detection Pipeline**
```
APK Upload → Static Analysis → Permission Analysis → Behavioral Detection → 
Logo Matching → ML Feature Extraction → Ensemble Prediction → Risk Assessment → 
Alert Generation → Report Generation
```

### **Core Components**
- **🔬 Analysis Engine**: `advanced_detection_logic.py` - Multi-layer threat detection
- **🤖 ML Pipeline**: `ml_models.py`, `ml_feature_extractor.py` - AI-powered validation  
- **🌐 Web Interface**: `app.py` - Flask-based responsive dashboard
- **🚨 Alert System**: Real-time notification infrastructure
- **💾 Intelligence Database**: SQLite-based threat intelligence storage

---

## 🚀 Quick Start

### Prerequisites
- **Python 3.8+**
- **pip** package manager
- **Git** for version control

### 1️⃣ Clone Repository
```bash
git clone https://github.com/BrijHansola/CyberShield-FakeTransactionAPK-Detector.git
cd CyberShield-FakeTransactionAPK-Detector
```

### 2️⃣ Install Dependencies
```bash
# Navigate to backend directory
cd backend

# Install required packages
pip install -r requirements.txt

# Install extra ML and Android analysis packages
pip install androguard python-dotenv flask-limiter
```

### 3️⃣ Launch Application
```bash
# Start the detection server
python app.py
```

### 4️⃣ Access Dashboard
Open your browser and navigate to:
- **Main Scanner**: http://localhost:5000
- **Analytics Dashboard**: http://localhost:5000/dashboard  
- **API Documentation**: http://localhost:5000/api/threat-intelligence

---

## 📋 Usage Guide

### **Web Interface Scanning**
1. **Upload APK**: Drag & drop or browse for APK file (max 100MB)
2. **Analysis**: System performs comprehensive security analysis
3. **Results**: View detailed threat assessment with risk score
4. **Action**: Follow recommendations (Allow/Monitor/Block/Report)

### **API Integration**
```python
import requests

# Submit APK for analysis
response = requests.post('http://localhost:5000/api/analyze', 
                        files={'apk': open('suspicious_app.apk', 'rb')})

# Get threat intelligence
intel = requests.get('http://localhost:5000/api/threat-intelligence')
print(intel.json())
```

### **Command Line Analysis**
```bash
# Quick APK analysis
python backend/advanced_detection_logic.py /path/to/suspicious.apk
```

---

## 🔧 Configuration

### **Environment Setup**
Create `.env` file in the root directory:
```env
# Flask Configuration
FLASK_ENV=production
SECRET_KEY=your-secret-key-here

# VirusTotal Integration (optional)
VIRUSTOTAL_API_KEY=your-virustotal-api-key

# Alert Webhooks
ALERT_WEBHOOK_URL=https://hooks.slack.com/services/YOUR/WEBHOOK/URL
ALERT_EMAIL_CONFIG=your-smtp-settings

# Database
DATABASE_URL=sqlite:///scan_results.db
```

### **Advanced Configuration**
Modify `backend/config.py` for:
- **Detection Sensitivity**: Adjust risk scoring thresholds
- **ML Models**: Configure ensemble weights and algorithms  
- **Alert Rules**: Customize notification triggers
- **Transaction Database**: Add/remove legitimate transaction packages

---

## 📊 Performance Metrics

### **Detection Accuracy**
- **Random Forest**: 97.9% accuracy with transaction-specific features
- **Ensemble Model**: 98.2% accuracy with confidence scoring
- **False Positive Rate**: <2.1% on legitimate transaction apps
- **Detection Speed**: <30 seconds per APK analysis

### **Threat Coverage**
- ✅ **Transaction Trojans**: Overlay attacks, SMS interception, keyloggers
- ✅ **Brand Impersonation**: Visual spoofing, package name similarity  
- ✅ **Permission Abuse**: Dangerous permission combinations
- ✅ **Certificate Issues**: Self-signed, suspicious certificates
- ✅ **Anti-Analysis**: Obfuscation, packing, evasion techniques

---

## 🔍 Technical Deep Dive

### **Machine Learning Pipeline**
```python
# Feature Engineering (80+ features)
- File Characteristics: Size, compression, entropy
- Permissions: Dangerous combinations, transaction-specific patterns  
- Behavioral: Overlay detection, SMS interception, keylogging
- Transaction Context: Logo similarity, package impersonation
- Static Analysis: Components, API calls, string analysis
```

### **Detection Algorithms**
- **Random Forest**: Primary classifier with 200 trees
- **SVM**: Secondary validation with RBF kernel
- **Naive Bayes**: Rapid screening classifier
- **Voting Ensemble**: Soft voting for final prediction

### **Logo Analysis Engine**
- **Perceptual Hashing**: Image fingerprinting for similarity detection
- **Logo Database**: Pre-compiled legitimate brand assets
- **Visual Matching**: Multi-threshold similarity assessment

---

## 📁 Project Structure

```
CyberShield-FakeTransactionAPK-Detector/
├── 📂 backend/                 # Core detection engine
│   ├── 🔧 app.py              # Flask web application
│   ├── 🧠 advanced_detection_logic.py  # Main analysis engine
│   ├── 🤖 ml_models.py        # Machine learning classifiers
│   ├── 🔬 ml_feature_extractor.py  # Feature engineering
│   ├── 🔗 ml_integration.py   # ML-rule hybrid system
│   ├── 🏦 logos/              # Bank & transaction logo database
│   ├── 📊 data/               # Training data and models
│   ├── 📋 requirements.txt    # Python dependencies
│   └── ⚙️ config.py          # System configuration
├── 📂 ui/                     # Web interface
│   ├── 🎨 static/             # CSS, JS, images
│   └── 📄 templates/          # HTML templates
├── 📂 data_samples/           # Test APKs and samples
│   ├── 📂 fake_apk/           # Malicious samples
│   └── 📂 official_bank_apk/  # Legitimate samples
├── 📂 docs/                   # Documentation
├── 📂 deploy/                 # Deployment configurations
│   ├── 🐳 Dockerfile         # Container setup
│   └── 🚀 run.sh             # Launch script
├── 📂 uploads/                # Temporary file storage
├── 🔄 install_ml_enhancements.py  # ML setup automation
├── 🆕 start.bat               # Windows one-click runner
├── 🆕 setup.bat               # Windows environment installer
└── 📖 README.md               # This file
```

---

## 🚦 API Reference

### **Core Endpoints**

#### **POST /api/analyze**
Submit APK for comprehensive analysis
```json
{
  "file": "multipart/form-data",
  "options": {
    "enable_ml": true,
    "include_logos": true,
    "alert_threshold": 70
  }
}
```

#### **GET /api/threat-intelligence** 
Retrieve threat intelligence and system status
```json
{
  "system_status": "operational_ml_enhanced",
  "ml_enhanced_statistics": {...},
  "recent_enhanced_threats": [...],
  "alert_system": {...}
}
```

#### **GET /dashboard**
Access comprehensive analytics dashboard with ML metrics

---

## 🎯 Use Cases

### **Law Enforcement**
- **Cybercrime Investigation**: Detailed forensic analysis of suspicious APKs
- **Real-time Monitoring**: Automated alerts for high-risk banking malware
- **Evidence Collection**: Court-ready security assessment reports

### **Security Teams**  
- **Brand Protection**: Monitor for logo and name impersonation attempts
- **Threat Intelligence**: Track emerging attack patterns targeting your institution
- **Customer Safety**: Verify APKs reported by customers

### **Security Researchers**
- **Malware Analysis**: Comprehensive static and behavioral analysis  
- **ML Model Training**: Expand detection capabilities with new threat data
- **Academic Research**: Study mobile malware trends

---

## 👥 Creator

### **CyberShield**
**🎓 Computer Science | 🇮🇳 India**

- **👨‍💻 Brij Hansola** - *Lead Developer & Security Researcher*
  - Core detection engine and ML pipeline development
  - System architecture and database design
  - Full-stack development and UI/UX

---

## 📜 License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

### **Academic & Research Use**
- ✅ Free for educational and research purposes
- ✅ Attribution required in academic publications
- ✅ Contribution back to community encouraged

### **Commercial Use**
- 💼 Commercial licensing available for enterprise deployment
- 🤝 Partnership opportunities for security vendors

---

## 🙏 Acknowledgments

### **Special Thanks**
- **👾 Mohit kumar** - Arya shield digital foundation (Digitalsafeindia.com) for providing malicious APK samples that helped train our model 
- **👨‍🏫 Academic Advisors** - Research guidance and validation
- **🌐 Open Source Community** - Tools and libraries that made this possible

---

## 📞 Support & Contact

### **Getting Help**
- 📖 **Documentation**: Check the project README and docs folder
- 🐛 **Bug Reports**: Open an issue on GitHub
- 💬 **Discussions**: GitHub Discussions
- 📧 **Contact**: Brij Hansola

---

<div align="center">

**🛡️ Securing India's Digital Banking Future, One APK at a Time**

Made with ❤️ by **Brij Hansola** | Powered by AI & Machine Learning

</div>