# **Museum Management System Database**

This project focuses on designing and testing a relational database for managing museum data, including artifacts, exhibits, events, programs, and donations. A simple web application is included to demonstrate and test the database functionality.

---

## **Features**
- **Artifacts**:
  - Search and filter artifacts by name or type.
- **Exhibits and Events**:
  - View and filter exhibits and events, including filtering events by "upcoming" or "past."
- **Donations**:
  - View a grid of museums with total donations.
  - Donate to specific museums and dynamically update donation totals.

---

## **Getting Started**

### **Requirements**
- Python 3.9+
- MySQL Server
- Flask Framework

### **Setup Steps**
1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/museum-management-system.git
   cd museum-management-system
   ```

2. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```

3. Set up the database:
   - Import the provided SQL dump files into your MySQL server.
   - Update `config.py` with your database credentials.

4. Run the application:
   ```bash
   python app.py
   ```

5. Open your browser and navigate to:
   ```
   http://127.0.0.1:5000
   ```

---

## **Database Integration**
- The application dynamically fetches data from the database for:
  - Artifact search and filtering.
  - Event and exhibit listings with date-based filtering.
  - Donation tracking and updates by museum.

All interactions are reflected directly in the MySQL database, demonstrating the practical use of relational queries and schema design.

---

## **Acknowledgments**
This project was developed as part of our CS410 final project to demonstrate database design and integration using a web application.