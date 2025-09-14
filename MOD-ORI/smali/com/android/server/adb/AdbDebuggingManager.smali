.class public final Lcom/android/server/adb/AdbDebuggingManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ADBD_STATE_CHANGE_TIMEOUT:J

.field public static final SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;


# instance fields
.field public mAdbConnectionInfo:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

.field public mAdbUsbEnabled:Z

.field public mAdbWifiEnabled:Z

.field public final mConfirmComponent:Ljava/lang/String;

.field public final mConnectedKeys:Ljava/util/Map;

.field public mConnectionPortPoller:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public mFingerprints:Ljava/lang/String;

.field final mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

.field public mPairingThread:Lcom/android/server/adb/AdbDebuggingManager$PairingThread;

.field public final mPortListener:Lcom/android/server/adb/AdbDebuggingManager$PortListenerImpl;

.field public final mTempKeysFile:Ljava/io/File;

.field public mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

.field public final mTicker:Lcom/android/server/adb/AdbDebuggingManager$Ticker;

.field public final mUserKeyFile:Ljava/io/File;

.field public final mWifiConnectedKeys:Ljava/util/Set;


# direct methods
.method public static -$$Nest$mgetFingerprints(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string p0, "AdbDebuggingManager"

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, ""

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :try_start_0
    const-string v2, "MD5"

    .line 17
    .line 18
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 19
    .line 20
    .line 21
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 22
    const-string v3, "\\s+"

    .line 23
    .line 24
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 v3, 0x0

    .line 29
    aget-object p1, p1, v3

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :try_start_1
    invoke-static {p1, v3}, Landroid/util/Base64;->decode([BI)[B

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v2, p1}, Ljava/security/MessageDigest;->digest([B)[B

    .line 40
    .line 41
    .line 42
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 43
    :goto_0
    array-length p1, p0

    .line 44
    if-ge v3, p1, :cond_2

    .line 45
    .line 46
    aget-byte p1, p0, v3

    .line 47
    .line 48
    shr-int/lit8 p1, p1, 0x4

    .line 49
    .line 50
    and-int/lit8 p1, p1, 0xf

    .line 51
    .line 52
    const-string v1, "0123456789ABCDEF"

    .line 53
    .line 54
    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    aget-byte p1, p0, v3

    .line 62
    .line 63
    and-int/lit8 p1, p1, 0xf

    .line 64
    .line 65
    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    array-length p1, p0

    .line 73
    add-int/lit8 p1, p1, -0x1

    .line 74
    .line 75
    if-ge v3, p1, :cond_1

    .line 76
    .line 77
    const-string p1, ":"

    .line 78
    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    goto :goto_1

    .line 90
    :catch_0
    move-exception p1

    .line 91
    const-string/jumbo v0, "error doing base64 decoding"

    .line 92
    .line 93
    .line 94
    invoke-static {p0, v0, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :catch_1
    move-exception p1

    .line 99
    const-string v0, "Error getting digester"

    .line 100
    .line 101
    invoke-static {p0, v0, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    .line 103
    .line 104
    :goto_1
    return-object v1
.end method

.method public static -$$Nest$msendPersistKeyStoreMessage(Lcom/android/server/adb/AdbDebuggingManager;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static -$$Nest$msetAdbConnectionInfo(Lcom/android/server/adb/AdbDebuggingManager;Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbConnectionInfo:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbConnectionInfo:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mBssid:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mSsid:Ljava/lang/String;

    .line 13
    .line 14
    const/4 p1, -0x1

    .line 15
    iput p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mPort:I

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbConnectionInfo:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    .line 22
    .line 23
    monitor-exit v0

    .line 24
    :goto_0
    return-void

    .line 25
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method

.method public static -$$Nest$mwriteKeys(Lcom/android/server/adb/AdbDebuggingManager;Ljava/lang/Iterable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mUserKeyFile:Ljava/io/File;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    new-instance v0, Landroid/util/AtomicFile;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mUserKeyFile:Ljava/io/File;

    .line 9
    .line 10
    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 14
    .line 15
    .line 16
    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 17
    :try_start_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 38
    .line 39
    .line 40
    const/16 v2, 0xa

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write(I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mUserKeyFile:Ljava/io/File;

    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    const/16 p1, 0x1a0

    .line 58
    .line 59
    const/4 v0, -0x1

    .line 60
    invoke-static {p0, p1, v0, v0}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :catch_1
    move-exception p0

    .line 65
    const/4 v1, 0x0

    .line 66
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v2, "Error writing keys: "

    .line 69
    .line 70
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    const-string p1, "AdbDebuggingManager"

    .line 81
    .line 82
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 86
    .line 87
    .line 88
    :goto_2
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/adb/AdbDebuggingManager;->SYSTEM_TICKER:Lcom/android/server/adb/AdbDebuggingManager$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    sget v0, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    .line 9
    .line 10
    int-to-long v0, v0

    .line 11
    sput-wide v0, Lcom/android/server/adb/AdbDebuggingManager;->ADBD_STATE_CHANGE_TIMEOUT:J

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;Lcom/android/server/adb/AdbDebuggingManager$Ticker;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbUsbEnabled:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbWifiEnabled:Z

    .line 8
    .line 9
    new-instance v0, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mConnectedKeys:Ljava/util/Map;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mPairingThread:Lcom/android/server/adb/AdbDebuggingManager$PairingThread;

    .line 18
    .line 19
    new-instance v0, Ljava/util/HashSet;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mWifiConnectedKeys:Ljava/util/Set;

    .line 25
    .line 26
    new-instance v0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v1, ""

    .line 32
    .line 33
    iput-object v1, v0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mBssid:Ljava/lang/String;

    .line 34
    .line 35
    iput-object v1, v0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mSsid:Ljava/lang/String;

    .line 36
    .line 37
    const/4 v1, -0x1

    .line 38
    iput v1, v0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mPort:I

    .line 39
    .line 40
    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mAdbConnectionInfo:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    .line 41
    .line 42
    new-instance v0, Lcom/android/server/adb/AdbDebuggingManager$PortListenerImpl;

    .line 43
    .line 44
    invoke-direct {v0, p0}, Lcom/android/server/adb/AdbDebuggingManager$PortListenerImpl;-><init>(Lcom/android/server/adb/AdbDebuggingManager;)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mPortListener:Lcom/android/server/adb/AdbDebuggingManager$PortListenerImpl;

    .line 48
    .line 49
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 56
    .line 57
    iput-object p2, p0, Lcom/android/server/adb/AdbDebuggingManager;->mConfirmComponent:Ljava/lang/String;

    .line 58
    .line 59
    iput-object p3, p0, Lcom/android/server/adb/AdbDebuggingManager;->mUserKeyFile:Ljava/io/File;

    .line 60
    .line 61
    iput-object p4, p0, Lcom/android/server/adb/AdbDebuggingManager;->mTempKeysFile:Ljava/io/File;

    .line 62
    .line 63
    iput-object p5, p0, Lcom/android/server/adb/AdbDebuggingManager;->mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    .line 64
    .line 65
    iput-object p6, p0, Lcom/android/server/adb/AdbDebuggingManager;->mTicker:Lcom/android/server/adb/AdbDebuggingManager$Ticker;

    .line 66
    .line 67
    new-instance p1, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    .line 68
    .line 69
    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    iget-object p3, p0, Lcom/android/server/adb/AdbDebuggingManager;->mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    .line 78
    .line 79
    invoke-direct {p1, p0, p2, p3}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;-><init>(Lcom/android/server/adb/AdbDebuggingManager;Landroid/os/Looper;Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;)V

    .line 80
    .line 81
    .line 82
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    .line 83
    .line 84
    return-void
.end method

.method public static createConfirmationIntent(Landroid/content/ComponentName;Ljava/util/List;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    check-cast p1, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Ljava/util/Map$Entry;

    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Ljava/lang/String;

    .line 40
    .line 41
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    return-object v0
.end method

.method public static getAdbFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/io/File;

    .line 6
    .line 7
    const-string/jumbo v2, "misc/adb"

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const-string p0, "AdbDebuggingManager"

    .line 20
    .line 21
    const-string v0, "ADB data directory does not exist"

    .line 22
    .line 23
    invoke-static {p0, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    return-object p0

    .line 28
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 29
    .line 30
    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-object v0
.end method

.method public static sendBroadcastWithDebugPermission(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 1

    .line 1
    const-string v0, "android.permission.MANAGE_DEBUGGING"

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .locals 9

    .line 1
    const-string v0, "AdbDebuggingManager"

    .line 2
    .line 3
    const-string/jumbo v1, "debugging_manager"

    .line 4
    .line 5
    .line 6
    const-wide v2, 0x10b00000001L

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager;->mThread:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v3, v4

    .line 23
    :goto_0
    const-string/jumbo v5, "connected_to_adb"

    .line 24
    .line 25
    .line 26
    const-wide v6, 0x10800000001L

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v5, v6, v7, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 32
    .line 33
    .line 34
    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager;->mFingerprints:Ljava/lang/String;

    .line 35
    .line 36
    const-string/jumbo v5, "last_key_received"

    .line 37
    .line 38
    .line 39
    const-wide v6, 0x10900000002L

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    invoke-static {p1, v5, v6, v7, v3}, Lcom/android/internal/util/dump/DumpUtils;->writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    :try_start_0
    new-instance v5, Ljava/io/File;

    .line 49
    .line 50
    const-string v6, "/data/misc/adb/adb_keys"

    .line 51
    .line 52
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-eqz v6, :cond_1

    .line 60
    .line 61
    const-string/jumbo v6, "user_keys"

    .line 62
    .line 63
    .line 64
    invoke-static {v5, v4, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    const-wide v7, 0x10900000003L

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v6, v7, v8, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :catch_0
    move-exception v5

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    const-string v5, "No user keys on this device"

    .line 80
    .line 81
    invoke-static {v0, v5}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :goto_1
    const-string v6, "Cannot read user keys"

    .line 86
    .line 87
    invoke-static {v0, v6, v5}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .line 89
    .line 90
    :goto_2
    :try_start_1
    const-string/jumbo v5, "system_keys"

    .line 91
    .line 92
    .line 93
    new-instance v6, Ljava/io/File;

    .line 94
    .line 95
    const-string v7, "/adb_keys"

    .line 96
    .line 97
    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-static {v6, v4, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    const-wide v7, 0x10900000004L

    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v5, v7, v8, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 110
    .line 111
    .line 112
    goto :goto_3

    .line 113
    :catch_1
    move-exception v5

    .line 114
    const-string v6, "Cannot read system keys"

    .line 115
    .line 116
    invoke-static {v0, v6, v5}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    .line 118
    .line 119
    :goto_3
    :try_start_2
    const-string/jumbo v5, "keystore"

    .line 120
    .line 121
    .line 122
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mTempKeysFile:Ljava/io/File;

    .line 123
    .line 124
    invoke-static {p0, v4, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    const-wide v3, 0x10900000005L

    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v5, v3, v4, p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 134
    .line 135
    .line 136
    goto :goto_4

    .line 137
    :catch_2
    move-exception p0

    .line 138
    const-string v3, "Cannot read keystore: "

    .line 139
    .line 140
    invoke-static {v0, v3, p0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    .line 142
    .line 143
    :goto_4
    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 144
    .line 145
    .line 146
    return-void
.end method

.method public final setAdbEnabled(ZB)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p2, :cond_1

    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x2

    .line 10
    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 11
    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_1
    if-ne p2, v0, :cond_3

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mHandler:Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingHandler;

    .line 17
    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    const/16 p1, 0xb

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_2
    const/16 p1, 0xc

    .line 24
    .line 25
    :goto_1
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 26
    .line 27
    .line 28
    :goto_2
    return-void

    .line 29
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    const-string/jumbo p1, "setAdbEnabled called with unimplemented transport type="

    .line 32
    .line 33
    .line 34
    invoke-static {p2, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p0
.end method

.method public final startConfirmationActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/List;)Z
    .locals 3

    .line 1
    const-string v0, "AdbDebuggingManager"

    .line 2
    .line 3
    const-string/jumbo v1, "startConfirmationActivity"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {p1, p3}, Lcom/android/server/adb/AdbDebuggingManager;->createConfirmationIntent(Landroid/content/ComponentName;Ljava/util/List;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    const/high16 v2, 0x10000000

    .line 20
    .line 21
    invoke-virtual {p3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    const/high16 v2, 0x10000

    .line 25
    .line 26
    invoke-virtual {v1, p3, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    :try_start_0
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    invoke-virtual {p0, p3, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x1

    .line 38
    return p0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    new-instance p2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string/jumbo p3, "unable to start adb whitelist activity: "

    .line 43
    .line 44
    .line 45
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {v0, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    .line 57
    .line 58
    :cond_0
    const/4 p0, 0x0

    .line 59
    return p0
.end method

.method public final startConfirmationService(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/List;)Z
    .locals 2

    .line 1
    const-string v0, "AdbDebuggingManager"

    .line 2
    .line 3
    const-string/jumbo v1, "startConfirmationService"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p3}, Lcom/android/server/adb/AdbDebuggingManager;->createConfirmationIntent(Landroid/content/ComponentName;Ljava/util/List;)Landroid/content/Intent;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    :try_start_0
    iget-object p0, p0, Lcom/android/server/adb/AdbDebuggingManager;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {p0, p3, p2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 16
    .line 17
    .line 18
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    new-instance p2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string/jumbo p3, "unable to start adb whitelist service: "

    .line 27
    .line 28
    .line 29
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {v0, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    .line 41
    .line 42
    :cond_0
    const/4 p0, 0x0

    .line 43
    return p0
.end method
