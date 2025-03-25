# שלב 1: השתמש בתמונה בסיסית
FROM nginx:alpine

# שלב 2: העתק את קובץ ה-HTML לתוך תיקיית ה-HTML של Nginx
COPY index.html /usr/share/nginx/html/

# אפשר גם להעתיק קבצים נוספים כמו CSS או JS אם יש לך
# COPY styles.css /usr/share/nginx/html/
# COPY script.js /usr/share/nginx/html/

# שלב 3: חשוף את הפורט שבו ה-Nginx יפעל
EXPOSE 80

# שלב 4: הפעל את Nginx
CMD ["nginx", "-g", "daemon off;"]
