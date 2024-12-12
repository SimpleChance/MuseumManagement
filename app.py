from flask import Flask, render_template, request
import mysql.connector
from config import DB_CONFIG


app = Flask(__name__)


# Home page route
@app.route('/')
@app.route('/home')
def index():
    """
    Fetch and display featured artifacts, upcoming events, and current exhibits on the home page.
    """
    try:
        conn = mysql.connector.connect(**DB_CONFIG)
        cursor = conn.cursor(dictionary=True)

        # Fetch featured artifacts
        cursor.execute("SELECT * FROM artifact LIMIT 3")
        featured_artifacts = cursor.fetchall()

        # Fetch upcoming events
        cursor.execute("SELECT * FROM event ORDER BY EventDate ASC LIMIT 3")
        featured_events = cursor.fetchall()

        # Fetch current exhibits
        cursor.execute("SELECT * FROM exhibit WHERE EndDate >= CURDATE() ORDER BY StartDate ASC LIMIT 3")
        featured_exhibits = cursor.fetchall()

        return render_template(
            'home.html',
            featured_artifacts=featured_artifacts,
            featured_events=featured_events,
            featured_exhibits=featured_exhibits
        )
    except mysql.connector.Error as err:
        return f"Error: {err}"
    finally:
        if conn.is_connected():
            cursor.close()
            conn.close()


# Artifacts page route
@app.route('/artifacts')
def artifact_detail_page():
    """
    Display all artifacts on the artifacts page.
    """
    try:
        conn = mysql.connector.connect(**DB_CONFIG)
        cursor = conn.cursor(dictionary=True)
        cursor.execute("SELECT * FROM artifact")
        artifacts = cursor.fetchall()
        return render_template('artifact-detail.html', artifacts=artifacts)
    except mysql.connector.Error as err:
        return f"Error: {err}"
    finally:
        if conn.is_connected():
            cursor.close()
            conn.close()


# Artifact search route
@app.route('/artifacts/search', methods=['GET'])
def search_artifacts():
    """
    Search for artifacts by name or type.
    """
    search_term = request.args.get('q', '')
    try:
        conn = mysql.connector.connect(**DB_CONFIG)
        cursor = conn.cursor(dictionary=True)

        query = "SELECT * FROM artifact WHERE Name LIKE %s OR Type LIKE %s"
        cursor.execute(query, (f"%{search_term}%", f"%{search_term}%"))
        artifacts = cursor.fetchall()
        return render_template('artifact-detail.html', artifacts=artifacts, search_term=search_term)
    finally:
        cursor.close()
        conn.close()


# Artifact filter route
@app.route('/artifacts/filter/<artifact_type>', methods=['GET'])
def filter_artifacts_by_type(artifact_type):
    """
    Filter artifacts by type.
    """
    try:
        conn = mysql.connector.connect(**DB_CONFIG)
        cursor = conn.cursor(dictionary=True)

        query = "SELECT * FROM artifact WHERE Type = %s"
        cursor.execute(query, (artifact_type,))
        artifacts = cursor.fetchall()
        return render_template('artifact-detail.html', artifacts=artifacts, filter_type=artifact_type)
    finally:
        cursor.close()
        conn.close()


# Exhibits page route
@app.route('/exhibits')
def exhibits_page():
    """
    Display all exhibits on the exhibits page.
    """
    try:
        conn = mysql.connector.connect(**DB_CONFIG)
        cursor = conn.cursor(dictionary=True)
        cursor.execute("SELECT * FROM exhibit")
        exhibits = cursor.fetchall()
        return render_template('exhibits.html', exhibits=exhibits)
    except mysql.connector.Error as err:
        return f"Error: {err}"
    finally:
        if conn.is_connected():
            cursor.close()
            conn.close()


# Events page route
@app.route('/events')
def events_page():
    """
    Display all events on the events page.
    """
    try:
        conn = mysql.connector.connect(**DB_CONFIG)
        cursor = conn.cursor(dictionary=True)
        cursor.execute("SELECT * FROM event")
        events = cursor.fetchall()
        return render_template('events.html', events=events)
    except mysql.connector.Error as err:
        return f"Error: {err}"
    finally:
        if conn.is_connected():
            cursor.close()
            conn.close()


# Events filter route
@app.route('/events/filter/<filter_type>')
def filter_events(filter_type):
    """
    Filter events by 'upcoming' or 'past' based on their dates.
    """
    try:
        conn = mysql.connector.connect(**DB_CONFIG)
        cursor = conn.cursor(dictionary=True)

        if filter_type == 'upcoming':
            cursor.execute("SELECT * FROM event WHERE EventDate >= CURDATE() ORDER BY EventDate ASC")
        elif filter_type == 'past':
            cursor.execute("SELECT * FROM event WHERE EventDate < CURDATE() ORDER BY EventDate DESC")
        else:
            return "Invalid filter type", 400

        events = cursor.fetchall()
        return render_template('events.html', events=events, filter_type=filter_type)
    finally:
        cursor.close()
        conn.close()


# Programs page route
@app.route('/programs')
def programs_page():
    """
    Display all programs on the programs page.
    """
    try:
        conn = mysql.connector.connect(**DB_CONFIG)
        cursor = conn.cursor(dictionary=True)
        cursor.execute("SELECT * FROM program")
        programs = cursor.fetchall()
        return render_template('programs.html', programs=programs)
    except mysql.connector.Error as err:
        return f"Error: {err}"
    finally:
        if conn.is_connected():
            cursor.close()
            conn.close()


# Donations page route
@app.route('/donate', methods=['GET', 'POST'])
@app.route('/donate/<int:museum_id>', methods=['GET', 'POST'])
def donate_page(museum_id=None):
    """
    Display a grid of museums or donation details for a specific museum.
    """
    try:
        conn = mysql.connector.connect(**DB_CONFIG)
        cursor = conn.cursor(dictionary=True)

        if museum_id:
            if request.method == 'POST':
                # Handle a donation form submission
                amount = float(request.form['amount'])
                donor_name = request.form['donor_name'].strip()

                if amount <= 0:
                    return "Donation amount must be greater than 0", 400

                # Insert donation into the database
                query = """
                    INSERT INTO donation (Amount, DonorName, DonationDate, MuseumID, Purpose)
                    VALUES (%s, %s, CURDATE(), %s, %s)
                """
                cursor.execute(query, (amount, donor_name, museum_id, "Online Donation"))
                conn.commit()

            # Fetch museum details
            cursor.execute("SELECT Name, Location FROM museum WHERE MuseumID = %s", (museum_id,))
            museum = cursor.fetchone()

            # Fetch total donations for the museum
            cursor.execute("SELECT COALESCE(SUM(Amount), 0) AS TotalDonations FROM donation WHERE MuseumID = %s", (museum_id,))
            total_donations = cursor.fetchone().get('TotalDonations', 0)

            return render_template('donate.html', museum=museum, total_donations=total_donations)

        else:
            # Display all museums in a grid
            cursor.execute("SELECT MuseumID, Name, Location FROM museum")
            museums = cursor.fetchall()
            return render_template('donate.html', museums=museums)
    except mysql.connector.Error as err:
        return f"Database Error: {err}", 500
    finally:
        cursor.close()
        conn.close()


# About page route
@app.route('/about-contact')
def about_page():
    """
    Display the about and contact information.
    """
    return render_template('about-contact.html')


# Login/Signup page route
@app.route('/login-signup')
def login_page():
    """
    Display the login and signup form.
    """
    return render_template('login-signup.html')


# Virtual Tour page route
@app.route('/virtualtour')
def virtual_tour_page():
    """
    Display all available virtual tours.
    """
    try:
        conn = mysql.connector.connect(**DB_CONFIG)
        cursor = conn.cursor(dictionary=True)
        cursor.execute("SELECT * FROM virtualtour")
        virtual_tours = cursor.fetchall()
        return render_template('virtualtour.html', virtual_tours=virtual_tours)
    except mysql.connector.Error as err:
        return f"Error: {err}"
    finally:
        if conn.is_connected():
            cursor.close()
            conn.close()


# Entry
if __name__ == '__main__':
    app.run(debug=True)
