.class public final Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;
.super Lcom/samsung/accessory/manager/connectivity/Connectivity;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;


# virtual methods
.method public final byteArrayToString([B)Ljava/lang/String;
    .locals 4

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :goto_0
    array-length v1, p1

    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    aget-byte v1, p1, v0

    .line 13
    .line 14
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "%02x"

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    invoke-static {v2, v1, p0, v0, v3}, Lcom/android/server/am/mars/MARsFreezeStateRecord$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;II)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :cond_1
    const-string/jumbo p0, "null"

    .line 36
    .line 37
    .line 38
    return-object p0
.end method

.method public final close()V
    .locals 0

    .line 1
    return-void
.end method

.method public final connect()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;->onConnectionStateChanged()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final disable()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final disconnect()V
    .locals 0

    .line 1
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final enable()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final isEnabled()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final isEnabledInternally()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final openNode()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final sendStartAuth(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
    .locals 7

    .line 1
    const/4 p1, 0x5

    .line 2
    const/4 v0, 0x1

    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    aput-byte v2, v1, v3

    .line 8
    .line 9
    iget-object v2, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ccic_open()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    const-string/jumbo v5, "open ccic_misc ret = "

    .line 16
    .line 17
    .line 18
    const-string v6, "SAccessoryManager_UsbConnectivity"

    .line 19
    .line 20
    invoke-static {v4, v5, v6}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    if-gez v4, :cond_0

    .line 24
    .line 25
    const-string/jumbo p0, "open fail"

    .line 26
    .line 27
    .line 28
    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return-object v1

    .line 32
    :cond_0
    new-array v4, p1, [B

    .line 33
    .line 34
    fill-array-data v4, :array_0

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v4}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ioctl_longDataWrite([B)I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eq v4, p1, :cond_1

    .line 42
    .line 43
    const-string p0, "ReqS fail. invalid return value: "

    .line 44
    .line 45
    invoke-static {v4, p0, v6}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v1

    .line 49
    :cond_1
    invoke-virtual {v2}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ioctl_longDataRead()[B

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v2, "atqs: "

    .line 56
    .line 57
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->byteArrayToString([B)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    const/16 p0, 0x10

    .line 75
    .line 76
    new-array p0, p0, [B

    .line 77
    .line 78
    array-length v1, p1

    .line 79
    const/16 v2, 0xf

    .line 80
    .line 81
    if-ne v1, v2, :cond_2

    .line 82
    .line 83
    aput-byte v3, p0, v3

    .line 84
    .line 85
    :goto_0
    if-ge v3, v2, :cond_3

    .line 86
    .line 87
    add-int/lit8 v1, v3, 0x1

    .line 88
    .line 89
    aget-byte v3, p1, v3

    .line 90
    .line 91
    aput-byte v3, p0, v1

    .line 92
    .line 93
    move v3, v1

    .line 94
    goto :goto_0

    .line 95
    :cond_2
    const/4 p1, -0x2

    .line 96
    aput-byte p1, p0, v3

    .line 97
    .line 98
    :cond_3
    return-object p0

    .line 99
    :array_0
    .array-data 1
        0x0t
        0x5at
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public final sendStopAuth()Z
    .locals 2

    .line 1
    const-string v0, "SAccessoryManager_UsbConnectivity"

    .line 2
    .line 3
    const-string v1, "close ccic_misc"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ccic_close()I

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0
.end method

.method public final sendStopUsbAuth()V
    .locals 7

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v0

    .line 4
    :goto_0
    if-ltz v2, :cond_2

    .line 5
    .line 6
    if-nez v1, :cond_2

    .line 7
    .line 8
    iget-object v3, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    .line 9
    .line 10
    invoke-virtual {v3}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ccic_open()I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    const-string/jumbo v5, "open ccic_misc ret = "

    .line 15
    .line 16
    .line 17
    const-string v6, "SAccessoryManager_UsbConnectivity"

    .line 18
    .line 19
    invoke-static {v4, v5, v6}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    if-gez v4, :cond_0

    .line 23
    .line 24
    const-string/jumbo v3, "open fail for end comd"

    .line 25
    .line 26
    .line 27
    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    new-array v4, v0, [B

    .line 32
    .line 33
    fill-array-data v4, :array_0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, v4}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ioctl_longDataWrite([B)I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eq v4, v0, :cond_1

    .line 41
    .line 42
    const-string v3, "End cmd fail: "

    .line 43
    .line 44
    invoke-static {v4, v3, v6}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const-string v1, "close ccic_misc"

    .line 49
    .line 50
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ccic_close()I

    .line 54
    .line 55
    .line 56
    const/4 v1, 0x1

    .line 57
    :goto_1
    add-int/lit8 v2, v2, -0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    return-void

    .line 61
    :array_0
    .array-data 1
        0x0t
        -0x22t
        -0x53t
        0x0t
        0x0t
    .end array-data
.end method

.method public final sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-wide/16 v2, 0xf

    .line 4
    .line 5
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    iget-object v2, p0, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->mMsgHelper:Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;

    .line 9
    .line 10
    invoke-virtual {v2, p1}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ioctl_longDataWrite([B)I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    new-array v4, v1, [B

    .line 15
    .line 16
    const/4 v5, -0x2

    .line 17
    aput-byte v5, v4, v0

    .line 18
    .line 19
    new-array v5, v1, [B

    .line 20
    .line 21
    const/4 v6, -0x1

    .line 22
    aput-byte v6, v5, v0

    .line 23
    .line 24
    array-length p1, p1

    .line 25
    const-string v6, "SAccessoryManager_UsbConnectivity"

    .line 26
    .line 27
    if-eq v3, p1, :cond_0

    .line 28
    .line 29
    const-string p0, "command write fail"

    .line 30
    .line 31
    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    return-object v5

    .line 35
    :cond_0
    iget p1, p2, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->apiState:I

    .line 36
    .line 37
    const/16 v3, 0xb

    .line 38
    .line 39
    if-ne p1, v3, :cond_1

    .line 40
    .line 41
    return-object v4

    .line 42
    :cond_1
    invoke-virtual {v2}, Lcom/samsung/accessory/manager/authentication/msg/MsgHelper;->ioctl_longDataRead()[B

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v3, "api: "

    .line 49
    .line 50
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget p2, p2, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->apiState:I

    .line 54
    .line 55
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string p2, ", receive: "

    .line 59
    .line 60
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/connectivity/UsbConnectivity;->byteArrayToString([B)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    array-length p0, p1

    .line 78
    add-int/lit8 p2, p0, 0x1

    .line 79
    .line 80
    new-array p2, p2, [B

    .line 81
    .line 82
    move v2, v0

    .line 83
    :goto_0
    array-length v3, p1

    .line 84
    if-ge v2, v3, :cond_2

    .line 85
    .line 86
    aget-byte v3, p1, v2

    .line 87
    .line 88
    aput-byte v3, p2, v2

    .line 89
    .line 90
    add-int/2addr v2, v1

    .line 91
    goto :goto_0

    .line 92
    :cond_2
    aput-byte v0, p2, p0

    .line 93
    .line 94
    return-object p2
.end method

.method public final setStateChangedCallback(Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;

    .line 2
    .line 3
    return-void
.end method
