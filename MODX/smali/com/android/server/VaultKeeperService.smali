.class public final Lcom/android/server/VaultKeeperService;
.super Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Lcom/android/server/VaultKeeperService$1;

.field public final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public final mServiceSupport:I

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string/jumbo v0, "vkjni"

    .line 4
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/service/vaultkeeper/IVaultKeeperService$Stub;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    .line 10
    iput-object v0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 12
    new-instance v0, Lcom/android/server/VaultKeeperService$1;

    .line 14
    invoke-direct {v0, p0}, Lcom/android/server/VaultKeeperService$1;-><init>(Lcom/android/server/VaultKeeperService;)V

    .line 17
    iput-object v0, p0, Lcom/android/server/VaultKeeperService;->mHandler:Lcom/android/server/VaultKeeperService$1;

    .line 19
    iput-object p1, p0, Lcom/android/server/VaultKeeperService;->mContext:Landroid/content/Context;

    .line 21
    invoke-direct {p0}, Lcom/android/server/VaultKeeperService;->nativeGetSystemSolution()I

    .line 24
    move-result v0

    .line 25
    iput v0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    .line 27
    const-string/jumbo v0, "power"

    .line 30
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Landroid/os/PowerManager;

    .line 36
    const-string v0, "VK_WakeLock"

    .line 38
    invoke-virtual {p1, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/android/server/VaultKeeperService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 44
    return-void
.end method

.method private native nativeCheckDataWritable(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeDestroy(Ljava/lang/String;Ljava/lang/String;[B[B[B)I
.end method

.method private native nativeEncryptMessage(Ljava/lang/String;Ljava/lang/String;[B)[B
.end method

.method private native nativeGenerateHotpCode(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeGetProcessName(I)Ljava/lang/String;
.end method

.method private native nativeGetSystemSolution()I
.end method

.method private native nativeInitialize(Ljava/lang/String;Ljava/lang/String;[B[B[B)I
.end method

.method private native nativeIsInitialized(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeMigrationStorage(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeRead(Ljava/lang/String;Ljava/lang/String;I[I)[B
.end method

.method private native nativeSensitiveBox(Ljava/lang/String;Ljava/lang/String;I[I)[B
.end method

.method private native nativeVerifyCertificate(Ljava/lang/String;Ljava/lang/String;[B)Z
.end method

.method private native nativeWrite(Ljava/lang/String;Ljava/lang/String;I[B[B[B)I
.end method


# virtual methods
.method public final checkDataWritable(Ljava/lang/String;)I
    .locals 6

    .line 1
    const-string v0, "VaultKeeperService"

    .line 3
    const-string/jumbo v1, "checkDataWritable"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    .line 11
    if-nez v1, :cond_0

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    const-string v1, "VaultKeeper not support("

    .line 17
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    iget p0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    .line 22
    const-string v1, ")"

    .line 24
    invoke-static {p1, p0, v1, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 27
    const/16 p0, -0x68

    .line 29
    return p0

    .line 30
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/VaultKeeperService;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    if-nez v1, :cond_1

    .line 36
    const/16 p0, -0x6a

    .line 38
    return p0

    .line 39
    :cond_1
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mHandler:Lcom/android/server/VaultKeeperService$1;

    .line 41
    const/4 v3, 0x1

    .line 42
    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 49
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 51
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 53
    const-wide/16 v4, 0x5

    .line 55
    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    .line 58
    move-result v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    if-eqz v2, :cond_2

    .line 61
    :try_start_1
    invoke-direct {p0, v1, p1}, Lcom/android/server/VaultKeeperService;->nativeCheckDataWritable(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    :try_start_2
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 67
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 70
    return p1

    .line 71
    :catch_0
    move-exception p0

    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 76
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 79
    throw p1

    .line 80
    :cond_2
    const-string p0, "Unable to acquire lock"

    .line 82
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 85
    const/16 p0, -0x69

    .line 87
    return p0

    .line 88
    :goto_0
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 91
    const/16 p0, -0x67

    .line 93
    return p0
.end method

.method public final destroy(Ljava/lang/String;[B[B[B)I
    .locals 6

    .line 1
    const-string v0, "VaultKeeperService"

    .line 3
    const-string/jumbo v1, "destroy"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    .line 11
    if-nez v1, :cond_0

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    const-string p2, "VaultKeeper not support("

    .line 17
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    iget p0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    .line 22
    const-string p2, ")"

    .line 24
    invoke-static {p1, p0, p2, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 27
    const/16 p0, -0x68

    .line 29
    return p0

    .line 30
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/VaultKeeperService;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    if-nez v1, :cond_1

    .line 36
    const/16 p0, -0x6a

    .line 38
    return p0

    .line 39
    :cond_1
    const/16 v2, -0x66

    .line 41
    if-eqz p2, :cond_2

    .line 43
    array-length v3, p2

    .line 44
    const/16 v4, 0x20

    .line 46
    if-le v3, v4, :cond_2

    .line 48
    new-instance p0, Ljava/lang/StringBuilder;

    .line 50
    const-string/jumbo p1, "destroy : Invalid hmac length "

    .line 53
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    array-length p1, p2

    .line 57
    invoke-static {p0, p1, v0}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 60
    return v2

    .line 61
    :cond_2
    if-eqz p3, :cond_4

    .line 63
    if-eqz p4, :cond_4

    .line 65
    array-length v3, p3

    .line 66
    if-nez v3, :cond_3

    .line 68
    const-string/jumbo p0, "destroy : if cert is exist, it should contain value."

    .line 71
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return v2

    .line 75
    :cond_3
    array-length v3, p4

    .line 76
    if-nez v3, :cond_4

    .line 78
    const-string/jumbo p0, "destroy : if signature is exist, it should contain value."

    .line 81
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return v2

    .line 85
    :cond_4
    if-eqz p2, :cond_5

    .line 87
    if-eqz p3, :cond_5

    .line 89
    if-eqz p4, :cond_5

    .line 91
    const-string/jumbo p0, "destroy : Invalid arguments(too many arguments)"

    .line 94
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return v2

    .line 98
    :cond_5
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mHandler:Lcom/android/server/VaultKeeperService$1;

    .line 100
    const/4 v3, 0x1

    .line 101
    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 108
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 110
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 112
    const-wide/16 v4, 0x5

    .line 114
    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    .line 117
    move-result v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    if-eqz v2, :cond_6

    .line 120
    move-object v0, p0

    .line 121
    move-object v2, p1

    .line 122
    move-object v3, p2

    .line 123
    move-object v4, p3

    .line 124
    move-object v5, p4

    .line 125
    :try_start_1
    invoke-direct/range {v0 .. v5}, Lcom/android/server/VaultKeeperService;->nativeDestroy(Ljava/lang/String;Ljava/lang/String;[B[B[B)I

    .line 128
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    :try_start_2
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 131
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 134
    return p1

    .line 135
    :catch_0
    move-exception p0

    .line 136
    goto :goto_0

    .line 137
    :catchall_0
    move-exception p1

    .line 138
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 140
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 143
    throw p1

    .line 144
    :cond_6
    const-string p0, "Unable to acquire lock"

    .line 146
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 149
    const/16 p0, -0x69

    .line 151
    return p0

    .line 152
    :goto_0
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 155
    const/16 p0, -0x67

    .line 157
    return p0
.end method

.method public final encryptMessage(Ljava/lang/String;[B)[B
    .locals 7

    .line 1
    const-string v0, "VaultKeeperService"

    .line 3
    const-string/jumbo v1, "encryptMessage"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 16
    const-string p2, "VaultKeeper not support("

    .line 18
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    iget p0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    .line 23
    const-string p2, ")"

    .line 25
    invoke-static {p1, p0, p2, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 28
    return-object v2

    .line 29
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/VaultKeeperService;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    if-nez v1, :cond_1

    .line 35
    return-object v2

    .line 36
    :cond_1
    if-eqz p2, :cond_2

    .line 38
    array-length v3, p2

    .line 39
    if-nez v3, :cond_2

    .line 41
    const-string/jumbo p0, "encryptMessage : if msg is exist, it should contain value."

    .line 44
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-object v2

    .line 48
    :cond_2
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mHandler:Lcom/android/server/VaultKeeperService$1;

    .line 50
    const/4 v4, 0x1

    .line 51
    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 58
    :try_start_0
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 60
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 62
    const-wide/16 v5, 0x5

    .line 64
    invoke-virtual {v3, v5, v6, v4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    .line 67
    move-result v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    if-eqz v3, :cond_3

    .line 70
    :try_start_1
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/VaultKeeperService;->nativeEncryptMessage(Ljava/lang/String;Ljava/lang/String;[B)[B

    .line 73
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :try_start_2
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 76
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 79
    return-object p1

    .line 80
    :catch_0
    move-exception p0

    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception p1

    .line 83
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 85
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 88
    throw p1

    .line 89
    :cond_3
    const-string p0, "Unable to acquire lock"

    .line 91
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 94
    return-object v2

    .line 95
    :goto_0
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 98
    return-object v2
.end method

.method public final generateHotpCode(Ljava/lang/String;)I
    .locals 6

    .line 1
    const-string v0, "VaultKeeperService"

    .line 3
    const-string/jumbo v1, "generateHotpCode"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    .line 11
    if-nez v1, :cond_0

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    const-string v1, "VaultKeeper not support("

    .line 17
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    iget p0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    .line 22
    const-string v1, ")"

    .line 24
    invoke-static {p1, p0, v1, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 27
    const/16 p0, -0x68

    .line 29
    return p0

    .line 30
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/VaultKeeperService;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    if-nez v1, :cond_1

    .line 36
    const/16 p0, -0x6a

    .line 38
    return p0

    .line 39
    :cond_1
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mHandler:Lcom/android/server/VaultKeeperService$1;

    .line 41
    const/4 v3, 0x1

    .line 42
    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 49
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 51
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 53
    const-wide/16 v4, 0x5

    .line 55
    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    .line 58
    move-result v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    if-eqz v2, :cond_2

    .line 61
    :try_start_1
    invoke-direct {p0, v1, p1}, Lcom/android/server/VaultKeeperService;->nativeGenerateHotpCode(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    :try_start_2
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 67
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 70
    return p1

    .line 71
    :catch_0
    move-exception p0

    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 76
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 79
    throw p1

    .line 80
    :cond_2
    const-string p0, "Unable to acquire lock"

    .line 82
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 85
    const/16 p0, -0x69

    .line 87
    return p0

    .line 88
    :goto_0
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 91
    const/16 p0, -0x67

    .line 93
    return p0
.end method

.method public final getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    const-string/jumbo v0, "system_server"

    .line 4
    const-string v1, "NOT Allowed : "

    .line 6
    const-string v2, "Permission denied. Check your UID ("

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    const-string v4, "Get service instance by ("

    .line 12
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 18
    move-result v4

    .line 19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string v4, "/"

    .line 24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 30
    move-result v4

    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    const-string v4, ")"

    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v3

    .line 43
    const-string v5, "VaultKeeperService"

    .line 45
    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mHandler:Lcom/android/server/VaultKeeperService$1;

    .line 50
    const/4 v6, 0x1

    .line 51
    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 54
    move-result-object v6

    .line 55
    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 58
    const/4 v3, 0x0

    .line 59
    :try_start_0
    iget-object v6, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 61
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 63
    const-wide/16 v8, 0x1

    .line 65
    invoke-virtual {v6, v8, v9, v7}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    .line 68
    move-result v6
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    if-eqz v6, :cond_b

    .line 71
    if-nez p1, :cond_0

    .line 73
    :try_start_1
    const-string p1, "Vault name is null"

    .line 75
    invoke-static {v5, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :try_start_2
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 80
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 83
    return-object v3

    .line 84
    :catch_0
    move-exception p0

    .line 85
    goto/16 :goto_4

    .line 87
    :catchall_0
    move-exception p1

    .line 88
    goto/16 :goto_3

    .line 90
    :catch_1
    move-exception p1

    .line 91
    goto/16 :goto_2

    .line 93
    :cond_0
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 96
    move-result p1

    .line 97
    if-nez p1, :cond_1

    .line 99
    const-string p1, "Vault name is wrong"

    .line 101
    invoke-static {v5, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    :try_start_4
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 106
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 109
    return-object v3

    .line 110
    :cond_1
    :try_start_5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 113
    move-result p1

    .line 114
    invoke-direct {p0, p1}, Lcom/android/server/VaultKeeperService;->nativeGetProcessName(I)Ljava/lang/String;

    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    move-result p1

    .line 122
    const v6, 0x186a0

    .line 125
    if-eqz p1, :cond_2

    .line 127
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 130
    move-result p1

    .line 131
    rem-int/2addr p1, v6

    .line 132
    const/16 v7, 0x3e8

    .line 134
    if-ne p1, v7, :cond_2

    .line 136
    goto/16 :goto_1

    .line 138
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 141
    move-result p1

    .line 142
    rem-int/2addr p1, v6

    .line 143
    const/16 v0, 0x7d0

    .line 145
    if-ne p1, v0, :cond_3

    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    .line 149
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 155
    move-result v0

    .line 156
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    move-result-object p1

    .line 166
    invoke-static {v5, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 169
    :try_start_6
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 171
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    .line 174
    return-object v3

    .line 175
    :cond_3
    :try_start_7
    iget-object p1, p0, Lcom/android/server/VaultKeeperService;->mContext:Landroid/content/Context;

    .line 177
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 180
    move-result-object p1

    .line 181
    const-string/jumbo v0, "system"

    .line 184
    invoke-static {v0}, Landroid/os/Process;->getUidForName(Ljava/lang/String;)I

    .line 187
    move-result v0

    .line 188
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 191
    move-result v2

    .line 192
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    .line 195
    move-result p1

    .line 196
    if-eqz p1, :cond_4

    .line 198
    new-instance p1, Ljava/lang/StringBuilder;

    .line 200
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 206
    move-result v0

    .line 207
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    const-string v0, " isn\'t signed with platform key."

    .line 212
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    move-result-object p1

    .line 219
    invoke-static {v5, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 222
    :try_start_8
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 224
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0

    .line 227
    return-object v3

    .line 228
    :cond_4
    :try_start_9
    iget-object p1, p0, Lcom/android/server/VaultKeeperService;->mContext:Landroid/content/Context;

    .line 230
    const-string v0, "activity"

    .line 232
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 235
    move-result-object p1

    .line 236
    check-cast p1, Landroid/app/ActivityManager;

    .line 238
    if-nez p1, :cond_5

    .line 240
    const-string p1, "ActivityManager is null, something wrong in framework"

    .line 242
    invoke-static {v5, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 245
    :try_start_a
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 247
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0

    .line 250
    return-object v3

    .line 251
    :cond_5
    :try_start_b
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 254
    move-result-object v0

    .line 255
    if-nez v0, :cond_6

    .line 257
    const-string/jumbo p1, "getRunningAppProcesses return null List. Cannot check permision"

    .line 260
    invoke-static {v5, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 263
    :try_start_c
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 265
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_0

    .line 268
    return-object v3

    .line 269
    :cond_6
    :try_start_d
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 272
    move-result-object p1

    .line 273
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 276
    move-result-object p1

    .line 277
    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 280
    move-result v0

    .line 281
    if-eqz v0, :cond_8

    .line 283
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 286
    move-result-object v0

    .line 287
    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 289
    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 291
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 294
    move-result v2

    .line 295
    if-ne v1, v2, :cond_7

    .line 297
    iget-object p1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 299
    move-object v0, p1

    .line 300
    goto :goto_0

    .line 301
    :cond_8
    move-object v0, v3

    .line 302
    :goto_0
    if-nez v0, :cond_9

    .line 304
    const-string p1, "Invalid package name"

    .line 306
    invoke-static {v5, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 309
    :try_start_e
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 311
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_0

    .line 314
    return-object v3

    .line 315
    :cond_9
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 318
    move-result p1

    .line 319
    if-nez p1, :cond_a

    .line 321
    const-string p1, "Invalid package length"

    .line 323
    invoke-static {v5, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 326
    :try_start_10
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 328
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_0

    .line 331
    return-object v3

    .line 332
    :cond_a
    :goto_1
    :try_start_11
    new-instance p1, Ljava/lang/StringBuilder;

    .line 334
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    const-string v1, "Client info : "

    .line 339
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    move-result-object p1

    .line 349
    invoke-static {v5, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 352
    :try_start_12
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 354
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_0

    .line 357
    return-object v0

    .line 358
    :goto_2
    :try_start_13
    const-string v0, "Fail to check permission(Exception)"

    .line 360
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 366
    :try_start_14
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 368
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 371
    return-object v3

    .line 372
    :goto_3
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 374
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 377
    throw p1

    .line 378
    :cond_b
    const-string p0, "Unable to acquire lock"

    .line 380
    invoke-static {v5, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_14} :catch_0

    .line 383
    return-object v3

    .line 384
    :goto_4
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 387
    return-object v3
.end method

.method public final initialize(Ljava/lang/String;[B[B[B[B)I
    .locals 7

    .line 1
    const-string v0, "VaultKeeperService"

    .line 3
    const-string/jumbo v1, "initialize"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    .line 11
    const-string v2, ")"

    .line 13
    if-nez v1, :cond_0

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    const-string p2, "VaultKeeper not support("

    .line 19
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    iget p0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    .line 24
    invoke-static {p1, p0, v2, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 27
    const/16 p0, -0x68

    .line 29
    return p0

    .line 30
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/VaultKeeperService;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    if-nez v1, :cond_1

    .line 36
    const/16 p0, -0x6a

    .line 38
    return p0

    .line 39
    :cond_1
    const/16 v3, -0x66

    .line 41
    if-eqz p2, :cond_2

    .line 43
    array-length v4, p2

    .line 44
    const/16 v5, 0x20

    .line 46
    if-eq v4, v5, :cond_2

    .line 48
    new-instance p0, Ljava/lang/StringBuilder;

    .line 50
    const-string/jumbo p1, "initialize : if key is exist, it should be 32 Bytes. but now("

    .line 53
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    array-length p1, p2

    .line 57
    invoke-static {p0, p1, v2, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 60
    return v3

    .line 61
    :cond_2
    if-eqz p3, :cond_3

    .line 63
    array-length v2, p3

    .line 64
    if-nez v2, :cond_3

    .line 66
    const-string/jumbo p0, "initialize : if initUnsheltered is exist, it should contain value."

    .line 69
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return v3

    .line 73
    :cond_3
    if-eqz p4, :cond_4

    .line 75
    array-length v2, p4

    .line 76
    if-nez v2, :cond_4

    .line 78
    const-string/jumbo p0, "initialize : if cert is exist, it should contain value."

    .line 81
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return v3

    .line 85
    :cond_4
    if-eqz p5, :cond_5

    .line 87
    array-length v2, p5

    .line 88
    if-nez v2, :cond_5

    .line 90
    const-string/jumbo p0, "initialize :  if signature is exist, it should contain value."

    .line 93
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return v3

    .line 97
    :cond_5
    if-eqz p4, :cond_6

    .line 99
    if-eqz p5, :cond_6

    .line 101
    array-length v2, p5

    .line 102
    array-length v4, p4

    .line 103
    add-int/2addr v2, v4

    .line 104
    new-array v2, v2, [B

    .line 106
    array-length v4, p5

    .line 107
    const/4 v5, 0x0

    .line 108
    invoke-static {p5, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    array-length v4, p5

    .line 112
    array-length v6, p4

    .line 113
    invoke-static {p4, v5, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    :goto_0
    move-object v5, v2

    .line 117
    goto :goto_1

    .line 118
    :cond_6
    const/4 v2, 0x0

    .line 119
    goto :goto_0

    .line 120
    :goto_1
    if-nez p4, :cond_7

    .line 122
    if-nez p5, :cond_7

    .line 124
    const-string/jumbo p0, "initialize : All of input param is empty."

    .line 127
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return v3

    .line 131
    :cond_7
    iget-object p4, p0, Lcom/android/server/VaultKeeperService;->mHandler:Lcom/android/server/VaultKeeperService$1;

    .line 133
    const/4 p5, 0x1

    .line 134
    invoke-virtual {p4, p5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 137
    move-result-object p5

    .line 138
    invoke-virtual {p4, p5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 141
    :try_start_0
    iget-object p4, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 143
    sget-object p5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 145
    const-wide/16 v2, 0x5

    .line 147
    invoke-virtual {p4, v2, v3, p5}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    .line 150
    move-result p4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    if-eqz p4, :cond_8

    .line 153
    move-object v0, p0

    .line 154
    move-object v2, p1

    .line 155
    move-object v3, p2

    .line 156
    move-object v4, p3

    .line 157
    :try_start_1
    invoke-direct/range {v0 .. v5}, Lcom/android/server/VaultKeeperService;->nativeInitialize(Ljava/lang/String;Ljava/lang/String;[B[B[B)I

    .line 160
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    :try_start_2
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 163
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 166
    return p1

    .line 167
    :catch_0
    move-exception p0

    .line 168
    goto :goto_2

    .line 169
    :catchall_0
    move-exception p1

    .line 170
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 172
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 175
    throw p1

    .line 176
    :cond_8
    const-string p0, "Unable to acquire lock"

    .line 178
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 181
    const/16 p0, -0x69

    .line 183
    return p0

    .line 184
    :goto_2
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 187
    const/16 p0, -0x67

    .line 189
    return p0
.end method

.method public final isInitialized(Ljava/lang/String;)Z
    .locals 7

    .line 1
    const-string v0, "VaultKeeperService"

    .line 3
    const-string/jumbo v1, "isInitialized"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 16
    const-string v1, "VaultKeeper not support("

    .line 18
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    iget p0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    .line 23
    const-string v1, ")"

    .line 25
    invoke-static {p1, p0, v1, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 28
    return v2

    .line 29
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/VaultKeeperService;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    if-nez v1, :cond_1

    .line 35
    return v2

    .line 36
    :cond_1
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mHandler:Lcom/android/server/VaultKeeperService$1;

    .line 38
    const/4 v4, 0x1

    .line 39
    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 46
    :try_start_0
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 48
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 50
    const-wide/16 v5, 0x1

    .line 52
    invoke-virtual {v3, v5, v6, v4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    .line 55
    move-result v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    if-eqz v3, :cond_2

    .line 58
    :try_start_1
    invoke-direct {p0, v1, p1}, Lcom/android/server/VaultKeeperService;->nativeIsInitialized(Ljava/lang/String;Ljava/lang/String;)Z

    .line 61
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    :try_start_2
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 64
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 67
    return p1

    .line 68
    :catch_0
    move-exception p0

    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception p1

    .line 71
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 73
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 76
    throw p1

    .line 77
    :cond_2
    const-string p0, "Unable to acquire lock"

    .line 79
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 82
    return v2

    .line 83
    :goto_0
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 86
    return v2
.end method

.method public final migrationStorage(Ljava/lang/String;)Z
    .locals 7

    .line 1
    const-string v0, "VaultKeeperService"

    .line 3
    const-string/jumbo v1, "migrationStorage"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 16
    const-string v1, "VaultKeeper not support("

    .line 18
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    iget p0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    .line 23
    const-string v1, ")"

    .line 25
    invoke-static {p1, p0, v1, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 28
    return v2

    .line 29
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/VaultKeeperService;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    if-nez v1, :cond_1

    .line 35
    return v2

    .line 36
    :cond_1
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mHandler:Lcom/android/server/VaultKeeperService$1;

    .line 38
    const/4 v4, 0x1

    .line 39
    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 46
    :try_start_0
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 48
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 50
    const-wide/16 v5, 0x5

    .line 52
    invoke-virtual {v3, v5, v6, v4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    .line 55
    move-result v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    if-eqz v3, :cond_2

    .line 58
    :try_start_1
    invoke-direct {p0, v1, p1}, Lcom/android/server/VaultKeeperService;->nativeMigrationStorage(Ljava/lang/String;Ljava/lang/String;)Z

    .line 61
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    :try_start_2
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 64
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 67
    return p1

    .line 68
    :catch_0
    move-exception p0

    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception p1

    .line 71
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 73
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 76
    throw p1

    .line 77
    :cond_2
    const-string p0, "Unable to acquire lock"

    .line 79
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 82
    return v2

    .line 83
    :goto_0
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 86
    return v2
.end method

.method public final read(Ljava/lang/String;I[I)[B
    .locals 7

    .line 1
    const-string v0, "VaultKeeperService"

    .line 3
    const-string/jumbo v1, "read"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 16
    const-string p2, "VaultKeeper not support("

    .line 18
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    iget p0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    .line 23
    const-string p2, ")"

    .line 25
    invoke-static {p1, p0, p2, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 28
    return-object v2

    .line 29
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/VaultKeeperService;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    if-nez v1, :cond_1

    .line 35
    return-object v2

    .line 36
    :cond_1
    const/4 v3, 0x1

    .line 37
    if-lt p2, v3, :cond_5

    .line 39
    const/4 v4, 0x2

    .line 40
    if-le p2, v4, :cond_2

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    if-nez p3, :cond_3

    .line 45
    return-object v2

    .line 46
    :cond_3
    iget-object v4, p0, Lcom/android/server/VaultKeeperService;->mHandler:Lcom/android/server/VaultKeeperService$1;

    .line 48
    invoke-virtual {v4, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 55
    :try_start_0
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 57
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 59
    const-wide/16 v5, 0x5

    .line 61
    invoke-virtual {v3, v5, v6, v4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    .line 64
    move-result v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    if-eqz v3, :cond_4

    .line 67
    :try_start_1
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/VaultKeeperService;->nativeRead(Ljava/lang/String;Ljava/lang/String;I[I)[B

    .line 70
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :try_start_2
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 73
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 76
    return-object p1

    .line 77
    :catch_0
    move-exception p0

    .line 78
    goto :goto_0

    .line 79
    :catchall_0
    move-exception p1

    .line 80
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 82
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 85
    throw p1

    .line 86
    :cond_4
    const-string p0, "Unable to acquire lock"

    .line 88
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 91
    return-object v2

    .line 92
    :goto_0
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 95
    return-object v2

    .line 96
    :cond_5
    :goto_1
    const-string/jumbo p0, "read : Invalid type value."

    .line 99
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-object v2
.end method

.method public final sensitiveBox(Ljava/lang/String;I[I)[B
    .locals 7

    .line 1
    const-string v0, "VaultKeeperService"

    .line 3
    const-string/jumbo v1, "sensitiveBox"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 16
    const-string p2, "VaultKeeper not support("

    .line 18
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    iget p0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    .line 23
    const-string p2, ")"

    .line 25
    invoke-static {p1, p0, p2, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 28
    return-object v2

    .line 29
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/VaultKeeperService;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    if-nez v1, :cond_1

    .line 35
    return-object v2

    .line 36
    :cond_1
    const/4 v3, 0x1

    .line 37
    if-lt p2, v3, :cond_5

    .line 39
    const/16 v4, 0x9

    .line 41
    if-le p2, v4, :cond_2

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    if-nez p3, :cond_3

    .line 46
    return-object v2

    .line 47
    :cond_3
    iget-object v4, p0, Lcom/android/server/VaultKeeperService;->mHandler:Lcom/android/server/VaultKeeperService$1;

    .line 49
    invoke-virtual {v4, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 56
    :try_start_0
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 58
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 60
    const-wide/16 v5, 0x5

    .line 62
    invoke-virtual {v3, v5, v6, v4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    .line 65
    move-result v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    if-eqz v3, :cond_4

    .line 68
    :try_start_1
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/VaultKeeperService;->nativeSensitiveBox(Ljava/lang/String;Ljava/lang/String;I[I)[B

    .line 71
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    :try_start_2
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 74
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 77
    return-object p1

    .line 78
    :catch_0
    move-exception p0

    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception p1

    .line 81
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 83
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 86
    throw p1

    .line 87
    :cond_4
    const-string p0, "Unable to acquire lock"

    .line 89
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 92
    return-object v2

    .line 93
    :goto_0
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 96
    return-object v2

    .line 97
    :cond_5
    :goto_1
    const-string/jumbo p0, "sensitiveBox : Invalid type value."

    .line 100
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-object v2
.end method

.method public final verifyCertificate(Ljava/lang/String;[B)Z
    .locals 7

    .line 1
    const-string v0, "VaultKeeperService"

    .line 3
    const-string/jumbo v1, "verifyCertificate"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 16
    const-string p2, "VaultKeeper not support("

    .line 18
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    iget p0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    .line 23
    const-string p2, ")"

    .line 25
    invoke-static {p1, p0, p2, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 28
    return v2

    .line 29
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/VaultKeeperService;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    if-nez v1, :cond_1

    .line 35
    return v2

    .line 36
    :cond_1
    if-nez p2, :cond_2

    .line 38
    const-string/jumbo p0, "verifyCertificate : cert is null."

    .line 41
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return v2

    .line 45
    :cond_2
    array-length v3, p2

    .line 46
    if-nez v3, :cond_3

    .line 48
    const-string/jumbo p0, "verifyCertificate : certificate length is zero"

    .line 51
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return v2

    .line 55
    :cond_3
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mHandler:Lcom/android/server/VaultKeeperService$1;

    .line 57
    const/4 v4, 0x1

    .line 58
    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 65
    :try_start_0
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 67
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 69
    const-wide/16 v5, 0x1

    .line 71
    invoke-virtual {v3, v5, v6, v4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    .line 74
    move-result v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    if-eqz v3, :cond_4

    .line 77
    :try_start_1
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/VaultKeeperService;->nativeVerifyCertificate(Ljava/lang/String;Ljava/lang/String;[B)Z

    .line 80
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :try_start_2
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 83
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 86
    return p1

    .line 87
    :catch_0
    move-exception p0

    .line 88
    goto :goto_0

    .line 89
    :catchall_0
    move-exception p1

    .line 90
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 92
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 95
    throw p1

    .line 96
    :cond_4
    const-string p0, "Unable to acquire lock"

    .line 98
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 101
    return v2

    .line 102
    :goto_0
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 105
    return v2
.end method

.method public final write(Ljava/lang/String;I[B[B[B)I
    .locals 7

    .line 1
    const-string v0, "VaultKeeperService"

    .line 3
    const-string/jumbo v1, "write"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget v1, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    .line 11
    if-nez v1, :cond_0

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    const-string p2, "VaultKeeper not support("

    .line 17
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    iget p0, p0, Lcom/android/server/VaultKeeperService;->mServiceSupport:I

    .line 22
    const-string p2, ")"

    .line 24
    invoke-static {p1, p0, p2, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 27
    const/16 p0, -0x68

    .line 29
    return p0

    .line 30
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/VaultKeeperService;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    if-nez v1, :cond_1

    .line 36
    const/16 p0, -0x6a

    .line 38
    return p0

    .line 39
    :cond_1
    const/4 v2, 0x1

    .line 40
    const/16 v3, -0x66

    .line 42
    if-lt p2, v2, :cond_7

    .line 44
    const/4 v4, 0x2

    .line 45
    if-le p2, v4, :cond_2

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    if-eqz p3, :cond_3

    .line 50
    array-length v4, p3

    .line 51
    if-nez v4, :cond_3

    .line 53
    const-string/jumbo p0, "write : if data is exist, it should contain value."

    .line 56
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return v3

    .line 60
    :cond_3
    if-eqz p4, :cond_4

    .line 62
    array-length v4, p4

    .line 63
    if-nez v4, :cond_4

    .line 65
    const-string/jumbo p0, "write : if cert is exist, it should contain value."

    .line 68
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return v3

    .line 72
    :cond_4
    if-eqz p5, :cond_5

    .line 74
    array-length v4, p5

    .line 75
    if-nez v4, :cond_5

    .line 77
    const-string/jumbo p0, "write : if sig is exist, it should contain value."

    .line 80
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return v3

    .line 84
    :cond_5
    iget-object v3, p0, Lcom/android/server/VaultKeeperService;->mHandler:Lcom/android/server/VaultKeeperService$1;

    .line 86
    invoke-virtual {v3, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 93
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 95
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 97
    const-wide/16 v4, 0x5

    .line 99
    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    .line 102
    move-result v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    if-eqz v2, :cond_6

    .line 105
    move-object v0, p0

    .line 106
    move-object v2, p1

    .line 107
    move v3, p2

    .line 108
    move-object v4, p3

    .line 109
    move-object v5, p4

    .line 110
    move-object v6, p5

    .line 111
    :try_start_1
    invoke-direct/range {v0 .. v6}, Lcom/android/server/VaultKeeperService;->nativeWrite(Ljava/lang/String;Ljava/lang/String;I[B[B[B)I

    .line 114
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    :try_start_2
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 117
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 120
    return p1

    .line 121
    :catch_0
    move-exception p0

    .line 122
    goto :goto_0

    .line 123
    :catchall_0
    move-exception p1

    .line 124
    iget-object p0, p0, Lcom/android/server/VaultKeeperService;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 126
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 129
    throw p1

    .line 130
    :cond_6
    const-string p0, "Unable to acquire lock"

    .line 132
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 135
    const/16 p0, -0x69

    .line 137
    return p0

    .line 138
    :goto_0
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 141
    const/16 p0, -0x67

    .line 143
    return p0

    .line 144
    :cond_7
    :goto_1
    const-string/jumbo p0, "write : Invalid type value."

    .line 147
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return v3
.end method
