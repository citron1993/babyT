# שימוש בתמונה בסיסית של Nginx
FROM nginx:alpine

# העתקת קובץ ה-HTML לתוך הספרייה המתאימה
COPY index.html /usr/share/nginx/html/index.html

# חשיפת הפורט 80
EXPOSE 80

# הרצת השרת
CMD ["nginx", "-g", "daemon off;"]
 
 docker build -t baby-tracker .
docker run -d -p 8080:80 --name baby-tracker-container baby-tracker


מעקב האכלה וצרכים של תינוק 
