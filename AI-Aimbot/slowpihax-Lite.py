import cv2 as cv
import numpy as np
import onnxruntime
import torch
from mss import mss
from ultralytics.utils.checks import check_requirements
import ctypes
from ctypes import wintypes, windll
import time
import os
import math
import random
import json
from pypresence import Presence
import threading
import sys
import string
import pygetwindow

os.environ["ORT_CUDA_SYNC_TRANSFER"] = "0"
os.environ["CUDA_LAUNCH_BLOCKING"] = "1"

if ctypes.sizeof(ctypes.c_void_p) == 8:
    ULONG_PTR = ctypes.c_uint64
else:
    ULONG_PTR = ctypes.c_uint32
user32 = ctypes.WinDLL("user32", use_last_error=True)

GetAsyncKeyState = user32.GetAsyncKeyState
GetAsyncKeyState.argtypes = [wintypes.INT]
GetAsyncKeyState.restype = wintypes.SHORT
INPUT_MOUSE = 0
MOUSEEVENTF_MOVE = 1
RIGHT_MOUSE_BUTTON = 2
try:
    presence = Presence(0x10E7E9AFE340001F)
    presence.connect()
    presence.update(
        state="Using slowpihax-Lite",
        large_text="made by @slowpi",
        large_image="https://i.ibb.co/P166ct3/slowpi-Main.png",
        buttons=[{"label": "Discord", "url": "https://discord.gg/JN6wgVrUAr"}],
        start=time.time(),
    )
except Exception as exception:
    print(exception)

virtualKeycode = {
    "VK_A": 65,
    "VK_B": 66,
    "VK_C": 67,
    "VK_D": 68,
    "VK_E": 69,
    "VK_F": 70,
    "VK_G": 71,
    "VK_H": 72,
    "VK_I": 73,
    "VK_J": 74,
    "VK_K": 75,
    "VK_L": 76,
    "VK_M": 77,
    "VK_N": 78,
    "VK_O": 79,
    "VK_P": 80,
    "VK_Q": 81,
    "VK_R": 82,
    "VK_S": 83,
    "VK_T": 84,
    "VK_U": 85,
    "VK_V": 86,
    "VK_W": 87,
    "VK_X": 88,
    "VK_Y": 89,
    "VK_Z": 90,
    "VK_0": 48,
    "VK_1": 49,
    "VK_2": 50,
    "VK_3": 51,
    "VK_4": 52,
    "VK_5": 53,
    "VK_6": 54,
    "VK_7": 55,
    "VK_8": 56,
    "VK_9": 57,
    "VK_SPACE": 32,
    "VK_ESCAPE": 27,
    "VK_RETURN": 13,
    "VK_TAB": 9,
    "VK_BACK": 8,
    "VK_INSERT": 45,
    "VK_DELETE": 46,
    "VK_HOME": 36,
    "VK_END": 35,
    "VK_PRIOR": 33,
    "VK_NEXT": 34,
    "VK_LEFT": 37,
    "VK_UP": 38,
    "VK_RIGHT": 39,
    "VK_DOWN": 40,
    "VK_NUMLOCK": 144,
    "VK_SCROLL": 145,
    "VK_LSHIFT": 160,
    "VK_RSHIFT": 161,
    "VK_LCONTROL": 162,
    "VK_RCONTROL": 163,
    "VK_LMENU": 164,
    "VK_RMENU": 165,
    "VK_LWIN": 91,
    "VK_RWIN": 92,
    "VK_APPS": 93,
    "VK_SLEEP": 95,
    "VK_NUMPAD0": 96,
    "VK_NUMPAD1": 97,
    "VK_NUMPAD2": 98,
    "VK_NUMPAD3": 99,
    "VK_NUMPAD4": 100,
    "VK_NUMPAD5": 101,
    "VK_NUMPAD6": 102,
    "VK_NUMPAD7": 103,
    "VK_NUMPAD8": 104,
    "VK_NUMPAD9": 105,
    "VK_MULTIPLY": 106,
    "VK_ADD": 107,
    "VK_SEPARATOR": 108,
    "VK_SUBTRACT": 109,
    "VK_DECIMAL": 110,
    "VK_DIVIDE": 111,
    "VK_F1": 112,
    "VK_F2": 113,
    "VK_F3": 114,
    "VK_F4": 115,
    "VK_F5": 116,
    "VK_F6": 117,
    "VK_F7": 118,
    "VK_F8": 119,
    "VK_F9": 120,
    "VK_F10": 121,
    "VK_F11": 122,
    "VK_F12": 123,
    "VK_NUMLOCK": 144,
    "VK_SCROLL": 145,
    "VK_CAPSLOCK": 20,
    "VK_RIGHTMOUSEBUTTON": 2,
    "VK_LEFTMOUSEBUTTON": 1,
    "NONE": 556,
}


class MOUSEINPUT(ctypes.Structure):
    _fields_ = (
        ("dx", ctypes.c_long),
        ("dy", ctypes.c_long),
        ("mouseData", ctypes.c_ulong),
        ("dwFlags", ctypes.c_ulong),
        ("time", ctypes.c_ulong),
        ("dwExtraInfo", ULONG_PTR),
    )


class INPUT(ctypes.Structure):
    class _INPUT(ctypes.Union):
        _fields_ = (("mi", MOUSEINPUT),)

    _anonymous_ = ("_input",)
    _fields_ = ("type", wintypes.DWORD), ("_input", _INPUT)

SendInput = ctypes.windll.user32.SendInput
PUL = ctypes.POINTER(ctypes.c_ulong)

class KeyBdInput(ctypes.Structure):
    _fields_ = [("wVk", ctypes.c_ushort),
                ("wScan", ctypes.c_ushort),
                ("dwFlags", ctypes.c_ulong),
                ("time", ctypes.c_ulong),
                ("dwExtraInfo", PUL)]
class HardwareInput(ctypes.Structure):
    _fields_ = [("uMsg", ctypes.c_ulong),
                ("wParamL", ctypes.c_short),
                ("wParamH", ctypes.c_ushort)]
class MouseInput(ctypes.Structure):
    _fields_ = [("dx", ctypes.c_long),
                ("dy", ctypes.c_long),
                ("mouseData", ctypes.c_ulong),
                ("dwFlags", ctypes.c_ulong),
                ("time", ctypes.c_ulong),
                ("dwExtraInfo", PUL)]
class Input_I(ctypes.Union):
    _fields_ = [("ki", KeyBdInput),
                ("mi", MouseInput),
                ("hi", HardwareInput)]
class Input(ctypes.Structure):
    _fields_ = [("type", ctypes.c_ulong),
                ("ii", Input_I)]

class aimbot:
    def __init__(self, configFile="config.json"):
        self.configFile = configFile
        self.iterations = []
        self.screenWidth, self.screenHeight = user32.GetSystemMetrics(0), user32.GetSystemMetrics(1)
        self.aimbotEnabled = False
        self.running = False
        if getattr(sys, "frozen", False):
            self.executablePath = sys.executable
        else:
            self.executablePath = __file__
        self.executablePath = os.path.dirname(self.executablePath)
        self.modelPath = os.path.join(self.executablePath, "_internal", "Models", "last.onnx")

        self.loadConfig()
        providers = ['CUDAExecutionProvider', 'CPUExecutionProvider', ]
        self.session = onnxruntime.InferenceSession(self.modelPath, providers=providers)
        sessionInputs = self.session.get_inputs()
        inputShape = sessionInputs[0].shape
        self.inputWidth = inputShape[2]
        self.inputHeight = inputShape[3]
        self.windoww = None
        self.randomizeTitle = 0

    def loadConfig(self):
        if os.path.exists(self.configFile):
            with open(self.configFile, "r") as file:
                config = json.load(file)
                settings = config.get("settings", {})

                self.confidence_thres = settings.get("confidence_thres", 0.33)
                self.iou_thres = settings.get("iou_thres", 0.5)
                self.imgSize = settings.get("imgSize", 256)
                try:
                    self.sensitivity = int(settings.get("sensitivity", 50))
                except ValueError:
                    self.sensitivity = 50
                try:
                    self.aimSensitivity = int(settings.get("aimSensitivity", 50))
                except ValueError:
                    self.aimSensitivity = 50

                self.aimbotStrength = settings.get("aimbotStrength", 1)
                self.aimbotKeybind = settings.get("aimbotKey", "VK_RIGHTMOUSEBUTTON")
                self.aimPart = settings.get("aimPart", "UpperTorso")
                self.running = True
                if self.aimbotKeybind not in virtualKeycode:
                    self.aimbotKeybind = "VK_RIGHTMOUSEBUTTON"
        else:
            self.confidence_thres = 0.33
            self.iou_thres = 0.5
            self.imgSize = 256
            self.aimbotStrength = 1
            self.aimPart = "UpperTorso"
            self.aimbotKeybind = "VK_RIGHTMOUSEBUTTON"
            print(
                "No configuration file found. Please enter your Fortnite sensitivity settings."
            )
            self.sensitivity = int(
                input("Enter your Fortnite Mouse Sensitivity X & Y-Axis Sensitivity: ")
            )
            self.aimSensitivity = int(
                input(
                    "Enter your Fortnite Mouse Sensitivity Scope & Targeting Sensitivity: "
                )
            )
            self.save_config()
            self.running = True

    def save_config(self):
        helpAimPart = {"aimPart": "aimPart Options: Head, UpperTorso, Torso, Pelvis, Random"}
        config = {
            "settings": {
                "model": self.modelPath.rsplit('\\', 1)[-1].rsplit('\\', 1)[-1],
                "confidence_thres": self.confidence_thres,
                "iou_thres": self.iou_thres,
                "imgSize": self.imgSize,
                "sensitivity": self.sensitivity,
                "aimSensitivity": self.aimSensitivity,
                "aimbotStrength": self.aimbotStrength,
                "aimbotKey": self.aimbotKeybind,
                "aimPart": self.aimPart,
            },
            "help": helpAimPart,
        }
        with open(self.configFile, "w") as file:
            json.dump(config, file, indent=4)
        self.loadConfig()

    def preprocess(self, img):
        img = cv.cvtColor(img, cv.COLOR_BGR2RGB)
        self.img_height, self.img_width = img.shape[:2]
        img = cv.resize(img, (self.inputWidth, self.inputHeight), interpolation=cv.INTER_LINEAR)
        img = np.array(img) / 255.0
        img = np.transpose(img, (2, 0, 1))
        img = np.expand_dims(img, axis=0).astype(np.float32)
        return img

    def get_detection_coordinates(self, boxes):
        center_x = self.img_width // 2
        center_y = self.img_height // 2
        detections = []
        for box in boxes:
            x1, y1, w, h = box
            x2, y2 = x1 + w, y1 + h
            cx = (x1 + x2) // 2 - center_x
            cy = (y1 + y2) // 2 - center_y
            distance = np.sqrt((cx - center_x)**2 + (cy - center_y)**2)
            screen_x = (self.screenWidth - self.imgSize) // 2 + (x1 + x2) // 2
            screen_y = (self.screenHeight - self.imgSize) // 2 + (y1 + y2) // 2
            cx = int(cx * 4)
            cy = int(cy * 4)
            detections.append({'distance': distance, 'coordinates': [x1, y1, w, h, cx, cy, screen_x, screen_y]})
        detections.sort(key=lambda x: x['distance'])
        return detections

    def postprocess(self, output):
        predictions = np.transpose(np.squeeze(output[0]))
        num_classes = predictions.shape[0]
        boxes = []
        confidences = []
        class_ids = []
        w_scale = self.img_width / self.inputWidth
        h_scale = self.img_height / self.inputHeight
        for i in range(num_classes):
            scores = predictions[i][4:]
            max_score = np.amax(scores)
            if max_score >= self.confidence_thres:
                class_id = np.argmax(scores)
                x, y, w, h = predictions[i][0], predictions[i][1], predictions[i][2], predictions[i][3]
                left = int((x - w/2) * w_scale)
                top = int((y - h/2) * h_scale)
                width = int(w * w_scale)
                height = int(h * h_scale)
                class_ids.append(class_id)
                confidences.append(max_score)
                boxes.append([left, top, width, height])
        indices = cv.dnn.NMSBoxes(boxes, confidences, self.confidence_thres, self.iou_thres)
        detections = [boxes[i] for i in indices]
        detections = self.get_detection_coordinates(detections)
        return detections

    def detect(self, screenshot):
        img = self.preprocess(screenshot)
        outputs = self.session.run(None, {self.session.get_inputs()[0].name: img})
        return self.postprocess(outputs)

    def generate_random_string(self, length):
        letters = string.ascii_letters
        digits = string.digits
        characters = letters + digits
        return ''.join(random.choice(characters) for _ in range(length))

    def rename_windows(self, addedfps):
        fps_text = ' FPS: '
        fps = addedfps
        SetWindowTextW = ctypes.windll.user32.SetWindowTextW
        SetWindowTextW.argtypes = [ctypes.c_void_p, ctypes.c_wchar_p]
        SetWindowTextW.restype = ctypes.c_bool
        GWL_STYLE = -16
        WS_VISIBLE = 268435456
        if self.windoww is None:
            for window in pygetwindow.getAllWindows():
                if window.title not in ['conhost.exe', 'Console Window Host'] and '\\' in window.title:
                    new_title = self.generate_random_string(12) + fps_text + str(fps)
                    style = ctypes.windll.user32.GetWindowLongW(window._hWnd, GWL_STYLE)
                    if style & WS_VISIBLE:
                        self.windoww = window._hWnd
                        SetWindowTextW(window._hWnd, new_title)
        else:
            new_title = self.generate_random_string(12) + fps_text + str(fps)
            SetWindowTextW(self.windoww, new_title)

    def process_title(self, iterations):
        self.rename_windows(iterations)

    def countFPS(self, update):
        current_time = time.time()
        self.iterations = [t for t in self.iterations if current_time - t < 1.0]
        self.iterations.append(current_time)
        if update == True:
            self.process_title(len(self.iterations))


    def send_input(self, x, y, x2, y2):
        inp = INPUT(type=INPUT_MOUSE, mi=MOUSEINPUT(dx=x, dy=y, dwFlags=MOUSEEVENTF_MOVE))
        ctypes.windll.user32.SendInput(1, ctypes.byref(inp), ctypes.sizeof(inp))

    def processAimbot(self, coordinates):
        normalized_sensitivity = 5 / self.sensitivity
        normalized_aimSensitivity = (2 - self.aimSensitivity / 50) + 1
        w = coordinates['coordinates'][2]
        h = coordinates['coordinates'][3]

        screen_enemy_center_x = coordinates['coordinates'][6]
        screen_enemy_center_y = coordinates['coordinates'][7]

        offset = max(w, h) / 3.5
        if self.aimPart == "Torso":
            offset = max(w, h) / 5
        elif self.aimPart == "UpperTorso":
            offset = max(w, h) / 3.5
        elif self.aimPart == "Head":
            offset = max(w, h) / 2.25
        elif self.aimPart == "Pelvis":
            offset = max(w, h) / 12.5
        elif self.aimPart == "Random":
            offset = max(w, h) / random.uniform(12.5, 2.25)
        screenCenterX = self.screenWidth // 2
        screenCenterY = self.screenHeight // 2 + offset
        distanceX = screen_enemy_center_x - screenCenterX
        distanceY = screen_enemy_center_y - screenCenterY
        moveX = 0
        moveY = 0
        positionX = int(screen_enemy_center_x)
        positionY = int(screen_enemy_center_y - offset)
        dist = math.sqrt(distanceX**2 + distanceY**2)
        strength = self.aimbotStrength * 1.75
        moveDist = min(max(dist, 1), 1 * (strength * 100))
        moveDist = moveDist / 2 * normalized_aimSensitivity * normalized_sensitivity
        if dist == 0:
            dist = 0.0001
        ratio = moveDist / dist
        screen_enemy_center_x = screenCenterX + distanceX * ratio
        screen_enemy_center_y = screenCenterY + distanceY * ratio
        distX = screen_enemy_center_x - screenCenterX
        distY = screen_enemy_center_y - screenCenterY
        moveX = int(distX * strength)
        moveY = int(distY * strength)
        if abs(moveX) < 1.5:
            moveX = int(0)
        if abs(moveY) < 1.5:
            moveY = int(0)
        self.send_input(moveX, moveY, positionX, positionY)

    def main(self):
        sct = mss()
        startTime = time.time()
        while self.running:
            current = time.time()
            check = current - startTime
            if check < 1 / 20.5:
                time.sleep(1 / 20.5 - check)
            screenshot = np.array(sct.grab({ "top": int((self.screenHeight - self.imgSize) // 2),"left": int((self.screenWidth - self.imgSize) // 2),"width": int(self.imgSize),"height": int(self.imgSize)}))
            
            aiming = ctypes.windll.user32.GetAsyncKeyState(virtualKeycode[self.aimbotKeybind])
            frame = cv.resize(cv.cvtColor(screenshot, cv.COLOR_RGBA2BGR), (int(self.imgSize), int(self.imgSize)))

            scaling = self.imgSize / 1024.0
            startPoint = 0, 0
            if self.imgSize >= 700:
                startPoint = round(self.imgSize / 2.5), round(self.imgSize / 2.25)
            else:
                startPoint = round(self.imgSize / 3.1), round(self.imgSize / 2.25)
            endPoint = round(self.imgSize / 2.75 - 170), round(self.imgSize)
            if aiming:
                startPoint = round(self.imgSize * scaling / 5.8), round(self.imgSize * scaling / 2.9)
                endPoint = 0, self.imgSize
            frame = cv.rectangle(frame, startPoint, endPoint, (0, 0, 0), -1)
            detections = self.detect(np.array(frame))
            self.randomizeTitle = self.randomizeTitle + 1
            self.countFPS(False)
            if self.randomizeTitle > 256:
                self.countFPS(True)
                self.randomizeTitle = 0
            if detections and self.aimbotEnabled:
                if ctypes.windll.user32.GetAsyncKeyState(virtualKeycode[self.aimbotKeybind]) != 0:
                    self.processAimbot(detections[0])

    def stop(self):
        self.running = False


def console(detection):
    cudaEnabled = False
    if (check_requirements("onnxruntime-gpu" if torch.cuda.is_available() else "onnxruntime") == True):
        cudaEnabled = True
    while True:
        # os.system("cls" if os.name == "nt" else "clear")
        print(
            "           __                                    __  __                           \n          /  |                                  /  |/  |                          \n  _______ $$ |  ______   __   __   __   ______  $$/ $$ |____    ______   __    __ \n /       |$$ | /      \\ /  | /  | /  | /      \\ /  |$$      \\  /      \\ /  \\  /  |\n/$$$$$$$/ $$ |/$$$$$$  |$$ | $$ | $$ |/$$$$$$  |$$ |$$$$$$$  | $$$$$$  |$$  \\/$$/ \n$$      \\ $$ |$$ |  $$ |$$ | $$ | $$ |$$ |  $$ |$$ |$$ |  $$ | /    $$ | $$  $$<  \n $$$$$$  |$$ |$$ \\__$$ |$$ \\_$$ \\_$$ |$$ |__$$ |$$ |$$ |  $$ |/$$$$$$$ | /$$$$  \\ \n/     $$/ $$ |$$    $$/ $$   $$   $$/ $$    $$/ $$ |$$ |  $$ |$$    $$ |/$$/ $$  |\n$$$$$$$/  $$/  $$$$$$/   $$$$$/$$$$/  $$$$$$$/  $$/ $$/   $$/  $$$$$$$/ $$/   $$/ \n                                      $$ |                                        \n                                      $$ |                                        \n                                      $$/                                         \n        "
        )
        if cudaEnabled == True:
            print("\x1b[92mCUDA Accelaration Enabled.\x1b[0m")
        else:
            print("\x1b[91mCUDA Accelaration Disabled.\x1b[0m")
        print("Available commands: enable, disable, reload, quit")
        command = input("> ")
        if command == "enable":
            detection.aimbotEnabled = True
            print(detection.running)
            print("\x1b[92mAimbot enabled.\x1b[0m")
        elif command == "disable":
            detection.aimbotEnabled = False
            print("\x1b[91mAimbot disabled.\x1b[0m")
        elif command == "reload":
            detection.loadConfig()
            print("\x1b[94mConfiguration reloaded.\x1b[0m")
        elif command == "quit":
            print("\x1b[93mExiting...\x1b[0m")
            detection.stop()
            os._exit(0)
        else:
            print("Invalid command. Available commands: enable, disable, reload, quit")
        input("Press Enter to continue...")


if __name__ == "__main__":
    check_requirements("onnxruntime-gpu" if torch.cuda.is_available() else "onnxruntime")
    main = aimbot()
    console = threading.Thread(target=console, args=(main,))
    console.daemon = True
    console.start()
    try:
        main.main()
    except Exception as exception:
        print("An error occurred:")
        print(str(exception))
        input("Press Enter to continue...")
    finally:
        main.stop()
        console.join()
