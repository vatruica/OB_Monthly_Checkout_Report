import smtplib
from email.MIMEMultipart import MIMEMultipart
from email.MIMEBase import MIMEBase
from email import Encoders


SUBJECT = "MITLibrary Monthly Report"

msg = MIMEMultipart()
msg['Subject'] = SUBJECT 
msg['From'] = "guru3arthas@yahoo.com"
msg['To'] = "romanescu3@gmail.com"

part = MIMEBase('application', "octet-stream")
part.set_payload(open("file.csv", "rb").read())
Encoders.encode_base64(part)

part.add_header('Content-Disposition', 'attachment; filename="file.csv"')

msg.attach(part)

server = smtplib.SMTP("localhost")
server.sendmail("<sender_email>", "<receiver_email>", msg.as_string())
