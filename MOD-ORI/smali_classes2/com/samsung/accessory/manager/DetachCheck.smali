.class public final Lcom/samsung/accessory/manager/DetachCheck;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAuthStarted:Z

.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/accessory/manager/DetachCheck;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/accessory/manager/DetachCheck;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final getSamsungNfcAdapter()Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;
    .locals 3

    .line 1
    const-string v0, "SAccessoryManager_DetachCheck"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/samsung/accessory/manager/DetachCheck;->mContext:Landroid/content/Context;

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
    iget-object p0, p0, Lcom/samsung/accessory/manager/DetachCheck;->mContext:Landroid/content/Context;

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

.method public final requestStartTypeS()[B
    .locals 2

    .line 1
    const-string v0, "SAccessoryManager_DetachCheck"

    .line 2
    .line 3
    const-string v1, "Reqs"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/accessory/manager/DetachCheck;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    const/4 v1, 0x1

    .line 12
    :try_start_0
    iput-boolean v1, p0, Lcom/samsung/accessory/manager/DetachCheck;->mAuthStarted:Z

    .line 13
    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/DetachCheck;->getSamsungNfcAdapter()Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    :try_start_1
    invoke-static {}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->startCoverAuth()[B

    .line 22
    .line 23
    .line 24
    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 25
    return-object p0

    .line 26
    :catch_0
    move-exception p0

    .line 27
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    return-object p0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    throw p0
.end method

.method public final requestStopTypeS()V
    .locals 2

    .line 1
    const-string v0, "SAccessoryManager_DetachCheck"

    .line 2
    .line 3
    const-string/jumbo v1, "stopAuth"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/accessory/manager/DetachCheck;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/accessory/manager/DetachCheck;->mAuthStarted:Z

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    const-string p0, "SAccessoryManager_DetachCheck"

    .line 17
    .line 18
    const-string v1, "Do not call stopAuth because startAuth is not executed"

    .line 19
    .line 20
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    const/4 v1, 0x0

    .line 28
    iput-boolean v1, p0, Lcom/samsung/accessory/manager/DetachCheck;->mAuthStarted:Z

    .line 29
    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/DetachCheck;->getSamsungNfcAdapter()Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    :try_start_1
    invoke-static {}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->stopCoverAuth()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p0

    .line 42
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 43
    .line 44
    .line 45
    :cond_1
    :goto_0
    return-void

    .line 46
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    throw p0
.end method
