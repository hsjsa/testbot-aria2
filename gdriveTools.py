import os
from pydrive.auth import GoogleAuth
from pydrive.drive import GoogleDrive

gauth = GoogleAuth()
gauth.LocalWebserverAuth()
drive = GoogleDrive(gauth)

folder = '1faNz4IHazQrehNa8Fb9bgJiQS43H861K'
upload_file_list = ['/usr/src/app/downloads']
for upload_file in upload_file_list:
	gfile = drive.CreateFile({'parents': [{'id': 'folder'}]})
	# Read file and set it as the content of this instance.
	gfile.SetContentFile(upload_file)
	gfile.Upload()
