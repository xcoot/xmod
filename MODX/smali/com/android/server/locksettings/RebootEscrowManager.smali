.class public final Lcom/android/server/locksettings/RebootEscrowManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final REBOOT_ESCROW_ARMED_KEY:Ljava/lang/String; = "reboot_escrow_armed_count"


# instance fields
.field public final mCallbacks:Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;

.field public final mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

.field public final mKeyGenerationLock:Ljava/lang/Object;

.field public final mKeyStoreManager:Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

.field public mLoadEscrowDataErrorCode:I

.field public mLoadEscrowDataWithRetry:Z

.field public mNetworkCallback:Lcom/android/server/locksettings/RebootEscrowManager$1;

.field public mPendingRebootEscrowKey:Lcom/android/server/locksettings/RebootEscrowKey;

.field public mRebootEscrowListener:Lcom/android/internal/widget/RebootEscrowListener;

.field public mRebootEscrowReady:Z

.field public mRebootEscrowTimedOut:Z

.field public mRebootEscrowWanted:Z

.field public final mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

.field public final mUserManager:Landroid/os/UserManager;

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/RebootEscrowManager$Injector;Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;Lcom/android/server/locksettings/LockSettingsStorage;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    .line 7
    iput-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowTimedOut:Z

    .line 9
    iput-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataWithRetry:Z

    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyGenerationLock:Ljava/lang/Object;

    .line 18
    iput-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    .line 20
    iput-object p2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mCallbacks:Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;

    .line 22
    iput-object p3, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 24
    iget-object p2, p1, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mContext:Landroid/content/Context;

    .line 26
    const-string/jumbo p3, "user"

    .line 29
    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    move-result-object p2

    .line 33
    check-cast p2, Landroid/os/UserManager;

    .line 35
    iput-object p2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mUserManager:Landroid/os/UserManager;

    .line 37
    new-instance p2, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    .line 39
    invoke-direct {p2}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    .line 44
    iget-object p1, p1, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mKeyStoreManager:Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

    .line 46
    iput-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyStoreManager:Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

    .line 48
    iput-object p4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mHandler:Landroid/os/Handler;

    .line 50
    return-void
.end method


# virtual methods
.method public final clearMetricsStorage()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 3
    const-string/jumbo v0, "reboot_escrow_armed_count"

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeKey(Ljava/lang/String;I)V

    .line 10
    const-string/jumbo v0, "reboot_escrow_key_stored_timestamp"

    .line 13
    invoke-virtual {p0, v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeKey(Ljava/lang/String;I)V

    .line 16
    const-string/jumbo v0, "reboot_escrow_key_vbmeta_digest"

    .line 19
    invoke-virtual {p0, v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeKey(Ljava/lang/String;I)V

    .line 22
    const-string/jumbo v0, "reboot_escrow_key_other_vbmeta_digest"

    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeKey(Ljava/lang/String;I)V

    .line 28
    const-string/jumbo v0, "reboot_escrow_key_provider"

    .line 31
    invoke-virtual {p0, v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeKey(Ljava/lang/String;I)V

    .line 34
    return-void
.end method

.method public final clearRebootEscrowIfNeeded()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowWanted:Z

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/RebootEscrowManager;->setRebootEscrowReady(Z)V

    .line 7
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    .line 9
    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->createRebootEscrowProviderIfNeeded()Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    .line 12
    move-result-object v1

    .line 13
    if-nez v1, :cond_0

    .line 15
    const-string v1, "RebootEscrowManager"

    .line 17
    const-string v2, "RebootEscrowProvider is unavailable for clear request"

    .line 19
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-interface {v1}, Lcom/android/server/locksettings/RebootEscrowProviderInterface;->clearRebootEscrowKey()V

    .line 26
    :goto_0
    const/4 v1, 0x0

    .line 27
    iput-object v1, v0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mRebootEscrowProvider:Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    .line 29
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearMetricsStorage()V

    .line 32
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mUserManager:Landroid/os/UserManager;

    .line 34
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    move-result-object v0

    .line 42
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_1

    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 54
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 56
    iget-object v3, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 58
    invoke-virtual {v3, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->getRebootEscrowFile(I)Ljava/io/File;

    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v3, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteFile(Ljava/io/File;)V

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    new-instance v0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

    .line 73
    const/4 v2, 0x3

    .line 74
    invoke-direct {v0, v2, v1}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;-><init>(ILjava/lang/Integer;)V

    .line 77
    iget v1, p0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mNextIndex:I

    .line 79
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mEntries:[Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

    .line 81
    aput-object v0, v2, v1

    .line 83
    add-int/lit8 v1, v1, 0x1

    .line 85
    array-length v0, v2

    .line 86
    rem-int/2addr v1, v0

    .line 87
    iput v1, p0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mNextIndex:I

    .line 89
    return-void
.end method

.method public final compareAndSetLoadEscrowDataErrorCode(Landroid/os/Handler;II)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    .line 3
    if-ne p2, v0, :cond_0

    .line 5
    invoke-virtual {p0, p3, p1}, Lcom/android/server/locksettings/RebootEscrowManager;->setLoadEscrowDataErrorCode(ILandroid/os/Handler;)V

    .line 8
    :cond_0
    return-void
.end method

.method public final loadRebootEscrowDataWithRetry(Landroid/os/Handler;ILjava/util/List;Ljava/util/List;)V
    .locals 16

    .line 1
    move-object/from16 v4, p0

    .line 3
    move-object/from16 v7, p1

    .line 5
    move-object/from16 v5, p3

    .line 7
    iget-object v1, v4, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    .line 9
    iget-object v0, v4, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyStoreManager:Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

    .line 11
    iget-object v2, v0, Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;->mKeyStoreLock:Ljava/lang/Object;

    .line 13
    monitor-enter v2

    .line 14
    :try_start_0
    invoke-static {}, Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;->getKeyStoreEncryptionKeyLocked()Ljavax/crypto/SecretKey;

    .line 17
    move-result-object v3

    .line 18
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    const-string v2, "RebootEscrowManager"

    .line 21
    if-nez v3, :cond_0

    .line 23
    const-string v0, "Failed to load the key for resume on reboot from key store."

    .line 25
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    const/4 v6, 0x0

    .line 29
    const/4 v8, 0x1

    .line 30
    const/4 v9, 0x3

    .line 31
    const/4 v10, 0x4

    .line 32
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->createRebootEscrowProviderIfNeeded()Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    .line 35
    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 36
    iget-object v11, v4, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    .line 38
    const/4 v12, 0x0

    .line 39
    const/4 v13, 0x7

    .line 40
    if-nez v0, :cond_1

    .line 42
    :try_start_2
    const-string v0, "Had reboot escrow data for users, but RebootEscrowProvider is unavailable"

    .line 44
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 v0, 0x2

    .line 48
    invoke-virtual {v4, v0, v7}, Lcom/android/server/locksettings/RebootEscrowManager;->setLoadEscrowDataErrorCode(ILandroid/os/Handler;)V

    .line 51
    :goto_0
    move-object v10, v12

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-interface {v0}, Lcom/android/server/locksettings/RebootEscrowProviderInterface;->getType()I

    .line 56
    move-result v14

    .line 57
    if-ne v14, v8, :cond_2

    .line 59
    if-nez v3, :cond_2

    .line 61
    invoke-virtual {v4, v13, v7}, Lcom/android/server/locksettings/RebootEscrowManager;->setLoadEscrowDataErrorCode(ILandroid/os/Handler;)V

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    invoke-interface {v0, v3}, Lcom/android/server/locksettings/RebootEscrowProviderInterface;->getAndClearRebootEscrowKey(Ljavax/crypto/SecretKey;)Lcom/android/server/locksettings/RebootEscrowKey;

    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_3

    .line 71
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    new-instance v14, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

    .line 76
    invoke-direct {v14, v10, v12}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;-><init>(ILjava/lang/Integer;)V

    .line 79
    iget v15, v11, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mNextIndex:I

    .line 81
    iget-object v10, v11, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mEntries:[Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

    .line 83
    aput-object v14, v10, v15

    .line 85
    add-int/2addr v15, v8

    .line 86
    array-length v10, v10

    .line 87
    rem-int/2addr v15, v10

    .line 88
    iput v15, v11, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mNextIndex:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 90
    :cond_3
    move-object v10, v0

    .line 91
    :goto_1
    iget-object v14, v4, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 93
    if-nez v10, :cond_6

    .line 95
    iget v0, v4, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    .line 97
    if-nez v0, :cond_5

    .line 99
    invoke-virtual {v1}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->serverBasedResumeOnReboot()Z

    .line 102
    move-result v0

    .line 103
    const-string/jumbo v1, "reboot_escrow_key_provider"

    .line 106
    const/4 v2, -0x1

    .line 107
    invoke-virtual {v14, v2, v6, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->getInt(IILjava/lang/String;)I

    .line 110
    move-result v1

    .line 111
    if-eq v0, v1, :cond_4

    .line 113
    const/4 v0, 0x6

    .line 114
    invoke-virtual {v4, v0, v7}, Lcom/android/server/locksettings/RebootEscrowManager;->setLoadEscrowDataErrorCode(ILandroid/os/Handler;)V

    .line 117
    goto :goto_2

    .line 118
    :cond_4
    invoke-virtual {v4, v9, v7}, Lcom/android/server/locksettings/RebootEscrowManager;->setLoadEscrowDataErrorCode(ILandroid/os/Handler;)V

    .line 121
    :cond_5
    :goto_2
    add-int/lit8 v0, p2, 0x1

    .line 123
    invoke-virtual {v4, v5, v0, v7}, Lcom/android/server/locksettings/RebootEscrowManager;->onGetRebootEscrowKeyFailed(Ljava/util/List;ILandroid/os/Handler;)V

    .line 126
    return-void

    .line 127
    :cond_6
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    new-instance v0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

    .line 132
    invoke-direct {v0, v8, v12}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;-><init>(ILjava/lang/Integer;)V

    .line 135
    iget v1, v11, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mNextIndex:I

    .line 137
    iget-object v5, v11, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mEntries:[Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

    .line 139
    aput-object v0, v5, v1

    .line 141
    add-int/2addr v1, v8

    .line 142
    array-length v0, v5

    .line 143
    rem-int/2addr v1, v0

    .line 144
    iput v1, v11, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mNextIndex:I

    .line 146
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 149
    move-result-object v1

    .line 150
    move v5, v8

    .line 151
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 154
    move-result v0

    .line 155
    if-eqz v0, :cond_8

    .line 157
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 160
    move-result-object v0

    .line 161
    check-cast v0, Landroid/content/pm/UserInfo;

    .line 163
    iget v9, v0, Landroid/content/pm/UserInfo;->id:I

    .line 165
    const-string v0, "Restored reboot escrow data for user "

    .line 167
    invoke-virtual {v14, v9}, Lcom/android/server/locksettings/LockSettingsStorage;->getRebootEscrowFile(I)Ljava/io/File;

    .line 170
    move-result-object v12

    .line 171
    invoke-virtual {v14, v12}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/io/File;)Z

    .line 174
    move-result v12

    .line 175
    if-nez v12, :cond_7

    .line 177
    :goto_4
    move v0, v6

    .line 178
    goto :goto_5

    .line 179
    :cond_7
    :try_start_3
    invoke-virtual {v14, v9}, Lcom/android/server/locksettings/LockSettingsStorage;->getRebootEscrowFile(I)Ljava/io/File;

    .line 182
    move-result-object v12

    .line 183
    invoke-virtual {v14, v12}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/io/File;)[B

    .line 186
    move-result-object v12

    .line 187
    invoke-virtual {v14, v9}, Lcom/android/server/locksettings/LockSettingsStorage;->getRebootEscrowFile(I)Ljava/io/File;

    .line 190
    move-result-object v15

    .line 191
    invoke-virtual {v14, v15}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteFile(Ljava/io/File;)V

    .line 194
    invoke-static {v10, v12, v3}, Lcom/android/server/locksettings/RebootEscrowData;->fromEncryptedData(Lcom/android/server/locksettings/RebootEscrowKey;[BLjavax/crypto/SecretKey;)Lcom/android/server/locksettings/RebootEscrowData;

    .line 197
    move-result-object v12

    .line 198
    iget-object v15, v4, Lcom/android/server/locksettings/RebootEscrowManager;->mCallbacks:Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;

    .line 200
    iget-byte v8, v12, Lcom/android/server/locksettings/RebootEscrowData;->mSpVersion:B

    .line 202
    iget-object v12, v12, Lcom/android/server/locksettings/RebootEscrowData;->mSyntheticPassword:[B

    .line 204
    check-cast v15, Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 206
    invoke-virtual {v15, v8, v12, v9}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->onRebootEscrowRestored(B[BI)V

    .line 209
    new-instance v8, Ljava/lang/StringBuilder;

    .line 211
    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    move-result-object v0

    .line 221
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance v0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

    .line 226
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    move-result-object v8

    .line 230
    invoke-direct {v0, v13, v8}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;-><init>(ILjava/lang/Integer;)V

    .line 233
    iget v8, v11, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mNextIndex:I

    .line 235
    iget-object v12, v11, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mEntries:[Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

    .line 237
    aput-object v0, v12, v8

    .line 239
    add-int/lit8 v8, v8, 0x1

    .line 241
    array-length v0, v12

    .line 242
    rem-int/2addr v8, v0

    .line 243
    iput v8, v11, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mNextIndex:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 245
    const/4 v0, 0x1

    .line 246
    goto :goto_5

    .line 247
    :catch_0
    move-exception v0

    .line 248
    new-instance v8, Ljava/lang/StringBuilder;

    .line 250
    const-string v12, "Could not load reboot escrow data for user "

    .line 252
    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    move-result-object v8

    .line 262
    invoke-static {v2, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    goto :goto_4

    .line 266
    :goto_5
    and-int/2addr v5, v0

    .line 267
    const/4 v8, 0x1

    .line 268
    goto :goto_3

    .line 269
    :cond_8
    if-nez v5, :cond_9

    .line 271
    const/4 v0, 0x5

    .line 272
    invoke-virtual {v4, v7, v6, v0}, Lcom/android/server/locksettings/RebootEscrowManager;->compareAndSetLoadEscrowDataErrorCode(Landroid/os/Handler;II)V

    .line 275
    :cond_9
    const/4 v1, 0x1

    .line 276
    add-int/lit8 v0, p2, 0x1

    .line 278
    invoke-virtual {v4, v5, v0, v7}, Lcom/android/server/locksettings/RebootEscrowManager;->onEscrowRestoreComplete(ZILandroid/os/Handler;)V

    .line 281
    return-void

    .line 282
    :catch_1
    move-exception v0

    .line 283
    const-string v3, "Failed to load escrow key, scheduling retry."

    .line 285
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 288
    const/4 v3, 0x1

    .line 289
    add-int/lit8 v0, p2, 0x1

    .line 291
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 297
    const-string/jumbo v3, "ota"

    .line 300
    const-string/jumbo v8, "load_escrow_data_retry_count"

    .line 303
    invoke-static {v3, v8, v9}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 306
    move-result v8

    .line 307
    const-string/jumbo v9, "load_escrow_data_retry_interval_seconds"

    .line 310
    const/16 v10, 0x1e

    .line 312
    invoke-static {v3, v9, v10}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 315
    move-result v9

    .line 316
    if-ge v0, v8, :cond_a

    .line 318
    iget-boolean v3, v4, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowTimedOut:Z

    .line 320
    if-nez v3, :cond_a

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    .line 324
    const-string v3, "Scheduling loadRebootEscrowData retry number: "

    .line 326
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    move-result-object v1

    .line 336
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    new-instance v8, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda5;

    .line 341
    move-object v1, v8

    .line 342
    move v2, v0

    .line 343
    move-object/from16 v3, p1

    .line 345
    move-object/from16 v4, p0

    .line 347
    move-object/from16 v5, p3

    .line 349
    move-object/from16 v6, p4

    .line 351
    invoke-direct/range {v1 .. v6}, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda5;-><init>(ILandroid/os/Handler;Lcom/android/server/locksettings/RebootEscrowManager;Ljava/util/List;Ljava/util/List;)V

    .line 354
    mul-int/lit16 v9, v9, 0x3e8

    .line 356
    int-to-long v0, v9

    .line 357
    invoke-virtual {v7, v8, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 360
    goto/16 :goto_a

    .line 362
    :cond_a
    const-string/jumbo v3, "ota"

    .line 365
    const-string/jumbo v8, "wait_for_internet_ror"

    .line 368
    invoke-static {v3, v8, v6}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 371
    move-result v3

    .line 372
    const-string v8, " attempts"

    .line 374
    const-string v9, "Failed to load reboot escrow data after "

    .line 376
    if-eqz v3, :cond_c

    .line 378
    iget-boolean v1, v4, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowTimedOut:Z

    .line 380
    if-eqz v1, :cond_b

    .line 382
    const-string v1, "Failed to load reboot escrow data within timeout"

    .line 384
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/16 v1, 0x9

    .line 389
    invoke-virtual {v4, v7, v6, v1}, Lcom/android/server/locksettings/RebootEscrowManager;->compareAndSetLoadEscrowDataErrorCode(Landroid/os/Handler;II)V

    .line 392
    goto :goto_6

    .line 393
    :cond_b
    invoke-static {v0, v9, v8, v2}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const/4 v1, 0x4

    .line 397
    invoke-virtual {v4, v7, v6, v1}, Lcom/android/server/locksettings/RebootEscrowManager;->compareAndSetLoadEscrowDataErrorCode(Landroid/os/Handler;II)V

    .line 400
    :goto_6
    invoke-virtual {v4, v5, v0, v7}, Lcom/android/server/locksettings/RebootEscrowManager;->onGetRebootEscrowKeyFailed(Ljava/util/List;ILandroid/os/Handler;)V

    .line 403
    goto :goto_a

    .line 404
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    .line 406
    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 412
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 418
    move-result-object v3

    .line 419
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-virtual {v1}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->serverBasedResumeOnReboot()Z

    .line 425
    move-result v2

    .line 426
    if-eqz v2, :cond_e

    .line 428
    iget-object v1, v1, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mContext:Landroid/content/Context;

    .line 430
    const-class v2, Landroid/net/ConnectivityManager;

    .line 432
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 435
    move-result-object v1

    .line 436
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 438
    if-nez v1, :cond_d

    .line 440
    goto :goto_7

    .line 441
    :cond_d
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 444
    move-result-object v2

    .line 445
    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 448
    move-result-object v1

    .line 449
    if-eqz v1, :cond_f

    .line 451
    const/16 v2, 0xc

    .line 453
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 456
    move-result v2

    .line 457
    if-eqz v2, :cond_f

    .line 459
    const/16 v2, 0x10

    .line 461
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 464
    move-result v1

    .line 465
    if-eqz v1, :cond_f

    .line 467
    :cond_e
    const/4 v1, 0x4

    .line 468
    goto :goto_8

    .line 469
    :cond_f
    :goto_7
    const/16 v1, 0x8

    .line 471
    iput v1, v4, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    .line 473
    goto :goto_9

    .line 474
    :goto_8
    iput v1, v4, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    .line 476
    :goto_9
    invoke-virtual {v4, v5, v0, v7}, Lcom/android/server/locksettings/RebootEscrowManager;->onGetRebootEscrowKeyFailed(Ljava/util/List;ILandroid/os/Handler;)V

    .line 479
    :goto_a
    return-void

    .line 480
    :catchall_0
    move-exception v0

    .line 481
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 482
    throw v0
.end method

.method public final onEscrowRestoreComplete(ZILandroid/os/Handler;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 3
    const-string/jumbo v1, "reboot_escrow_armed_count"

    .line 6
    const/4 v2, -0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->getInt(IILjava/lang/String;)I

    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    .line 14
    iget-object v1, v1, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mContext:Landroid/content/Context;

    .line 16
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 19
    move-result-object v1

    .line 20
    const-string/jumbo v4, "boot_count"

    .line 23
    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 26
    move-result v1

    .line 27
    sub-int/2addr v1, v0

    .line 28
    if-nez p1, :cond_0

    .line 30
    if-eq v0, v2, :cond_1

    .line 32
    const/4 v0, 0x5

    .line 33
    if-gt v1, v0, :cond_1

    .line 35
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/RebootEscrowManager;->reportMetricOnRestoreComplete(ZILandroid/os/Handler;)V

    .line 38
    :cond_1
    iget-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyStoreManager:Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

    .line 40
    iget-object p1, p1, Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;->mKeyStoreLock:Ljava/lang/Object;

    .line 42
    monitor-enter p1

    .line 43
    :try_start_0
    const-string p2, "AndroidKeystore"

    .line 45
    invoke-static {p2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    .line 48
    move-result-object p2

    .line 49
    new-instance p3, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;

    .line 51
    const/16 v0, 0x78

    .line 53
    invoke-direct {p3, v0}, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;-><init>(I)V

    .line 56
    invoke-virtual {p2, p3}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 59
    const-string/jumbo p3, "reboot_escrow_key_store_encryption_key"

    .line 62
    invoke-virtual {p2, p3}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_2

    .line 68
    :catch_0
    move-exception p2

    .line 69
    :try_start_1
    const-string p3, "RebootEscrowKeyStoreManager"

    .line 71
    const-string v0, "Unable to delete encryption key in keystore."

    .line 73
    invoke-static {p3, v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    :goto_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    iget-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    .line 79
    const/4 p2, 0x0

    .line 80
    iput-object p2, p1, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mRebootEscrowProvider:Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    .line 82
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearMetricsStorage()V

    .line 85
    iget-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mNetworkCallback:Lcom/android/server/locksettings/RebootEscrowManager$1;

    .line 87
    if-eqz p1, :cond_3

    .line 89
    iget-object p2, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    .line 91
    iget-object p2, p2, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mContext:Landroid/content/Context;

    .line 93
    const-class p3, Landroid/net/ConnectivityManager;

    .line 95
    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 98
    move-result-object p2

    .line 99
    check-cast p2, Landroid/net/ConnectivityManager;

    .line 101
    if-nez p2, :cond_2

    .line 103
    goto :goto_1

    .line 104
    :cond_2
    invoke-virtual {p2, p1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 107
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 109
    if-eqz p0, :cond_4

    .line 111
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 114
    :cond_4
    return-void

    .line 115
    :goto_2
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    throw p0
.end method

.method public final onGetRebootEscrowKeyFailed(Ljava/util/List;ILandroid/os/Handler;)V
    .locals 2

    .line 1
    const-string v0, "RebootEscrowManager"

    .line 3
    const-string v1, "Had reboot escrow data for users, but no key; removing escrow storage."

    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p1

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/content/pm/UserInfo;

    .line 24
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 26
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 28
    invoke-virtual {v1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getRebootEscrowFile(I)Ljava/io/File;

    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteFile(Ljava/io/File;)V

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p1, 0x0

    .line 37
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/RebootEscrowManager;->onEscrowRestoreComplete(ZILandroid/os/Handler;)V

    .line 40
    return-void
.end method

.method public final reportMetricOnRestoreComplete(ZILandroid/os/Handler;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->serverBasedResumeOnReboot()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v0, :cond_0

    .line 11
    move v6, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v6, v2

    .line 14
    :goto_0
    const/4 v0, 0x0

    .line 15
    iget-object v3, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 17
    const-string/jumbo v4, "reboot_escrow_key_stored_timestamp"

    .line 20
    const/4 v11, 0x0

    .line 21
    invoke-virtual {v3, v4, v0, v11}, Lcom/android/server/locksettings/LockSettingsStorage;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    move-result v4

    .line 29
    const-wide/16 v7, -0x1

    .line 31
    if-eqz v4, :cond_1

    .line 33
    move-wide v4, v7

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 38
    move-result-wide v4

    .line 39
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    move-result-wide v9

    .line 43
    cmp-long v0, v4, v7

    .line 45
    if-eqz v0, :cond_2

    .line 47
    cmp-long v0, v9, v4

    .line 49
    if-lez v0, :cond_2

    .line 51
    sub-long/2addr v9, v4

    .line 52
    long-to-int v0, v9

    .line 53
    div-int/lit16 v0, v0, 0x3e8

    .line 55
    :goto_2
    move v8, v0

    .line 56
    goto :goto_3

    .line 57
    :cond_2
    const/4 v0, -0x1

    .line 58
    goto :goto_2

    .line 59
    :goto_3
    const-string/jumbo v0, "ro.boot.vbmeta.digest"

    .line 62
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    const-string/jumbo v4, "reboot_escrow_key_vbmeta_digest"

    .line 69
    const-string v5, ""

    .line 71
    invoke-virtual {v3, v4, v5, v11}, Lcom/android/server/locksettings/LockSettingsStorage;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 74
    move-result-object v4

    .line 75
    const-string/jumbo v7, "reboot_escrow_key_other_vbmeta_digest"

    .line 78
    invoke-virtual {v3, v7, v5, v11}, Lcom/android/server/locksettings/LockSettingsStorage;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 85
    move-result v5

    .line 86
    if-eqz v5, :cond_4

    .line 88
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_3

    .line 94
    :goto_4
    move v9, v11

    .line 95
    goto :goto_5

    .line 96
    :cond_3
    move v9, v1

    .line 97
    goto :goto_5

    .line 98
    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    move-result v3

    .line 102
    if-eqz v3, :cond_5

    .line 104
    goto :goto_4

    .line 105
    :cond_5
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_3

    .line 111
    move v9, v2

    .line 112
    :goto_5
    if-nez p1, :cond_6

    .line 114
    invoke-virtual {p0, p3, v11, v2}, Lcom/android/server/locksettings/RebootEscrowManager;->compareAndSetLoadEscrowDataErrorCode(Landroid/os/Handler;II)V

    .line 117
    :cond_6
    const-string v0, "Reporting RoR recovery metrics, success: "

    .line 119
    const-string v1, ", service type: "

    .line 121
    const-string v2, ", error code: "

    .line 123
    invoke-static {v6, v0, v1, v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 126
    move-result-object v0

    .line 127
    iget v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    .line 129
    const-string v2, "RebootEscrowManager"

    .line 131
    invoke-static {v0, v1, v2}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 134
    iget v5, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    .line 136
    const/16 v3, 0xee

    .line 138
    const/4 v10, -0x1

    .line 139
    move v4, p1

    .line 140
    move v7, p2

    .line 141
    invoke-static/range {v3 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZIIIIII)V

    .line 144
    invoke-virtual {p0, v11, p3}, Lcom/android/server/locksettings/RebootEscrowManager;->setLoadEscrowDataErrorCode(ILandroid/os/Handler;)V

    .line 147
    return-void
.end method

.method public final setLoadEscrowDataErrorCode(ILandroid/os/Handler;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string/jumbo v0, "ota"

    .line 9
    const-string/jumbo v1, "wait_for_internet_ror"

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 19
    new-instance v0, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda4;

    .line 21
    invoke-direct {v0, p0, p1}, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/locksettings/RebootEscrowManager;I)V

    .line 24
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iput p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    .line 30
    :goto_0
    return-void
.end method

.method public final setRebootEscrowReady(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowReady:Z

    .line 3
    if-eq v0, p1, :cond_0

    .line 5
    new-instance v0, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda0;

    .line 7
    invoke-direct {v0, p0, p1}, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/locksettings/RebootEscrowManager;Z)V

    .line 10
    iget-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mHandler:Landroid/os/Handler;

    .line 12
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowReady:Z

    .line 17
    return-void
.end method
