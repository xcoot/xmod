.class public abstract Lcom/android/server/usb/hal/gadget/UsbGadgetHalInstance;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static getInstance(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/hal/gadget/UsbGadgetHal;
    .locals 5

    .line 1
    const-string v0, "UsbDeviceManager"

    .line 2
    .line 3
    sget v1, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    const-string v2, "UsbPortManager"

    .line 7
    .line 8
    const-string v3, "Querying USB Gadget HAL version"

    .line 9
    .line 10
    invoke-static {v1, v2, v3}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    :try_start_0
    sget-object v1, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;->USB_GADGET_AIDL_SERVICE:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v1}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v1
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v1

    .line 21
    sget-object v3, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 22
    .line 23
    const-string v3, "connectToProxy: usb gadget Aidl hal service not found."

    .line 24
    .line 25
    invoke-static {v0, v3, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    :goto_0
    const/4 v3, 0x4

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    const-string v0, "USB Gadget HAL AIDL present"

    .line 33
    .line 34
    invoke-static {v3, v2, v0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    new-instance v0, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/android/server/usb/hal/gadget/UsbGadgetAidl;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    .line 40
    .line 41
    .line 42
    return-object v0

    .line 43
    :cond_0
    const/4 v1, 0x1

    .line 44
    :try_start_1
    invoke-static {v1}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->getService(Z)Landroid/hardware/usb/gadget/V1_0/IUsbGadget;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catch_1
    move-exception v1

    .line 49
    sget-object v4, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 50
    .line 51
    const-string v4, "IUSBGadget hal service present but failed to get service"

    .line 52
    .line 53
    invoke-static {v0, v4, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .line 55
    .line 56
    :goto_1
    const-string v0, "USB Gadget HAL HIDL present"

    .line 57
    .line 58
    invoke-static {v3, v2, v0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    new-instance v0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;

    .line 62
    .line 63
    invoke-direct {v0, p0}, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    .line 64
    .line 65
    .line 66
    return-object v0

    .line 67
    :catch_2
    move-exception p0

    .line 68
    sget-object v1, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 69
    .line 70
    const-string v1, "connectToProxy: usb gadget hidl hal service not found."

    .line 71
    .line 72
    invoke-static {v0, v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    .line 74
    .line 75
    const/4 p0, 0x6

    .line 76
    const-string v0, "USB Gadget HAL AIDL/HIDL not present"

    .line 77
    .line 78
    invoke-static {p0, v2, v0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    const/4 p0, 0x0

    .line 82
    return-object p0
.end method
