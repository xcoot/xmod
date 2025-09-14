.class public final Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final mAdapter:Ljava/util/HashMap;

.field public static sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->mAdapter:Ljava/util/HashMap;

    .line 7
    .line 8
    return-void
.end method

.method public static attemptDeadServiceRecovery(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    const-string v0, "SamsungNfcAdapter"

    .line 2
    .line 3
    const-string v1, "Nfc Samsung service dead - attempting to recover"

    .line 4
    .line 5
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->getServiceInterface()Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    const-string p0, "Could not retrieve Nfc Samsung service during service recovery"

    .line 15
    .line 16
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    sput-object p0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    .line 21
    .line 22
    return-void
.end method

.method public static declared-synchronized getDefaultAdapter(Landroid/content/Context;)Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;
    .locals 3

    .line 1
    const-class v0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-eqz p0, :cond_3

    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_2

    .line 11
    .line 12
    sget-object v1, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->mAdapter:Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    new-instance v1, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    :try_start_1
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception v2

    .line 32
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 33
    .line 34
    .line 35
    :goto_0
    sget-object v2, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->mAdapter:Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_2

    .line 43
    :cond_0
    :goto_1
    invoke-static {}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->getServiceInterface()Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    sput-object p0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    .line 48
    .line 49
    if-nez p0, :cond_1

    .line 50
    .line 51
    const-string p0, "SamsungNfcAdapter"

    .line 52
    .line 53
    const-string v1, "Could not retrieve Samsung service"

    .line 54
    .line 55
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    .line 57
    .line 58
    monitor-exit v0

    .line 59
    const/4 p0, 0x0

    .line 60
    return-object p0

    .line 61
    :cond_1
    monitor-exit v0

    .line 62
    return-object v1

    .line 63
    :cond_2
    :try_start_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    const-string v1, "context not associated with any application(using a mock context?)"

    .line 66
    .line 67
    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p0

    .line 71
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 72
    .line 73
    const-string v1, "context cannot be null"

    .line 74
    .line 75
    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 79
    :goto_2
    monitor-exit v0

    .line 80
    throw p0
.end method

.method public static getServiceInterface()Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;
    .locals 3

    .line 1
    const-string/jumbo v0, "samsungnfc"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    return-object v0

    .line 12
    :cond_0
    sget v1, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub;->$r8$clinit:I

    .line 13
    .line 14
    const-string v1, "com.samsung.android.nfc.adapter.ISamsungNfcAdapter"

    .line 15
    .line 16
    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    instance-of v2, v1, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    check-cast v1, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    new-instance v1, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, v1, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 35
    .line 36
    :goto_0
    return-object v1
.end method

.method public static setWirelessChargeEnabled(Z)V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    .line 2
    .line 3
    check-cast v0, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;->setWirelessChargeEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    return-void
.end method

.method public static startCoverAuth()[B
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/Binder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    .line 7
    .line 8
    check-cast v1, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;->startCoverAuth(Landroid/os/IBinder;)[B

    .line 11
    .line 12
    .line 13
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return-object v0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    const-string v1, "SamsungNfcAdapter"

    .line 17
    .line 18
    const-string v2, "Failed to transmit authentication data"

    .line 19
    .line 20
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Ljava/io/IOException;

    .line 27
    .line 28
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0
.end method

.method public static startLedCover()[B
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/Binder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    .line 7
    .line 8
    check-cast v1, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;->startLedCover(Landroid/os/IBinder;)[B

    .line 11
    .line 12
    .line 13
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return-object v0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    invoke-static {v0}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    new-array v0, v0, [B

    .line 21
    .line 22
    const/4 v1, 0x3

    .line 23
    const/4 v2, 0x0

    .line 24
    aput-byte v1, v0, v2

    .line 25
    .line 26
    return-object v0
.end method

.method public static stopCoverAuth()Z
    .locals 5

    .line 1
    :try_start_0
    sget-object v0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    .line 2
    .line 3
    check-cast v0, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 6
    .line 7
    invoke-static {v1}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 12
    .line 13
    .line 14
    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :try_start_1
    const-string v3, "com.samsung.android.nfc.adapter.ISamsungNfcAdapter"

    .line 16
    .line 17
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, v0, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 21
    .line 22
    const/4 v3, 0x3

    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    .line 31
    .line 32
    .line 33
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 38
    .line 39
    .line 40
    return v0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 46
    .line 47
    .line 48
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    const-string v1, "SamsungNfcAdapter"

    .line 51
    .line 52
    const-string v2, "Failed to stop authentication"

    .line 53
    .line 54
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 58
    .line 59
    .line 60
    new-instance v0, Ljava/io/IOException;

    .line 61
    .line 62
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v0
.end method

.method public static stopLedCover()V
    .locals 5

    .line 1
    :try_start_0
    sget-object v0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    .line 2
    .line 3
    check-cast v0, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 6
    .line 7
    invoke-static {v1}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 12
    .line 13
    .line 14
    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :try_start_1
    const-string v3, "com.samsung.android.nfc.adapter.ISamsungNfcAdapter"

    .line 16
    .line 17
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, v0, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 21
    .line 22
    const/4 v3, 0x6

    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    .line 32
    .line 33
    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 45
    .line 46
    .line 47
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-static {v0}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public static transceiveDataWithLedCover([B)[B
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    .line 2
    .line 3
    check-cast v0, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;->transceiveLedCover([B)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    invoke-static {p0}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    new-array p0, p0, [B

    .line 16
    .line 17
    const/4 v0, 0x3

    .line 18
    const/4 v1, 0x0

    .line 19
    aput-byte v0, p0, v1

    .line 20
    .line 21
    return-object p0
.end method
