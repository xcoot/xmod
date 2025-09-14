.class public final Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;
.super Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCurrentFunctionsStr:Ljava/lang/String;

.field public mCurrentOemFunctions:Ljava/lang/String;

.field public mOemModeMap:Ljava/util/HashMap;

.field public mUsbDataUnlocked:Z


# direct methods
.method public static addFunction(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string/jumbo v0, "none"

    .line 2
    .line 3
    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-string v1, "adb"

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    invoke-static {p0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-lez v0, :cond_1

    .line 24
    .line 25
    const-string v0, ","

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    :cond_1
    invoke-static {p0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    :cond_2
    return-object p0
.end method

.method public static containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-gez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const/16 v2, 0x2c

    .line 10
    .line 11
    if-lez v0, :cond_1

    .line 12
    .line 13
    add-int/lit8 v3, v0, -0x1

    .line 14
    .line 15
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eq v3, v2, :cond_1

    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    add-int/2addr p1, v0

    .line 27
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-ge p1, v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eq p0, v2, :cond_2

    .line 38
    .line 39
    return v1

    .line 40
    :cond_2
    const/4 p0, 0x1

    .line 41
    return p0
.end method

.method public static removeFunction(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ","

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    array-length v3, p0

    .line 10
    if-ge v2, v3, :cond_1

    .line 11
    .line 12
    aget-object v3, p0, v2

    .line 13
    .line 14
    const-string v4, "adb"

    .line 15
    .line 16
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    aput-object v3, p0, v2

    .line 24
    .line 25
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    array-length v2, p0

    .line 29
    const/4 v3, 0x1

    .line 30
    if-ne v2, v3, :cond_2

    .line 31
    .line 32
    aget-object v2, p0, v1

    .line 33
    .line 34
    if-nez v2, :cond_2

    .line 35
    .line 36
    const-string/jumbo p0, "none"

    .line 37
    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    :goto_1
    array-length v3, p0

    .line 46
    if-ge v1, v3, :cond_5

    .line 47
    .line 48
    aget-object v3, p0, v1

    .line 49
    .line 50
    if-eqz v3, :cond_4

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-lez v4, :cond_3

    .line 57
    .line 58
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    return-object p0
.end method

.method public static setUsbConfig(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v1, "setUsbConfig("

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ")"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "UsbDeviceManager"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    const-string/jumbo v0, "sys.usb.config"

    .line 29
    .line 30
    .line 31
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public static waitForState(Ljava/lang/String;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "acm"

    .line 3
    .line 4
    invoke-static {p0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    const-string v1, "dm"

    .line 11
    .line 12
    invoke-static {p0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    const-string v1, "adb"

    .line 19
    .line 20
    invoke-static {p0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/16 v1, 0x1e

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    const/16 v1, 0x28

    .line 31
    .line 32
    :goto_1
    const/4 v2, 0x0

    .line 33
    const/4 v3, 0x0

    .line 34
    move v4, v2

    .line 35
    :goto_2
    if-ge v4, v1, :cond_3

    .line 36
    .line 37
    const-string/jumbo v3, "sys.usb.state"

    .line 38
    .line 39
    .line 40
    const-string v5, ""

    .line 41
    .line 42
    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_2

    .line 51
    .line 52
    return v0

    .line 53
    :cond_2
    const-wide/16 v5, 0x32

    .line 54
    .line 55
    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    .line 56
    .line 57
    .line 58
    add-int/2addr v4, v0

    .line 59
    goto :goto_2

    .line 60
    :cond_3
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 61
    .line 62
    const-string/jumbo v0, "waitForState("

    .line 63
    .line 64
    .line 65
    const-string v4, ") FAILED: got "

    .line 66
    .line 67
    const-string v5, ", waitLoops "

    .line 68
    .line 69
    invoke-static {v0, p0, v4, v3, v5}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    const-string v0, "UsbDeviceManager"

    .line 81
    .line 82
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    return v2
.end method


# virtual methods
.method public final getUsbSpeedCb(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final handlerInitDone(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final readOemUsbOverrideConfig(Landroid/content/Context;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const v0, 0x107013a

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_5

    .line 13
    .line 14
    array-length v0, p1

    .line 15
    const/4 v1, 0x0

    .line 16
    move v2, v1

    .line 17
    :goto_0
    if-ge v2, v0, :cond_5

    .line 18
    .line 19
    aget-object v3, p1, v2

    .line 20
    .line 21
    const-string v4, ":"

    .line 22
    .line 23
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    array-length v4, v3

    .line 28
    const/4 v5, 0x3

    .line 29
    if-eq v4, v5, :cond_0

    .line 30
    .line 31
    array-length v4, v3

    .line 32
    const/4 v6, 0x4

    .line 33
    if-ne v4, v6, :cond_4

    .line 34
    .line 35
    :cond_0
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mOemModeMap:Ljava/util/HashMap;

    .line 36
    .line 37
    if-nez v4, :cond_1

    .line 38
    .line 39
    new-instance v4, Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mOemModeMap:Ljava/util/HashMap;

    .line 45
    .line 46
    :cond_1
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mOemModeMap:Ljava/util/HashMap;

    .line 47
    .line 48
    aget-object v6, v3, v1

    .line 49
    .line 50
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Ljava/util/HashMap;

    .line 55
    .line 56
    if-nez v4, :cond_2

    .line 57
    .line 58
    new-instance v4, Ljava/util/HashMap;

    .line 59
    .line 60
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 61
    .line 62
    .line 63
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mOemModeMap:Ljava/util/HashMap;

    .line 64
    .line 65
    aget-object v7, v3, v1

    .line 66
    .line 67
    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    :cond_2
    const/4 v6, 0x1

    .line 71
    aget-object v7, v3, v6

    .line 72
    .line 73
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    if-nez v7, :cond_4

    .line 78
    .line 79
    array-length v7, v3

    .line 80
    const/4 v8, 0x2

    .line 81
    if-ne v7, v5, :cond_3

    .line 82
    .line 83
    aget-object v5, v3, v6

    .line 84
    .line 85
    new-instance v6, Landroid/util/Pair;

    .line 86
    .line 87
    aget-object v3, v3, v8

    .line 88
    .line 89
    const-string v7, ""

    .line 90
    .line 91
    invoke-direct {v6, v3, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    aget-object v6, v3, v6

    .line 99
    .line 100
    new-instance v7, Landroid/util/Pair;

    .line 101
    .line 102
    aget-object v8, v3, v8

    .line 103
    .line 104
    aget-object v3, v3, v5

    .line 105
    .line 106
    invoke-direct {v7, v8, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_5
    return-void
.end method

.method public final resetCb(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setCurrentUsbFunctionsCb(IJJIZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setEnabledFunctions(IJZ)V
    .locals 5

    .line 1
    invoke-static {p2, p3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbDataTransferActive(J)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "setEnabledFunctions functions="

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, " ,forceRestart="

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, " ,usbDataUnlocked="

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, " ,operationId="

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string v1, "UsbDeviceManager"

    .line 47
    .line 48
    invoke-static {v1, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mUsbDataUnlocked:Z

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    if-eq v0, p1, :cond_0

    .line 55
    .line 56
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-nez p1, :cond_0

    .line 61
    .line 62
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->isMassTestEnabled()Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-nez p1, :cond_0

    .line 67
    .line 68
    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mUsbDataUnlocked:Z

    .line 69
    .line 70
    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    .line 71
    .line 72
    .line 73
    const/4 p4, 0x1

    .line 74
    :cond_0
    iget-wide v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    .line 75
    .line 76
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    .line 77
    .line 78
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->trySetEnabledFunctions(JZ)Z

    .line 79
    .line 80
    .line 81
    move-result p4

    .line 82
    if-eqz p4, :cond_1

    .line 83
    .line 84
    return-void

    .line 85
    :cond_1
    if-eqz p1, :cond_2

    .line 86
    .line 87
    cmp-long p1, v3, p2

    .line 88
    .line 89
    if-eqz p1, :cond_2

    .line 90
    .line 91
    const-string p1, "Failsafe 1: Restoring previous USB functions."

    .line 92
    .line 93
    invoke-static {v1, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v3, v4, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->trySetEnabledFunctions(JZ)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_2

    .line 101
    .line 102
    return-void

    .line 103
    :cond_2
    const-string p1, "Failsafe 2: Restoring default USB functions."

    .line 104
    .line 105
    invoke-static {v1, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$smgetDefaultUsbValue()J

    .line 109
    .line 110
    .line 111
    move-result-wide p1

    .line 112
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->trySetEnabledFunctions(JZ)Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_3

    .line 117
    .line 118
    return-void

    .line 119
    :cond_3
    const-string p1, "Failsafe 3: Restoring empty function list (with ADB if enabled)."

    .line 120
    .line 121
    invoke-static {v1, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    const-wide/16 p1, 0x0

    .line 125
    .line 126
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->trySetEnabledFunctions(JZ)Z

    .line 127
    .line 128
    .line 129
    move-result p0

    .line 130
    if-eqz p0, :cond_4

    .line 131
    .line 132
    return-void

    .line 133
    :cond_4
    const-string p0, "Unable to set any USB functions!"

    .line 134
    .line 135
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    return-void
.end method

.method public final trySetEnabledFunctions(JZ)Z
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-wide/from16 v2, p1

    .line 4
    .line 5
    move/from16 v4, p3

    .line 6
    .line 7
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string/jumbo v5, "trySetEnabledFunctions: usbFunctions="

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static/range {p1 .. p2}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v5, " forceRestart="

    .line 25
    .line 26
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v5, "UsbDeviceManager"

    .line 37
    .line 38
    invoke-static {v5, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    const-wide/16 v6, 0x0

    .line 42
    .line 43
    cmp-long v0, v2, v6

    .line 44
    .line 45
    const/4 v8, 0x1

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    invoke-static/range {p1 .. p2}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$smgetDefaultUsbValue()J

    .line 54
    .line 55
    .line 56
    move-result-wide v9

    .line 57
    invoke-static {v9, v10}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v9, v10}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbDataTransferActive(J)Z

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    if-eqz v9, :cond_1

    .line 66
    .line 67
    iput-boolean v8, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mUsbDataUnlocked:Z

    .line 68
    .line 69
    :cond_1
    :goto_0
    iput-wide v2, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    .line 70
    .line 71
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-nez v2, :cond_2

    .line 76
    .line 77
    iget-wide v2, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    .line 78
    .line 79
    const-wide/16 v9, -0x2

    .line 80
    .line 81
    and-long/2addr v2, v9

    .line 82
    iput-wide v2, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    .line 83
    .line 84
    :cond_2
    const-string/jumbo v2, "none"

    .line 85
    .line 86
    .line 87
    if-eqz v0, :cond_4

    .line 88
    .line 89
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isAdbEnabled()Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-eqz v3, :cond_3

    .line 94
    .line 95
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->addFunction(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    goto :goto_1

    .line 100
    :cond_3
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->removeFunction(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-eqz v3, :cond_6

    .line 109
    .line 110
    :cond_4
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isAdbEnabled()Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_5

    .line 115
    .line 116
    const-wide/16 v9, 0x1

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_5
    const-wide/16 v9, 0x4

    .line 120
    .line 121
    :goto_2
    invoke-static {v9, v10}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    :cond_6
    const-string v3, ""

    .line 126
    .line 127
    if-nez v0, :cond_7

    .line 128
    .line 129
    move-object v0, v3

    .line 130
    :cond_7
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isAdbEnabled()Z

    .line 131
    .line 132
    .line 133
    move-result v9

    .line 134
    if-eqz v9, :cond_8

    .line 135
    .line 136
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->addFunction(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    :goto_3
    move-object v9, v0

    .line 141
    goto :goto_4

    .line 142
    :cond_8
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->removeFunction(Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    goto :goto_3

    .line 147
    :goto_4
    iget-object v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    const-string v10, "adb"

    .line 153
    .line 154
    invoke-static {v9, v10}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    .line 155
    .line 156
    .line 157
    move-result v10

    .line 158
    if-eqz v10, :cond_d

    .line 159
    .line 160
    invoke-static {}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->getInstance()Lcom/samsung/android/knoxguard/KnoxGuardManager;

    .line 161
    .line 162
    .line 163
    move-result-object v10

    .line 164
    invoke-virtual {v10}, Lcom/samsung/android/knoxguard/KnoxGuardManager;->isKGAllowADB()Z

    .line 165
    .line 166
    .line 167
    move-result v10

    .line 168
    if-nez v10, :cond_9

    .line 169
    .line 170
    goto :goto_5

    .line 171
    :cond_9
    const-string v10, "isUsbDebuggingEnabled"

    .line 172
    .line 173
    const-string v11, "content://com.sec.knox.provider/RestrictionPolicy3"

    .line 174
    .line 175
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 176
    .line 177
    .line 178
    move-result-object v12

    .line 179
    const/16 v17, 0x0

    .line 180
    .line 181
    :try_start_0
    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    .line 182
    .line 183
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 184
    .line 185
    .line 186
    move-result-object v11

    .line 187
    const/16 v16, 0x0

    .line 188
    .line 189
    const/4 v15, 0x0

    .line 190
    const/4 v13, 0x0

    .line 191
    move-object v14, v10

    .line 192
    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 193
    .line 194
    .line 195
    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 196
    if-eqz v11, :cond_b

    .line 197
    .line 198
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 199
    .line 200
    .line 201
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    const-string v10, "false"

    .line 210
    .line 211
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-eqz v0, :cond_a

    .line 216
    .line 217
    const-string v0, "Function adb is restricted"

    .line 218
    .line 219
    invoke-static {v5, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    .line 224
    .line 225
    :goto_5
    invoke-static {v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->removeFunction(Ljava/lang/String;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v9

    .line 229
    goto :goto_a

    .line 230
    :catchall_0
    move-exception v0

    .line 231
    move-object v1, v0

    .line 232
    move-object/from16 v17, v11

    .line 233
    .line 234
    goto :goto_8

    .line 235
    :catch_0
    move-exception v0

    .line 236
    move-object/from16 v17, v11

    .line 237
    .line 238
    goto :goto_7

    .line 239
    :cond_a
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 240
    .line 241
    .line 242
    goto :goto_6

    .line 243
    :cond_b
    move-object/from16 v17, v11

    .line 244
    .line 245
    :goto_6
    if-eqz v17, :cond_d

    .line 246
    .line 247
    :try_start_3
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 248
    .line 249
    .line 250
    goto :goto_a

    .line 251
    :catch_1
    move-exception v0

    .line 252
    move-object v10, v0

    .line 253
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 254
    .line 255
    .line 256
    goto :goto_a

    .line 257
    :catchall_1
    move-exception v0

    .line 258
    move-object v1, v0

    .line 259
    goto :goto_8

    .line 260
    :catch_2
    move-exception v0

    .line 261
    :goto_7
    :try_start_4
    const-string/jumbo v10, "policy : adb, return exception"

    .line 262
    .line 263
    .line 264
    invoke-static {v5, v10, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 265
    .line 266
    .line 267
    if-eqz v17, :cond_d

    .line 268
    .line 269
    :try_start_5
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 270
    .line 271
    .line 272
    goto :goto_a

    .line 273
    :goto_8
    if-eqz v17, :cond_c

    .line 274
    .line 275
    :try_start_6
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 276
    .line 277
    .line 278
    goto :goto_9

    .line 279
    :catch_3
    move-exception v0

    .line 280
    move-object v2, v0

    .line 281
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 282
    .line 283
    .line 284
    :cond_c
    :goto_9
    throw v1

    .line 285
    :cond_d
    :goto_a
    invoke-static {v9}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    .line 286
    .line 287
    .line 288
    move-result-wide v10

    .line 289
    iput-wide v10, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSecCurrentFunctions:J

    .line 290
    .line 291
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 292
    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    const-string v10, "Update mCurrentFunctions="

    .line 296
    .line 297
    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    iget-wide v10, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    .line 301
    .line 302
    invoke-static {v10, v11}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v10

    .line 306
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    const-string v10, " mSecCurrentFunctions="

    .line 310
    .line 311
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    iget-wide v10, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSecCurrentFunctions:J

    .line 315
    .line 316
    invoke-static {v10, v11}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v10

    .line 320
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    invoke-static {v5, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    .line 329
    .line 330
    const-string/jumbo v0, "normal"

    .line 331
    .line 332
    .line 333
    const-string/jumbo v10, "unknown"

    .line 334
    .line 335
    .line 336
    const-string/jumbo v11, "ro.bootmode"

    .line 337
    .line 338
    .line 339
    if-eqz v9, :cond_13

    .line 340
    .line 341
    iget-object v12, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mOemModeMap:Ljava/util/HashMap;

    .line 342
    .line 343
    if-nez v12, :cond_e

    .line 344
    .line 345
    goto/16 :goto_c

    .line 346
    .line 347
    :cond_e
    invoke-static {v11, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v12

    .line 351
    new-instance v13, Ljava/lang/StringBuilder;

    .line 352
    .line 353
    const-string v14, "applyOemOverride usbfunctions="

    .line 354
    .line 355
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    const-string v14, " bootmode="

    .line 362
    .line 363
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v13

    .line 373
    invoke-static {v5, v13}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    .line 375
    .line 376
    iget-object v13, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mOemModeMap:Ljava/util/HashMap;

    .line 377
    .line 378
    invoke-virtual {v13, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v13

    .line 382
    check-cast v13, Ljava/util/Map;

    .line 383
    .line 384
    if-eqz v13, :cond_13

    .line 385
    .line 386
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    move-result v14

    .line 390
    if-nez v14, :cond_13

    .line 391
    .line 392
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    move-result v12

    .line 396
    if-nez v12, :cond_13

    .line 397
    .line 398
    invoke-interface {v13, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v12

    .line 402
    check-cast v12, Landroid/util/Pair;

    .line 403
    .line 404
    if-eqz v12, :cond_11

    .line 405
    .line 406
    const-string v13, "OEM USB override: "

    .line 407
    .line 408
    const-string v14, " ==> "

    .line 409
    .line 410
    invoke-static {v13, v9, v14}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    move-result-object v13

    .line 414
    iget-object v14, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 415
    .line 416
    check-cast v14, Ljava/lang/String;

    .line 417
    .line 418
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    const-string v14, " persist across reboot "

    .line 422
    .line 423
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    iget-object v14, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 427
    .line 428
    check-cast v14, Ljava/lang/String;

    .line 429
    .line 430
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v13

    .line 437
    invoke-static {v5, v13}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    .line 439
    .line 440
    iget-object v13, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 441
    .line 442
    check-cast v13, Ljava/lang/String;

    .line 443
    .line 444
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 445
    .line 446
    .line 447
    move-result v3

    .line 448
    if-nez v3, :cond_10

    .line 449
    .line 450
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isAdbEnabled()Z

    .line 451
    .line 452
    .line 453
    move-result v3

    .line 454
    if-eqz v3, :cond_f

    .line 455
    .line 456
    iget-object v3, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 457
    .line 458
    check-cast v3, Ljava/lang/String;

    .line 459
    .line 460
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->addFunction(Ljava/lang/String;)Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v3

    .line 464
    goto :goto_b

    .line 465
    :cond_f
    iget-object v3, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 466
    .line 467
    check-cast v3, Ljava/lang/String;

    .line 468
    .line 469
    :goto_b
    const-string v13, "OEM USB override persisting: "

    .line 470
    .line 471
    const-string v14, "in prop: "

    .line 472
    .line 473
    invoke-static {v13, v3, v14}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    move-result-object v13

    .line 477
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->getPersistProp()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v14

    .line 481
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v13

    .line 488
    invoke-static {v5, v13}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    .line 490
    .line 491
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->getPersistProp()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v13

    .line 495
    invoke-static {v13, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    :cond_10
    iget-object v3, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 499
    .line 500
    check-cast v3, Ljava/lang/String;

    .line 501
    .line 502
    goto :goto_d

    .line 503
    :cond_11
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isAdbEnabled()Z

    .line 504
    .line 505
    .line 506
    move-result v3

    .line 507
    if-eqz v3, :cond_12

    .line 508
    .line 509
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->addFunction(Ljava/lang/String;)Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v3

    .line 513
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->getPersistProp()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v12

    .line 517
    invoke-static {v12, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    goto :goto_c

    .line 521
    :cond_12
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->getPersistProp()Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v3

    .line 525
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    .line 527
    .line 528
    :cond_13
    :goto_c
    move-object v3, v9

    .line 529
    :goto_d
    invoke-static {v11, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v11

    .line 533
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 534
    .line 535
    .line 536
    move-result v0

    .line 537
    if-nez v0, :cond_15

    .line 538
    .line 539
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 540
    .line 541
    .line 542
    move-result v0

    .line 543
    if-eqz v0, :cond_14

    .line 544
    .line 545
    goto :goto_e

    .line 546
    :cond_14
    iget-object v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsStr:Ljava/lang/String;

    .line 547
    .line 548
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 549
    .line 550
    .line 551
    move-result v0

    .line 552
    if-nez v0, :cond_15

    .line 553
    .line 554
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->getPersistProp()Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v0

    .line 558
    invoke-static {v0, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    :cond_15
    :goto_e
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 562
    .line 563
    .line 564
    move-result v0

    .line 565
    if-nez v0, :cond_16

    .line 566
    .line 567
    iget-object v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentOemFunctions:Ljava/lang/String;

    .line 568
    .line 569
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 570
    .line 571
    .line 572
    move-result v0

    .line 573
    if-eqz v0, :cond_17

    .line 574
    .line 575
    :cond_16
    iget-object v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsStr:Ljava/lang/String;

    .line 576
    .line 577
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 578
    .line 579
    .line 580
    move-result v0

    .line 581
    if-eqz v0, :cond_17

    .line 582
    .line 583
    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    .line 584
    .line 585
    if-eqz v0, :cond_17

    .line 586
    .line 587
    if-eqz v4, :cond_1d

    .line 588
    .line 589
    :cond_17
    iput-object v9, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsStr:Ljava/lang/String;

    .line 590
    .line 591
    iput-object v3, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentOemFunctions:Ljava/lang/String;

    .line 592
    .line 593
    const/4 v0, 0x0

    .line 594
    iput-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    .line 595
    .line 596
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->setUsbConfig(Ljava/lang/String;)V

    .line 597
    .line 598
    .line 599
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->waitForState(Ljava/lang/String;)Z

    .line 600
    .line 601
    .line 602
    move-result v4

    .line 603
    if-nez v4, :cond_18

    .line 604
    .line 605
    const-string v1, "Failed to kick USB config"

    .line 606
    .line 607
    invoke-static {v5, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    .line 609
    .line 610
    return v0

    .line 611
    :cond_18
    const-string/jumbo v4, "shutdown"

    .line 612
    .line 613
    .line 614
    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    .line 615
    .line 616
    .line 617
    move-result v4

    .line 618
    if-eqz v4, :cond_19

    .line 619
    .line 620
    const-string v0, "Set SHUTDOWN USB MODE, so set values to none"

    .line 621
    .line 622
    invoke-static {v5, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    .line 624
    .line 625
    iput-wide v6, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    .line 626
    .line 627
    iput-wide v6, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSecCurrentFunctions:J

    .line 628
    .line 629
    iput-object v2, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsStr:Ljava/lang/String;

    .line 630
    .line 631
    iput-object v2, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentOemFunctions:Ljava/lang/String;

    .line 632
    .line 633
    iput-boolean v8, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    .line 634
    .line 635
    return v8

    .line 636
    :cond_19
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->setUsbConfig(Ljava/lang/String;)V

    .line 637
    .line 638
    .line 639
    iget-boolean v2, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    .line 640
    .line 641
    if-eqz v2, :cond_1b

    .line 642
    .line 643
    const-string/jumbo v2, "mtp"

    .line 644
    .line 645
    .line 646
    invoke-static {v9, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    .line 647
    .line 648
    .line 649
    move-result v2

    .line 650
    if-nez v2, :cond_1a

    .line 651
    .line 652
    const-string/jumbo v2, "ptp"

    .line 653
    .line 654
    .line 655
    invoke-static {v9, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    .line 656
    .line 657
    .line 658
    move-result v2

    .line 659
    if-eqz v2, :cond_1b

    .line 660
    .line 661
    :cond_1a
    iget-wide v6, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSecCurrentFunctions:J

    .line 662
    .line 663
    invoke-static {v6, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getAppliedFunctions(J)J

    .line 664
    .line 665
    .line 666
    move-result-wide v6

    .line 667
    invoke-virtual {v1, v6, v7, v8}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcastIfNeeded(JZ)V

    .line 668
    .line 669
    .line 670
    :cond_1b
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->waitForState(Ljava/lang/String;)Z

    .line 671
    .line 672
    .line 673
    move-result v2

    .line 674
    if-nez v2, :cond_1c

    .line 675
    .line 676
    const-string v1, "Failed to switch USB config to "

    .line 677
    .line 678
    invoke-virtual {v1, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v1

    .line 682
    invoke-static {v5, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    .line 684
    .line 685
    return v0

    .line 686
    :cond_1c
    iput-boolean v8, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    .line 687
    .line 688
    :cond_1d
    return v8
.end method
