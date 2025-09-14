.class public final Lcom/android/server/locksettings/LockSettingsService$LocalService;
.super Lcom/android/internal/widget/LockSettingsInternal;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 3
    invoke-direct {p0}, Lcom/android/internal/widget/LockSettingsInternal;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final addEscrowToken([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->addEscrowToken([BIILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    .line 7
    move-result-wide p0

    .line 8
    return-wide p0
.end method

.method public final armRebootEscrow()I
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 3
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

    .line 5
    iget-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowReady:Z

    .line 7
    const/4 v1, 0x2

    .line 8
    if-nez v0, :cond_0

    .line 10
    goto/16 :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    .line 14
    iget-object v2, v0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mRebootEscrowProvider:Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    .line 16
    if-nez v2, :cond_1

    .line 18
    const-string v0, "RebootEscrowManager"

    .line 20
    const-string v1, "Not storing escrow key, RebootEscrowProvider is unavailable"

    .line 22
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearRebootEscrowIfNeeded()V

    .line 28
    const/4 v1, 0x3

    .line 29
    goto/16 :goto_0

    .line 31
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->serverBasedResumeOnReboot()Z

    .line 34
    move-result v0

    .line 35
    invoke-interface {v2}, Lcom/android/server/locksettings/RebootEscrowProviderInterface;->getType()I

    .line 38
    move-result v3

    .line 39
    if-eq v0, v3, :cond_2

    .line 41
    const-string v1, "RebootEscrowManager"

    .line 43
    const-string v2, "Expect reboot escrow provider "

    .line 45
    const-string v4, ", but the RoR is prepared with "

    .line 47
    const-string v5, ". Please prepare the RoR again."

    .line 49
    invoke-static {v0, v3, v2, v4, v5}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearRebootEscrowIfNeeded()V

    .line 59
    const/4 v1, 0x4

    .line 60
    goto/16 :goto_0

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyGenerationLock:Ljava/lang/Object;

    .line 64
    monitor-enter v0

    .line 65
    :try_start_0
    iget-object v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mPendingRebootEscrowKey:Lcom/android/server/locksettings/RebootEscrowKey;

    .line 67
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 68
    if-nez v4, :cond_3

    .line 70
    const-string v0, "RebootEscrowManager"

    .line 72
    const-string v1, "Escrow key is null, but escrow was marked as ready"

    .line 74
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearRebootEscrowIfNeeded()V

    .line 80
    const/4 v1, 0x5

    .line 81
    goto/16 :goto_0

    .line 83
    :cond_3
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyStoreManager:Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

    .line 85
    iget-object v5, v0, Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;->mKeyStoreLock:Ljava/lang/Object;

    .line 87
    monitor-enter v5

    .line 88
    :try_start_1
    invoke-static {}, Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;->getKeyStoreEncryptionKeyLocked()Ljavax/crypto/SecretKey;

    .line 91
    move-result-object v0

    .line 92
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    if-nez v0, :cond_4

    .line 95
    const-string v0, "RebootEscrowManager"

    .line 97
    const-string v1, "Failed to get encryption key from keystore."

    .line 99
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearRebootEscrowIfNeeded()V

    .line 105
    const/4 v1, 0x6

    .line 106
    goto/16 :goto_0

    .line 108
    :cond_4
    invoke-interface {v2, v4, v0}, Lcom/android/server/locksettings/RebootEscrowProviderInterface;->storeRebootEscrowKey(Lcom/android/server/locksettings/RebootEscrowKey;Ljavax/crypto/SecretKey;)Z

    .line 111
    move-result v0

    .line 112
    if-nez v0, :cond_5

    .line 114
    const/4 v1, 0x7

    .line 115
    goto/16 :goto_0

    .line 117
    :cond_5
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 119
    const-string/jumbo v2, "reboot_escrow_armed_count"

    .line 122
    iget-object v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    .line 124
    iget-object v4, v4, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mContext:Landroid/content/Context;

    .line 126
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 129
    move-result-object v4

    .line 130
    const-string/jumbo v5, "boot_count"

    .line 133
    const/4 v6, 0x0

    .line 134
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 137
    move-result v4

    .line 138
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 144
    move-result-object v4

    .line 145
    invoke-virtual {v0, v2, v4, v6}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 148
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 150
    const-string/jumbo v2, "reboot_escrow_key_stored_timestamp"

    .line 153
    iget-object v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    .line 155
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 161
    move-result-wide v4

    .line 162
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 168
    move-result-object v4

    .line 169
    invoke-virtual {v0, v2, v4, v6}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 172
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 174
    const-string/jumbo v2, "reboot_escrow_key_vbmeta_digest"

    .line 177
    iget-object v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    .line 179
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    const-string/jumbo v4, "ro.boot.vbmeta.digest"

    .line 185
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 188
    move-result-object v4

    .line 189
    invoke-virtual {v0, v2, v4, v6}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 192
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 194
    const-string/jumbo v2, "reboot_escrow_key_other_vbmeta_digest"

    .line 197
    iget-object v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    .line 199
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    const-string/jumbo v4, "ota.other.vbmeta_digest"

    .line 205
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 208
    move-result-object v4

    .line 209
    invoke-virtual {v0, v2, v4, v6}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 212
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 214
    const-string/jumbo v2, "reboot_escrow_key_provider"

    .line 217
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 223
    move-result-object v3

    .line 224
    invoke-virtual {v0, v2, v3, v6}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 227
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    .line 229
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    new-instance v0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

    .line 234
    const/4 v2, 0x0

    .line 235
    invoke-direct {v0, v1, v2}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;-><init>(ILjava/lang/Integer;)V

    .line 238
    iget v1, p0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mNextIndex:I

    .line 240
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mEntries:[Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

    .line 242
    aput-object v0, v2, v1

    .line 244
    add-int/lit8 v1, v1, 0x1

    .line 246
    array-length v0, v2

    .line 247
    rem-int/2addr v1, v0

    .line 248
    iput v1, p0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mNextIndex:I

    .line 250
    move v1, v6

    .line 251
    :goto_0
    return v1

    .line 252
    :catchall_0
    move-exception p0

    .line 253
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 254
    throw p0

    .line 255
    :catchall_1
    move-exception p0

    .line 256
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 257
    throw p0
.end method

.method public final clearRebootEscrow()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 3
    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsService;->mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

    .line 5
    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearRebootEscrowIfNeeded()V

    .line 8
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 10
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    .line 17
    const/4 v0, 0x6

    .line 18
    const/16 v1, 0x40

    .line 20
    const/4 v2, -0x1

    .line 21
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 28
    const/4 p0, 0x1

    .line 29
    return p0
.end method

.method public final clearStorageForUser(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 3
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 11
    move-result v0

    .line 12
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    .line 14
    if-nez v0, :cond_0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 22
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeUser(I)V

    .line 25
    :goto_0
    return-void
.end method

.method public final createNewUser(II)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 3
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsService;->FIX_UNLOCKED_DEVICE_REQUIRED_KEYS:Z

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {p1}, Landroid/security/AndroidKeyStoreMaintenance;->onUserAdded(I)I

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserCreationAndRemovalLock:Ljava/lang/Object;

    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mThirdPartyAppsStarted:Z

    .line 18
    if-nez v1, :cond_1

    .line 20
    const-string v1, "LockSettingsService"

    .line 22
    const-string v2, "Delaying locksettings state creation for user %d until third-party apps are started"

    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v3

    .line 28
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 31
    move-result-object v3

    .line 32
    invoke-static {v1, v2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mEarlyCreatedUsers:Landroid/util/SparseIntArray;

    .line 37
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 40
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mEarlyRemovedUsers:Landroid/util/SparseIntArray;

    .line 42
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 45
    monitor-exit v0

    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->removeStateForReusedUserIdIfNecessary(II)V

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->initializeSyntheticPassword(I)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 55
    monitor-exit v0

    .line 56
    :goto_0
    return-void

    .line 57
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p0
.end method

.method public final getCredentialType(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialType(I)I

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getSecureMode(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 3
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->getSecureMode(I)I

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final getUserPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;
    .locals 5

    .line 1
    const-string v0, "Querying password metrics for unified challenge profile: "

    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6
    move-result-wide v1

    .line 7
    :try_start_0
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 9
    invoke-virtual {v3, p1}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithUnifiedLock(I)Z

    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 15
    const-string v3, "LockSettingsService"

    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getUserPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;

    .line 40
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    return-object p0

    .line 45
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    throw p0
.end method

.method public final isEscrowTokenActive(JI)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->isEscrowTokenActive(JI)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final onThirdPartyAppsStarted()V
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string v0, "LockSettingsService"

    .line 8
    const-string v1, "!@ onThirdPartyAppsStarted()"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->migrateLockSettingsDB()V

    .line 16
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->migrateSpblob()V

    .line 19
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserCreationAndRemovalLock:Ljava/lang/Object;

    .line 21
    monitor-enter v0

    .line 22
    const/4 v1, 0x0

    .line 23
    move v2, v1

    .line 24
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mEarlyRemovedUsers:Landroid/util/SparseIntArray;

    .line 26
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    .line 29
    move-result v3

    .line 30
    if-ge v2, v3, :cond_0

    .line 32
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mEarlyRemovedUsers:Landroid/util/SparseIntArray;

    .line 34
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 37
    move-result v3

    .line 38
    const-string v4, "LockSettingsService"

    .line 40
    const-string v5, "Removing locksettings state for removed user %d now that boot is complete"

    .line 42
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v6

    .line 46
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 49
    move-result-object v6

    .line 50
    invoke-static {v4, v5, v6}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->removeUserState(I)V

    .line 56
    add-int/lit8 v2, v2, 0x1

    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto/16 :goto_5

    .line 62
    :cond_0
    const/4 v2, 0x0

    .line 63
    iput-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mEarlyRemovedUsers:Landroid/util/SparseIntArray;

    .line 65
    move v3, v1

    .line 66
    :goto_1
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mEarlyCreatedUsers:Landroid/util/SparseIntArray;

    .line 68
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    .line 71
    move-result v4

    .line 72
    if-ge v3, v4, :cond_1

    .line 74
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mEarlyCreatedUsers:Landroid/util/SparseIntArray;

    .line 76
    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 79
    move-result v4

    .line 80
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mEarlyCreatedUsers:Landroid/util/SparseIntArray;

    .line 82
    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 85
    move-result v5

    .line 86
    invoke-virtual {p0, v4, v5}, Lcom/android/server/locksettings/LockSettingsService;->removeStateForReusedUserIdIfNecessary(II)V

    .line 89
    const-string v5, "LockSettingsService"

    .line 91
    const-string v6, "Creating locksettings state for user %d now that boot is complete"

    .line 93
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    move-result-object v7

    .line 97
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 100
    move-result-object v7

    .line 101
    invoke-static {v5, v6, v7}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    invoke-virtual {p0, v4}, Lcom/android/server/locksettings/LockSettingsService;->initializeSyntheticPassword(I)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 107
    add-int/lit8 v3, v3, 0x1

    .line 109
    goto :goto_1

    .line 110
    :cond_1
    iput-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mEarlyCreatedUsers:Landroid/util/SparseIntArray;

    .line 112
    sget-boolean v3, Lcom/android/server/locksettings/LockSettingsService;->FIX_UNLOCKED_DEVICE_REQUIRED_KEYS:Z

    .line 114
    const/4 v4, 0x1

    .line 115
    if-eqz v3, :cond_3

    .line 117
    const-string/jumbo v2, "migrated_all_users_to_sp_and_bound_keys"

    .line 120
    invoke-virtual {p0, v2, v1, v1}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    .line 123
    move-result v2

    .line 124
    if-nez v2, :cond_6

    .line 126
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 128
    invoke-virtual {v2}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    .line 131
    move-result-object v2

    .line 132
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 135
    move-result-object v2

    .line 136
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    move-result v3

    .line 140
    if-eqz v3, :cond_2

    .line 142
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    move-result-object v3

    .line 146
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 148
    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    .line 150
    iget v6, v3, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 152
    invoke-virtual {p0, v5, v6}, Lcom/android/server/locksettings/LockSettingsService;->removeStateForReusedUserIdIfNecessary(II)V

    .line 155
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 157
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :try_start_1
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 160
    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->migrateUserToSpWithBoundKeysLocked(I)V

    .line 163
    monitor-exit v5

    .line 164
    goto :goto_2

    .line 165
    :catchall_1
    move-exception p0

    .line 166
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 167
    :try_start_2
    throw p0

    .line 168
    :cond_2
    const-string/jumbo v2, "migrated_all_users_to_sp_and_bound_keys"

    .line 171
    invoke-virtual {p0, v2, v4, v1}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 174
    goto :goto_4

    .line 175
    :cond_3
    const-string/jumbo v3, "migrated_all_users_to_sp_and_bound_ce"

    .line 178
    invoke-virtual {p0, v3, v2, v1}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 181
    move-result-object v2

    .line 182
    if-nez v2, :cond_5

    .line 184
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 186
    invoke-virtual {v2}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    .line 189
    move-result-object v2

    .line 190
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 193
    move-result-object v2

    .line 194
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 197
    move-result v3

    .line 198
    if-eqz v3, :cond_4

    .line 200
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 203
    move-result-object v3

    .line 204
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 206
    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    .line 208
    iget v6, v3, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 210
    invoke-virtual {p0, v5, v6}, Lcom/android/server/locksettings/LockSettingsService;->removeStateForReusedUserIdIfNecessary(II)V

    .line 213
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 215
    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 216
    :try_start_3
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 218
    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->migrateUserToSpWithBoundCeKeyLocked(I)V

    .line 221
    monitor-exit v5

    .line 222
    goto :goto_3

    .line 223
    :catchall_2
    move-exception p0

    .line 224
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 225
    :try_start_4
    throw p0

    .line 226
    :cond_4
    const-string/jumbo v2, "migrated_all_users_to_sp_and_bound_ce"

    .line 229
    const-string/jumbo v3, "true"

    .line 232
    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 235
    :cond_5
    const-string/jumbo v2, "migrated_all_users_to_sp_and_bound_keys"

    .line 238
    invoke-virtual {p0, v2, v1, v1}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    .line 241
    move-result v2

    .line 242
    if-eqz v2, :cond_6

    .line 244
    const-string/jumbo v2, "migrated_all_users_to_sp_and_bound_keys"

    .line 247
    invoke-virtual {p0, v2, v1, v1}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 250
    :cond_6
    :goto_4
    iput-boolean v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mThirdPartyAppsStarted:Z

    .line 252
    monitor-exit v0

    .line 253
    return-void

    .line 254
    :goto_5
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 255
    throw p0
.end method

.method public final prepareRebootEscrow()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 3
    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsService;->mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

    .line 5
    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearRebootEscrowIfNeeded()V

    .line 8
    iget-object v1, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    .line 10
    invoke-virtual {v1}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->createRebootEscrowProviderIfNeeded()Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    .line 13
    move-result-object v1

    .line 14
    if-nez v1, :cond_0

    .line 16
    const-string p0, "RebootEscrowManager"

    .line 18
    const-string v0, "No reboot escrow provider, skipping resume on reboot preparation."

    .line 20
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    const/4 p0, 0x0

    .line 24
    return p0

    .line 25
    :cond_0
    const/4 v1, 0x1

    .line 26
    iput-boolean v1, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowWanted:Z

    .line 28
    iget-object v0, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    new-instance v2, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

    .line 35
    const/4 v3, 0x0

    .line 36
    const/4 v4, 0x5

    .line 37
    invoke-direct {v2, v4, v3}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;-><init>(ILjava/lang/Integer;)V

    .line 40
    iget v3, v0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mNextIndex:I

    .line 42
    iget-object v4, v0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mEntries:[Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

    .line 44
    aput-object v2, v4, v3

    .line 46
    add-int/2addr v3, v1

    .line 47
    array-length v2, v4

    .line 48
    rem-int/2addr v3, v2

    .line 49
    iput v3, v0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mNextIndex:I

    .line 51
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 53
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    .line 55
    const/16 v0, 0x40

    .line 57
    const/4 v2, -0x1

    .line 58
    invoke-virtual {p0, v0, v2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->requireStrongAuth(II)V

    .line 61
    return v1
.end method

.method public final refreshStrongAuthTimeout(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 3
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    .line 5
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    .line 7
    const/16 v0, 0xa

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 17
    return-void
.end method

.method public final registerLockSettingsStateListener(Lcom/android/internal/widget/LockSettingsStateListener;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "listener cannot be null"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 9
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockSettingsStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 11
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    return-void
.end method

.method public final removeEscrowToken(JI)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->removeEscrowToken(JI)Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final removeUser(I)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 3
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserCreationAndRemovalLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mThirdPartyAppsStarted:Z

    .line 8
    if-nez v1, :cond_1

    .line 10
    const-string v1, "LockSettingsService"

    .line 12
    const-string v2, "Delaying locksettings state removal for user %d until third-party apps are started"

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object v3

    .line 18
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 21
    move-result-object v3

    .line 22
    invoke-static {v1, v2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mEarlyCreatedUsers:Landroid/util/SparseIntArray;

    .line 27
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 30
    move-result v1

    .line 31
    if-ltz v1, :cond_0

    .line 33
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mEarlyCreatedUsers:Landroid/util/SparseIntArray;

    .line 35
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_2

    .line 41
    :cond_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mEarlyRemovedUsers:Landroid/util/SparseIntArray;

    .line 43
    const/4 v1, -0x1

    .line 44
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 47
    :goto_0
    monitor-exit v0

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const-string v1, "LockSettingsService"

    .line 51
    const-string v2, "Removing state for user %d"

    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object v3

    .line 57
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 60
    move-result-object v3

    .line 61
    invoke-static {v1, v2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeUserState(I)V

    .line 67
    monitor-exit v0

    .line 68
    :goto_1
    return-void

    .line 69
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    throw p0
.end method

.method public final setLockCredentialWithToken(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 3
    iget-boolean v0, v0, Lcom/android/server/locksettings/LockSettingsService;->mHasSecureLockScreen:Z

    .line 5
    if-nez v0, :cond_1

    .line 7
    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    .line 12
    move-result v0

    .line 13
    const/4 v1, -0x1

    .line 14
    if-ne v0, v1, :cond_0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 19
    const-string p1, "This operation requires secure lock screen feature."

    .line 21
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 24
    throw p0

    .line 25
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 28
    move-result-wide v0

    .line 29
    const/4 v2, 0x0

    .line 30
    :try_start_0
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 32
    iget-object v3, v3, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 34
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 37
    move-result-object v3

    .line 38
    const-string/jumbo v4, "n_digits_pin_enabled"

    .line 41
    invoke-static {v3, v4, v2, p5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :catch_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 47
    goto :goto_1

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    throw p0

    .line 53
    :goto_1
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 55
    move-object v4, p1

    .line 56
    move-wide v5, p2

    .line 57
    move-object v7, p4

    .line 58
    move v8, p5

    .line 59
    invoke-static/range {v3 .. v8}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$msetLockCredentialWithToken(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/internal/widget/LockscreenCredential;J[BI)Z

    .line 62
    move-result p2

    .line 63
    if-nez p2, :cond_2

    .line 65
    return v2

    .line 66
    :cond_2
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 68
    invoke-virtual {p0, p1, p5}, Lcom/android/server/locksettings/LockSettingsService;->onPostPasswordChanged(Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 71
    const/4 p0, 0x1

    .line 72
    return p0
.end method

.method public final setRebootEscrowListener(Lcom/android/internal/widget/RebootEscrowListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 3
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

    .line 5
    iput-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowListener:Lcom/android/internal/widget/RebootEscrowListener;

    .line 7
    return-void
.end method

.method public final unlockUserWithToken(J[BI)Z
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 3
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    const-string v1, "LockSettingsService"

    .line 8
    const-string v2, "Unlocking user %d using escrow token %016x"

    .line 10
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v3

    .line 14
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    move-result-object v4

    .line 18
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    .line 21
    move-result-object v3

    .line 22
    invoke-static {v1, v2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 27
    invoke-virtual {v1, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    .line 30
    move-result v1

    .line 31
    const/4 v2, 0x0

    .line 32
    if-nez v1, :cond_0

    .line 34
    const-string p0, "LockSettingsService"

    .line 36
    const-string p1, "Escrow token support is disabled on user %d"

    .line 38
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object p2

    .line 42
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 45
    move-result-object p2

    .line 46
    invoke-static {p0, p1, p2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    monitor-exit v0

    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 55
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 58
    move-result-object v7

    .line 59
    move v4, p4

    .line 60
    move-wide v5, p1

    .line 61
    move-object v8, p3

    .line 62
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockTokenBasedProtector(IJLandroid/service/gatekeeper/IGateKeeperService;[B)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    .line 65
    move-result-object p1

    .line 66
    iget-object p2, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 68
    if-nez p2, :cond_1

    .line 70
    const-string p0, "LockSettingsService"

    .line 72
    const-string p1, "Invalid escrow token supplied"

    .line 74
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    monitor-exit v0

    .line 78
    goto :goto_0

    .line 79
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    const/4 v2, 0x1

    .line 81
    if-eqz p4, :cond_2

    .line 83
    invoke-static {p4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 86
    move-result p2

    .line 87
    if-eqz p2, :cond_2

    .line 89
    iget-object p2, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 91
    iput-boolean v2, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mSecureFolderAuthToken:Z

    .line 93
    :cond_2
    const-string p2, "LockSettingsService"

    .line 95
    const-string p3, "Unlocked synthetic password for user %d using escrow token"

    .line 97
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    move-result-object v0

    .line 101
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 104
    move-result-object v0

    .line 105
    invoke-static {p2, p3, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    iget-object p1, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 110
    invoke-virtual {p0, p4, p1}, Lcom/android/server/locksettings/LockSettingsService;->loadPasswordMetrics(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)Landroid/app/admin/PasswordMetrics;

    .line 113
    move-result-object p2

    .line 114
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/locksettings/LockSettingsService;->onCredentialVerified(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Landroid/app/admin/PasswordMetrics;I)V

    .line 117
    :goto_0
    return v2

    .line 118
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    throw p0
.end method

.method public final unregisterLockSettingsStateListener(Lcom/android/internal/widget/LockSettingsStateListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 3
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockSettingsStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    return-void
.end method
