.class public final Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;
.super Lcom/samsung/accessory/manager/connectivity/Connectivity;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mEnableRequest:Ljava/util/concurrent/atomic/AtomicBoolean;


# virtual methods
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
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mEnableRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    const-string p0, " Current NfcConnectivity state:"

    .line 2
    .line 3
    const-string v0, "  mState = -1"

    .line 4
    .line 5
    const-string v1, "  mPrevState = -1"

    .line 6
    .line 7
    invoke-static {p1, p0, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final enable()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getSamsungNfcAdapter()Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;
    .locals 3

    .line 1
    const-string v0, "SAccessoryManager_NfcConnectivity"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {v2}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const-string v2, "SamsungNfcAdapter.getDefaultAdapter returns null"

    .line 13
    .line 14
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {p0}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    const-string/jumbo p0, "retry, SamsungNfcAdapter.getDefaultAdapter returns null"

    .line 26
    .line 27
    .line 28
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 34
    .line 35
    .line 36
    :cond_0
    :goto_0
    return-object v1
.end method

.method public final isEnabled()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

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
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iput v0, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->apiState:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->getSamsungNfcAdapter()Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-static {}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->startCoverAuth()[B

    .line 11
    .line 12
    .line 13
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return-object p0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return-object p0
.end method

.method public final sendStopAuth()Z
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->getSamsungNfcAdapter()Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->stopCoverAuth()Z

    .line 8
    .line 9
    .line 10
    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return p0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0
.end method

.method public final sendStopUsbAuth()V
    .locals 0

    .line 1
    return-void
.end method

.method public final sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    :try_start_0
    iput v0, p2, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->apiState:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->getSamsungNfcAdapter()Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    .line 5
    .line 6
    .line 7
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    :try_start_1
    sget-object p0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    .line 11
    .line 12
    check-cast p0, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;->transceiveAuthData([B)[B

    .line 15
    .line 16
    .line 17
    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 18
    return-object p0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    :try_start_2
    const-string p1, "SamsungNfcAdapter"

    .line 21
    .line 22
    const-string p2, "Failed to transmit authentication data"

    .line 23
    .line 24
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    invoke-static {p0}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 28
    .line 29
    .line 30
    new-instance p0, Ljava/io/IOException;

    .line 31
    .line 32
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 36
    :catch_1
    move-exception p0

    .line 37
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 38
    .line 39
    .line 40
    :cond_0
    const/4 p0, 0x0

    .line 41
    return-object p0
.end method
