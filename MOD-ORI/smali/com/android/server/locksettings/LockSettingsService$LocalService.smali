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

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/widget/LockSettingsInternal;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final addEscrowToken([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->addEscrowToken([BIILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    .line 5
    .line 6
    .line 7
    move-result-wide p0

    .line 8
    return-wide p0
.end method

.method public final armRebootEscrow()I
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowReady:Z

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_0

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    .line 13
    .line 14
    iget-object v2, v0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mRebootEscrowProvider:Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    const-string v0, "RebootEscrowManager"

    .line 19
    .line 20
    const-string v1, "Not storing escrow key, RebootEscrowProvider is unavailable"

    .line 21
    .line 22
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearRebootEscrowIfNeeded()V

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x3

    .line 29
    goto/16 :goto_0

    .line 30
    .line 31
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->serverBasedResumeOnReboot()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-interface {v2}, Lcom/android/server/locksettings/RebootEscrowProviderInterface;->getType()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eq v0, v3, :cond_2

    .line 40
    .line 41
    const-string v1, "RebootEscrowManager"

    .line 42
    .line 43
    const-string v2, "Expect reboot escrow provider "

    .line 44
    .line 45
    const-string v4, ", but the RoR is prepared with "

    .line 46
    .line 47
    const-string v5, ". Please prepare the RoR again."

    .line 48
    .line 49
    invoke-static {v0, v3, v2, v4, v5}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearRebootEscrowIfNeeded()V

    .line 57
    .line 58
    .line 59
    const/4 v1, 0x4

    .line 60
    goto/16 :goto_0

    .line 61
    .line 62
    :cond_2
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyGenerationLock:Ljava/lang/Object;

    .line 63
    .line 64
    monitor-enter v0

    .line 65
    :try_start_0
    iget-object v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mPendingRebootEscrowKey:Lcom/android/server/locksettings/RebootEscrowKey;

    .line 66
    .line 67
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 68
    if-nez v4, :cond_3

    .line 69
    .line 70
    const-string v0, "RebootEscrowManager"

    .line 71
    .line 72
    const-string v1, "Escrow key is null, but escrow was marked as ready"

    .line 73
    .line 74
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearRebootEscrowIfNeeded()V

    .line 78
    .line 79
    .line 80
    const/4 v1, 0x5

    .line 81
    goto/16 :goto_0

    .line 82
    .line 83
    :cond_3
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyStoreManager:Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

    .line 84
    .line 85
    iget-object v5, v0, Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;->mKeyStoreLock:Ljava/lang/Object;

    .line 86
    .line 87
    monitor-enter v5

    .line 88
    :try_start_1
    invoke-static {}, Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;->getKeyStoreEncryptionKeyLocked()Ljavax/crypto/SecretKey;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    if-nez v0, :cond_4

    .line 94
    .line 95
    const-string v0, "RebootEscrowManager"

    .line 96
    .line 97
    const-string v1, "Failed to get encryption key from keystore."

    .line 98
    .line 99
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearRebootEscrowIfNeeded()V

    .line 103
    .line 104
    .line 105
    const/4 v1, 0x6

    .line 106
    goto/16 :goto_0

    .line 107
    .line 108
    :cond_4
    invoke-interface {v2, v4, v0}, Lcom/android/server/locksettings/RebootEscrowProviderInterface;->storeRebootEscrowKey(Lcom/android/server/locksettings/RebootEscrowKey;Ljavax/crypto/SecretKey;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-nez v0, :cond_5

    .line 113
    .line 114
    const/4 v1, 0x7

    .line 115
    goto/16 :goto_0

    .line 116
    .line 117
    :cond_5
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 118
    .line 119
    const-string/jumbo v2, "reboot_escrow_armed_count"

    .line 120
    .line 121
    .line 122
    iget-object v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    .line 123
    .line 124
    iget-object v4, v4, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mContext:Landroid/content/Context;

    .line 125
    .line 126
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    const-string/jumbo v5, "boot_count"

    .line 131
    .line 132
    .line 133
    const/4 v6, 0x0

    .line 134
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    invoke-virtual {v0, v2, v4, v6}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 149
    .line 150
    const-string/jumbo v2, "reboot_escrow_key_stored_timestamp"

    .line 151
    .line 152
    .line 153
    iget-object v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    .line 154
    .line 155
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 159
    .line 160
    .line 161
    move-result-wide v4

    .line 162
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    invoke-virtual {v0, v2, v4, v6}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 170
    .line 171
    .line 172
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 173
    .line 174
    const-string/jumbo v2, "reboot_escrow_key_vbmeta_digest"

    .line 175
    .line 176
    .line 177
    iget-object v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    .line 178
    .line 179
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    const-string/jumbo v4, "ro.boot.vbmeta.digest"

    .line 183
    .line 184
    .line 185
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    invoke-virtual {v0, v2, v4, v6}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 190
    .line 191
    .line 192
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 193
    .line 194
    const-string/jumbo v2, "reboot_escrow_key_other_vbmeta_digest"

    .line 195
    .line 196
    .line 197
    iget-object v4, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    .line 198
    .line 199
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    const-string/jumbo v4, "ota.other.vbmeta_digest"

    .line 203
    .line 204
    .line 205
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    invoke-virtual {v0, v2, v4, v6}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 210
    .line 211
    .line 212
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 213
    .line 214
    const-string/jumbo v2, "reboot_escrow_key_provider"

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    .line 219
    .line 220
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    invoke-virtual {v0, v2, v3, v6}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 225
    .line 226
    .line 227
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    .line 228
    .line 229
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    .line 231
    .line 232
    new-instance v0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

    .line 233
    .line 234
    const/4 v2, 0x0

    .line 235
    invoke-direct {v0, v1, v2}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;-><init>(ILjava/lang/Integer;)V

    .line 236
    .line 237
    .line 238
    iget v1, p0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mNextIndex:I

    .line 239
    .line 240
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mEntries:[Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

    .line 241
    .line 242
    aput-object v0, v2, v1

    .line 243
    .line 244
    add-int/lit8 v1, v1, 0x1

    .line 245
    .line 246
    array-length v0, v2

    .line 247
    rem-int/2addr v1, v0

    .line 248
    iput v1, p0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mNextIndex:I

    .line 249
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

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsService;->mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearRebootEscrowIfNeeded()V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    .line 16
    .line 17
    const/4 v0, 0x6

    .line 18
    const/16 v1, 0x40

    .line 19
    .line 20
    const/4 v2, -0x1

    .line 21
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    return p0
.end method

.method public final clearStorageForUser(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->service:Lcom/android/server/locksettings/LockSettingsService;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeUser(I)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method public final createNewUser(II)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 2
    .line 3
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsService;->FIX_UNLOCKED_DEVICE_REQUIRED_KEYS:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Landroid/security/AndroidKeyStoreMaintenance;->onUserAdded(I)I

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserCreationAndRemovalLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mThirdPartyAppsStarted:Z

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    const-string v1, "LockSettingsService"

    .line 21
    .line 22
    const-string v2, "Delaying locksettings state creation for user %d until third-party apps are started"

    .line 23
    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-static {v1, v2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mEarlyCreatedUsers:Landroid/util/SparseIntArray;

    .line 36
    .line 37
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mEarlyRemovedUsers:Landroid/util/SparseIntArray;

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 43
    .line 44
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

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->initializeSyntheticPassword(I)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 53
    .line 54
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

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialType(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getSecureMode(I)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->getSecureMode(I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final getUserPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;
    .locals 5

    .line 1
    const-string v0, "Querying password metrics for unified challenge profile: "

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    :try_start_0
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 8
    .line 9
    invoke-virtual {v3, p1}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithUnifiedLock(I)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    const-string v3, "LockSettingsService"

    .line 16
    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
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

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getUserPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;

    .line 38
    .line 39
    .line 40
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 42
    .line 43
    .line 44
    return-object p0

    .line 45
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    .line 47
    .line 48
    throw p0
.end method

.method public final isEscrowTokenActive(JI)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->isEscrowTokenActive(JI)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final onThirdPartyAppsStarted()V
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "LockSettingsService"

    .line 7
    .line 8
    const-string v1, "!@ onThirdPartyAppsStarted()"

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->migrateLockSettingsDB()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->migrateSpblob()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserCreationAndRemovalLock:Ljava/lang/Object;

    .line 20
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

    .line 25
    .line 26
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-ge v2, v3, :cond_0

    .line 31
    .line 32
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mEarlyRemovedUsers:Landroid/util/SparseIntArray;

    .line 33
    .line 34
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    const-string v4, "LockSettingsService"

    .line 39
    .line 40
    const-string v5, "Removing locksettings state for removed user %d now that boot is complete"

    .line 41
    .line 42
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-static {v4, v5, v6}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->removeUserState(I)V

    .line 54
    .line 55
    .line 56
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto/16 :goto_5

    .line 61
    .line 62
    :cond_0
    const/4 v2, 0x0

    .line 63
    iput-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mEarlyRemovedUsers:Landroid/util/SparseIntArray;

    .line 64
    .line 65
    move v3, v1

    .line 66
    :goto_1
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mEarlyCreatedUsers:Landroid/util/SparseIntArray;

    .line 67
    .line 68
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-ge v3, v4, :cond_1

    .line 73
    .line 74
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mEarlyCreatedUsers:Landroid/util/SparseIntArray;

    .line 75
    .line 76
    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mEarlyCreatedUsers:Landroid/util/SparseIntArray;

    .line 81
    .line 82
    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    invoke-virtual {p0, v4, v5}, Lcom/android/server/locksettings/LockSettingsService;->removeStateForReusedUserIdIfNecessary(II)V

    .line 87
    .line 88
    .line 89
    const-string v5, "LockSettingsService"

    .line 90
    .line 91
    const-string v6, "Creating locksettings state for user %d now that boot is complete"

    .line 92
    .line 93
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    invoke-static {v5, v6, v7}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v4}, Lcom/android/server/locksettings/LockSettingsService;->initializeSyntheticPassword(I)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 105
    .line 106
    .line 107
    add-int/lit8 v3, v3, 0x1

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_1
    iput-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mEarlyCreatedUsers:Landroid/util/SparseIntArray;

    .line 111
    .line 112
    sget-boolean v3, Lcom/android/server/locksettings/LockSettingsService;->FIX_UNLOCKED_DEVICE_REQUIRED_KEYS:Z

    .line 113
    .line 114
    const/4 v4, 0x1

    .line 115
    if-eqz v3, :cond_3

    .line 116
    .line 117
    const-string/jumbo v2, "migrated_all_users_to_sp_and_bound_keys"

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v2, v1, v1}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-nez v2, :cond_6

    .line 125
    .line 126
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 127
    .line 128
    invoke-virtual {v2}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    if-eqz v3, :cond_2

    .line 141
    .line 142
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 147
    .line 148
    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    .line 149
    .line 150
    iget v6, v3, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 151
    .line 152
    invoke-virtual {p0, v5, v6}, Lcom/android/server/locksettings/LockSettingsService;->removeStateForReusedUserIdIfNecessary(II)V

    .line 153
    .line 154
    .line 155
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 156
    .line 157
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :try_start_1
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 159
    .line 160
    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->migrateUserToSpWithBoundKeysLocked(I)V

    .line 161
    .line 162
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

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, v2, v4, v1}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 172
    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_3
    const-string/jumbo v3, "migrated_all_users_to_sp_and_bound_ce"

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, v3, v2, v1}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    if-nez v2, :cond_5

    .line 183
    .line 184
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 185
    .line 186
    invoke-virtual {v2}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    if-eqz v3, :cond_4

    .line 199
    .line 200
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 205
    .line 206
    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    .line 207
    .line 208
    iget v6, v3, Landroid/content/pm/UserInfo;->serialNumber:I

    .line 209
    .line 210
    invoke-virtual {p0, v5, v6}, Lcom/android/server/locksettings/LockSettingsService;->removeStateForReusedUserIdIfNecessary(II)V

    .line 211
    .line 212
    .line 213
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 214
    .line 215
    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 216
    :try_start_3
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 217
    .line 218
    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->migrateUserToSpWithBoundCeKeyLocked(I)V

    .line 219
    .line 220
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

    .line 227
    .line 228
    .line 229
    const-string/jumbo v3, "true"

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 233
    .line 234
    .line 235
    :cond_5
    const-string/jumbo v2, "migrated_all_users_to_sp_and_bound_keys"

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0, v2, v1, v1}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    if-eqz v2, :cond_6

    .line 243
    .line 244
    const-string/jumbo v2, "migrated_all_users_to_sp_and_bound_keys"

    .line 245
    .line 246
    .line 247
    invoke-virtual {p0, v2, v1, v1}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 248
    .line 249
    .line 250
    :cond_6
    :goto_4
    iput-boolean v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mThirdPartyAppsStarted:Z

    .line 251
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

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsService;->mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/locksettings/RebootEscrowManager;->clearRebootEscrowIfNeeded()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->createRebootEscrowProviderIfNeeded()Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    const-string p0, "RebootEscrowManager"

    .line 17
    .line 18
    const-string v0, "No reboot escrow provider, skipping resume on reboot preparation."

    .line 19
    .line 20
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    return p0

    .line 25
    :cond_0
    const/4 v1, 0x1

    .line 26
    iput-boolean v1, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowWanted:Z

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    new-instance v2, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    const/4 v4, 0x5

    .line 37
    invoke-direct {v2, v4, v3}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;-><init>(ILjava/lang/Integer;)V

    .line 38
    .line 39
    .line 40
    iget v3, v0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mNextIndex:I

    .line 41
    .line 42
    iget-object v4, v0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mEntries:[Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

    .line 43
    .line 44
    aput-object v2, v4, v3

    .line 45
    .line 46
    add-int/2addr v3, v1

    .line 47
    array-length v2, v4

    .line 48
    rem-int/2addr v3, v2

    .line 49
    iput v3, v0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mNextIndex:I

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    .line 54
    .line 55
    const/16 v0, 0x40

    .line 56
    .line 57
    const/4 v2, -0x1

    .line 58
    invoke-virtual {p0, v0, v2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->requireStrongAuth(II)V

    .line 59
    .line 60
    .line 61
    return v1
.end method

.method public final refreshStrongAuthTimeout(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    .line 6
    .line 7
    const/16 v0, 0xa

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final registerLockSettingsStateListener(Lcom/android/internal/widget/LockSettingsStateListener;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "listener cannot be null"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockSettingsStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final removeEscrowToken(JI)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->removeEscrowToken(JI)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final removeUser(I)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserCreationAndRemovalLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mThirdPartyAppsStarted:Z

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    const-string v1, "LockSettingsService"

    .line 11
    .line 12
    const-string v2, "Delaying locksettings state removal for user %d until third-party apps are started"

    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-static {v1, v2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mEarlyCreatedUsers:Landroid/util/SparseIntArray;

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-ltz v1, :cond_0

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mEarlyCreatedUsers:Landroid/util/SparseIntArray;

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 36
    .line 37
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

    .line 42
    .line 43
    const/4 v1, -0x1

    .line 44
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 45
    .line 46
    .line 47
    :goto_0
    monitor-exit v0

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const-string v1, "LockSettingsService"

    .line 50
    .line 51
    const-string v2, "Removing state for user %d"

    .line 52
    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-static {v1, v2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeUserState(I)V

    .line 65
    .line 66
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

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/android/server/locksettings/LockSettingsService;->mHasSecureLockScreen:Z

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, -0x1

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 18
    .line 19
    const-string p1, "This operation requires secure lock screen feature."

    .line 20
    .line 21
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p0

    .line 25
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    const/4 v2, 0x0

    .line 30
    :try_start_0
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 31
    .line 32
    iget-object v3, v3, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const-string/jumbo v4, "n_digits_pin_enabled"

    .line 39
    .line 40
    .line 41
    invoke-static {v3, v4, v2, p5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    :catch_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 50
    .line 51
    .line 52
    throw p0

    .line 53
    :goto_1
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 54
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

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    if-nez p2, :cond_2

    .line 64
    .line 65
    return v2

    .line 66
    :cond_2
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 67
    .line 68
    invoke-virtual {p0, p1, p5}, Lcom/android/server/locksettings/LockSettingsService;->onPostPasswordChanged(Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 69
    .line 70
    .line 71
    const/4 p0, 0x1

    .line 72
    return p0
.end method

.method public final setRebootEscrowListener(Lcom/android/internal/widget/RebootEscrowListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowListener:Lcom/android/internal/widget/RebootEscrowListener;

    .line 6
    .line 7
    return-void
.end method

.method public final unlockUserWithToken(J[BI)Z
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$LocalService;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    const-string v1, "LockSettingsService"

    .line 7
    .line 8
    const-string v2, "Unlocking user %d using escrow token %016x"

    .line 9
    .line 10
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-static {v1, v2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 26
    .line 27
    invoke-virtual {v1, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/4 v2, 0x0

    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    const-string p0, "LockSettingsService"

    .line 35
    .line 36
    const-string p1, "Escrow token support is disabled on user %d"

    .line 37
    .line 38
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-static {p0, p1, p2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    .line 48
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

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 56
    .line 57
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

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iget-object p2, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 67
    .line 68
    if-nez p2, :cond_1

    .line 69
    .line 70
    const-string p0, "LockSettingsService"

    .line 71
    .line 72
    const-string p1, "Invalid escrow token supplied"

    .line 73
    .line 74
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
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

    .line 82
    .line 83
    invoke-static {p4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    if-eqz p2, :cond_2

    .line 88
    .line 89
    iget-object p2, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 90
    .line 91
    iput-boolean v2, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mSecureFolderAuthToken:Z

    .line 92
    .line 93
    :cond_2
    const-string p2, "LockSettingsService"

    .line 94
    .line 95
    const-string p3, "Unlocked synthetic password for user %d using escrow token"

    .line 96
    .line 97
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-static {p2, p3, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 109
    .line 110
    invoke-virtual {p0, p4, p1}, Lcom/android/server/locksettings/LockSettingsService;->loadPasswordMetrics(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)Landroid/app/admin/PasswordMetrics;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/locksettings/LockSettingsService;->onCredentialVerified(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Landroid/app/admin/PasswordMetrics;I)V

    .line 115
    .line 116
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

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockSettingsStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method
