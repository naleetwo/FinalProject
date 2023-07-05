import io
import torch
import cv2
import numpy as np
import tensorflow as tf
from re import DEBUG, sub
from flask import Flask, render_template, session, request, url_for, send_file, Response
import os
import subprocess
from subprocess import Popen
import re
import requests
import shutil
import time
import base64
import time
from PIL import Image
from ultralytics import YOLO
from werkzeug.utils import secure_filename, send_from_directory

app = Flask(__name__)

@app.route("/")
def index():
    return render_template("tomato.html")

@app.route("/introduction")
def introduction():
    return render_template("introduction.html")

@app.route("/method")
def howto():
    return render_template("accordion.html")

@app.route("/board")
def board():
    return render_template("board.html")


# @app.route("/detecting")
# def upload_file():
#     print(myfile)
#     return render_template("detect.html")

@app.route("/best_env")
def best_env():
    return render_template("best_env.html")

# @app.route("/process_image", methods=["POST"])
# def process_image():
#     data = request.get_json()
#     image_url = data.get("image_url")
#     yolo = YOLO("best.pt")
#     detections = yolo.predict(image, save=True)
#     return detections



@app.route("/detecting", methods=["POST"])
def predict():
    if request.method=="POST":
        if "myfile" in request.files:
            f = request.files["myfile"]
    # return "<h2>" + f.filename +"이 잘 전달됨</h2>"
            file_extension = f.filename.rsplit('.', 1)[1].lower()
            file_name = f.filename.rsplit('.', 1)[0]
            save_path = "./static/images/{}.jpg".format(file_name)
            f.save(save_path)
            if file_extension =="jpg":
                img = cv2.imread(save_path)
            #     img2 = cv2.imwrite("{}.jpg".format(f.filename), img)
            # #     # _, buffer = cv2.imencode(".jpg", img)
            # #     # image_data = buffer.tobytes()
            # #     # image_base64 = base64.b64encode(image_data).decode("utf-8")
            # #     #
            # #     # return Response(response=image_base64, mimetype="text/plain")
            # #
            #     frame = cv2.imencode(".jpg", cv2.UMat(img))[1].tobytes()
            #     image = Image.open(io.BytesIO(frame))
                yolo = YOLO('best3.pt')
                detections = yolo.predict(source=img, save=True)
                return display(f.filename)
                # return render_template("detect.html", image=detections)
            # elif file_extension =="mp4":
            #     video_path = filepath
            #     cap = cv2.VideoCapture(video_path)
            #
            # frame_width = int(cap.get(cv2.CAP_PROP_FRAME_WIDTH))
            # frame_height = int(cap.get(cv2.CAP_PROP_FRAME_HEIGHT))
            #
            # fourcc = cv2.VideoWriter_fourcc(*"mp4v")
            # out = cv2.VideoWriter("output.mp4", fourcc, 30.0, (frame_width, frame_height))
            #
            # model = YOLO('./model/best.pt')
            #
            # while cap.isOpened():
            #     ret, frame = cap.read()
            #     if not ret:
            #         break
            #
            #     result = model(frame, save=True)
            #     print(result)
            #     cv2.waitKey(1)
            #
            #     res_plotted = result[0].plot()
            #     cv2.imshow("result", res_plotted)
            #
            #     if cv2.waitKey(1) == ord('q'):
            #         break
            #
            # return video_feed()


# @app.route("/detecting")
def display(filename):
    folder_path = "runs/detect"
    subfolders = [f for f in os.listdir(folder_path) if os.path.isdir(os.path.join(folder_path, f))]
    latest_subfolder = max(subfolders, key=lambda x : os.path.getctime(os.path.join(folder_path, x)))
    directory = folder_path+"/"+latest_subfolder
    files = os.listdir(directory)
    latest_file = files[0]
    environ = request.environ
    return send_from_directory(directory, latest_file, environ)
#
#     filename = os.path.join(folder_path, latest_subfolder, latest_file)
#     file_extension = filename.rsplit(".", 1)[1].lower()
#


# @app.route("/")
# def vide_feed():
#     return Response(get_frame(), mimetype = "multipart/x-mied-replace, boundary=frame")
@app.route("/detecting")
def detecting():
    return render_template("detect.html")


if __name__ =="__main__":
    app.run(host="0.0.0.0", port="5000")
