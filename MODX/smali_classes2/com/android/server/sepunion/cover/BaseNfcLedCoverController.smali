.class public Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mIsLedCoverAttached:Z

.field public mNfcAdapter:Landroid/nfc/NfcAdapter;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mIsLedCoverAttached:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string/jumbo v0, "power"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/os/PowerManager;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    .line 19
    .line 20
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    .line 31
    .line 32
    return-void
.end method

.method public static acquireWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    const-string v2, "CoverManager_BaseNfcLedCoverController"

    .line 17
    .line 18
    const-string v3, "Shouldn\'t happen"

    .line 19
    .line 20
    invoke-static {v2, v3, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    .line 22
    .line 23
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static getByteDataString([B)Ljava/lang/String;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string/jumbo p0, "null"

    .line 4
    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    array-length v2, p0

    .line 14
    if-ge v1, v2, :cond_1

    .line 15
    .line 16
    aget-byte v2, p0, v1

    .line 17
    .line 18
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const-string v3, "%02X"

    .line 27
    .line 28
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, " "

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method

.method public static releaseWakeLockWithPermission(Landroid/os/PowerManager$WakeLock;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    const-string v2, "CoverManager_BaseNfcLedCoverController"

    .line 17
    .line 18
    const-string v3, "Shouldn\'t happen"

    .line 19
    .line 20
    invoke-static {v2, v3, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    .line 22
    .line 23
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public addLedNotification(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    .line 1
    const-string v0, " Current NfcLedCoverController state:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "  mIsLEDCoverAttached="

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-boolean p0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mIsLedCoverAttached:Z

    .line 12
    .line 13
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 14
    .line 15
    .line 16
    const-string p0, "  "

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final getSamsungNfcAdapter()Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const-string v0, "CoverManager_BaseNfcLedCoverController"

    .line 18
    .line 19
    const-string v1, "Could not get SamsungNfcAdapter"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object p0, p0, Lcom/android/server/sepunion/cover/BaseNfcLedCoverController;->mSamsungNfcAdapter:Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    .line 25
    .line 26
    return-object p0
.end method

.method public notifyAuthenticationResponse()V
    .locals 0

    .line 1
    return-void
.end method

.method public registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    return-void
.end method

.method public removeLedNotification(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public requestCoverAuthentication(JLandroid/os/IBinder;Landroid/content/ComponentName;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public sendDataToNfcLedCover(I[B)V
    .locals 0

    .line 1
    return-void
.end method

.method public sendPowerKeyToCover()V
    .locals 0

    .line 1
    return-void
.end method

.method public sendSystemEvent(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setFotaInProgress(ZLandroid/os/IBinder;Landroid/content/ComponentName;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public unRegisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public updateNfcLedCoverAttachStateLocked(IZ)V
    .locals 0

    .line 1
    return-void
.end method
