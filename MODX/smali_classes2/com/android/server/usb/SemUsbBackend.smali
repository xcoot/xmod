.class public final Lcom/android/server/usb/SemUsbBackend;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

.field public mIsUnlocked:Z

.field public mPort:Landroid/hardware/usb/UsbPort;

.field public mPortManager:Lcom/android/server/usb/UsbPortManager;

.field public mPortStatus:Landroid/hardware/usb/UsbPortStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/usb/SemUsbBackend;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    .line 8
    return-void
.end method

.method public static isFunctionEnabled(Ljava/lang/String;)Z
    .locals 5

    .line 1
    const-string/jumbo v0, "sys.usb.config"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-gez v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/16 v3, 0x2c

    .line 17
    .line 18
    if-lez v1, :cond_1

    .line 19
    .line 20
    add-int/lit8 v4, v1, -0x1

    .line 21
    .line 22
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eq v4, v3, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    add-int/2addr p0, v1

    .line 34
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-ge p0, v1, :cond_2

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-eq p0, v3, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 v2, 0x1

    .line 48
    :goto_0
    return v2
.end method


# virtual methods
.method public final getUsbDataMode()I
    .locals 2

    .line 1
    iget-boolean p0, p0, Lcom/android/server/usb/SemUsbBackend;->mIsUnlocked:Z

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const-string v1, "SemUsbBackend"

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    const-string p0, "USB connection getUsbDataMode : None"

    .line 9
    .line 10
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    const-string/jumbo p0, "mtp"

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Lcom/android/server/usb/SemUsbBackend;->isFunctionEnabled(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    const-string p0, "USB connection getUsbDataMode : mtp"

    .line 24
    .line 25
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x2

    .line 29
    return p0

    .line 30
    :cond_1
    const-string/jumbo p0, "ptp"

    .line 31
    .line 32
    .line 33
    invoke-static {p0}, Lcom/android/server/usb/SemUsbBackend;->isFunctionEnabled(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_2

    .line 38
    .line 39
    const-string p0, "USB connection getUsbDataMode : ptp"

    .line 40
    .line 41
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x4

    .line 45
    return p0

    .line 46
    :cond_2
    const-string/jumbo p0, "midi"

    .line 47
    .line 48
    .line 49
    invoke-static {p0}, Lcom/android/server/usb/SemUsbBackend;->isFunctionEnabled(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-eqz p0, :cond_3

    .line 54
    .line 55
    const-string p0, "USB connection getUsbDataMode : midi"

    .line 56
    .line 57
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    const/4 p0, 0x6

    .line 61
    return p0

    .line 62
    :cond_3
    const-string/jumbo p0, "mass_storage"

    .line 63
    .line 64
    .line 65
    invoke-static {p0}, Lcom/android/server/usb/SemUsbBackend;->isFunctionEnabled(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-eqz p0, :cond_4

    .line 70
    .line 71
    const-string p0, "USB connection getUsbDataMode : mass_storage"

    .line 72
    .line 73
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    const/16 p0, 0x8

    .line 77
    .line 78
    return p0

    .line 79
    :cond_4
    const-string/jumbo p0, "sec_charging"

    .line 80
    .line 81
    .line 82
    invoke-static {p0}, Lcom/android/server/usb/SemUsbBackend;->isFunctionEnabled(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    if-eqz p0, :cond_5

    .line 87
    .line 88
    const-string p0, "USB connection getUsbDataMode : sec_charging"

    .line 89
    .line 90
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    return v0

    .line 94
    :cond_5
    const-string/jumbo p0, "mtp,conn_gadget"

    .line 95
    .line 96
    .line 97
    invoke-static {p0}, Lcom/android/server/usb/SemUsbBackend;->isFunctionEnabled(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    if-eqz p0, :cond_6

    .line 102
    .line 103
    const-string p0, "USB connection getUsbDataMode : mtp,conn_gadget"

    .line 104
    .line 105
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    const/16 p0, 0xa

    .line 109
    .line 110
    return p0

    .line 111
    :cond_6
    return v0
.end method

.method public final updateUsbPort()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/SemUsbBackend;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/usb/UsbPortManager;->getPorts()[Landroid/hardware/usb/UsbPort;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    array-length v2, v1

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    if-ge v3, v2, :cond_1

    .line 10
    .line 11
    aget-object v4, v1, v3

    .line 12
    .line 13
    invoke-virtual {v4}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {v0, v4}, Lcom/android/server/usb/UsbPortManager;->getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    new-instance v5, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string/jumbo v6, "updateUsbPort() status = "

    .line 24
    .line 25
    .line 26
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    const-string v6, "SemUsbBackend"

    .line 37
    .line 38
    invoke-static {v6, v5}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    const-string/jumbo v5, "updateUsbPort() mPort = "

    .line 42
    .line 43
    .line 44
    if-eqz v4, :cond_0

    .line 45
    .line 46
    new-instance v7, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string/jumbo v8, "updateUsbPort() status.isConnected() = "

    .line 49
    .line 50
    .line 51
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    invoke-static {v6, v7}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-eqz v7, :cond_0

    .line 73
    .line 74
    aget-object v0, v1, v3

    .line 75
    .line 76
    iput-object v0, p0, Lcom/android/server/usb/SemUsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    .line 77
    .line 78
    iput-object v4, p0, Lcom/android/server/usb/SemUsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 79
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object p0, p0, Lcom/android/server/usb/SemUsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    .line 86
    .line 87
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-static {v6, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object v5, p0, Lcom/android/server/usb/SemUsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    .line 104
    .line 105
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-static {v6, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    add-int/lit8 v3, v3, 0x1

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_1
    :goto_1
    return-void
.end method
