.class public final Lcom/android/server/locksettings/LockSettingsService;
.super Lcom/android/internal/widget/ILockSettings$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG_DUMP:Z

.field public static final FIX_UNLOCKED_DEVICE_REQUIRED_KEYS:Z

.field public static final SYSTEM_CREDENTIAL_UIDS:[I

.field public static mIsDbMigrated:Z

.field public static mIsSpblobMigrated:Z


# instance fields
.field public final RemoteLockType:[Ljava/lang/String;

.field public final mActivityManager:Landroid/app/IActivityManager;

.field protected mAuthSecret:[B

.field public mAuthSecretService:Landroid/hardware/authsecret/IAuthSecret;

.field public final mBiometricDeferredQueue:Lcom/android/server/locksettings/BiometricDeferredQueue;

.field public final mBroadcastReceiver:Lcom/android/server/locksettings/LockSettingsService$3;

.field public final mCallbacks:Ljava/util/HashMap;

.field public final mCeStorageLockEventListener:Lcom/android/server/locksettings/LockSettingsService$4;

.field public final mContext:Landroid/content/Context;

.field public final mDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;

.field public mDarManagerService:Lcom/android/server/knox/dar/DarManagerService;

.field public final mDarVirtualLock:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

.field public final mDeviceProvisionedObserver:Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

.field public final mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

.field public final mDualDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$DualDarLockSettings;

.field public mEarlyCreatedUsers:Landroid/util/SparseIntArray;

.field public mEarlyRemovedUsers:Landroid/util/SparseIntArray;

.field public mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

.field public final mGatekeeperPasswords:Landroid/util/LongSparseArray;

.field protected final mHandler:Landroid/os/Handler;

.field protected mHasSecureLockScreen:Z

.field protected final mHeadlessAuthSecretLock:Ljava/lang/Object;

.field public mHermesService:Lcom/samsung/android/service/HermesService/IHermesService;

.field public final mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

.field public final mKeyStore:Ljava/security/KeyStore;

.field public final mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

.field public final mLockSettingsStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public mLockTypeForPasswordCheck:I

.field public mMaintenanceModeCallback:Ljava/util/function/Consumer;

.field public final mMaintenanceModeListener:Lcom/android/server/locksettings/LockSettingsService$1;

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public mPassword:[B

.field public final mPendingVerifiedResults:Landroid/util/SparseArray;

.field public final mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

.field public final mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

.field public mRemoteCallback:Landroid/os/IRemoteCallback;

.field public final mResetDebugLevel:Lcom/android/server/locksettings/LockSettingsService$9;

.field public final mSdpLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

.field public final mSeparateChallengeLock:Ljava/lang/Object;

.field public mShellCommandCallback:Landroid/os/IRemoteCallback;

.field public final mSpBackup:Lcom/android/server/locksettings/LockSettingsService$9;

.field public final mSpDump:Lcom/android/server/locksettings/SyntheticPasswordDump;

.field public final mSpDumpReceiver:Lcom/android/server/locksettings/LockSettingsService$3;

.field public final mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

.field protected final mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

.field public final mStorageManager:Landroid/os/storage/IStorageManager;

.field public final mStorageManagerInternal:Landroid/os/storage/StorageManagerInternal;

.field public final mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

.field public final mStrongAuthTracker:Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

.field public mThirdPartyAppsStarted:Z

.field public final mUnifiedProfilePasswordCache:Lcom/android/server/locksettings/UnifiedProfilePasswordCache;

.field public final mUserCreationAndRemovalLock:Ljava/lang/Object;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserManagerCache:Ljava/util/HashMap;

.field public final mUserPasswordMetrics:Landroid/util/SparseArray;


# direct methods
.method public static -$$Nest$mgetDarManagerService(Lcom/android/server/locksettings/LockSettingsService;)Ljava/util/Optional;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDarManagerService:Lcom/android/server/knox/dar/DarManagerService;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    const-string/jumbo v0, "dar"

    .line 13
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/server/knox/dar/DarManagerService;

    .line 19
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDarManagerService:Lcom/android/server/knox/dar/DarManagerService;

    .line 21
    :cond_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDarManagerService:Lcom/android/server/knox/dar/DarManagerService;

    .line 23
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public static -$$Nest$msetLockCredentialWithToken(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/internal/widget/LockscreenCredential;J[BI)Z
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p5

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    const-string v2, "Unknown or unactivated token: "

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 11
    const-string v4, "Set lock credential with token for user "

    .line 13
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v3

    .line 23
    invoke-static {v3}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 26
    const-string/jumbo v4, "credential"

    .line 29
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    .line 32
    move-result-object v5

    .line 33
    const-string/jumbo v6, "type"

    .line 36
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    .line 39
    move-result v3

    .line 40
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    move-result-object v7

    .line 44
    const-string/jumbo v8, "tokenHandle"

    .line 47
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 50
    move-result-object v9

    .line 51
    const-string/jumbo v10, "token"

    .line 54
    const-string/jumbo v12, "userId"

    .line 57
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    move-result-object v13

    .line 61
    move-object/from16 v11, p4

    .line 63
    filled-new-array/range {v4 .. v13}, [Ljava/lang/Object;

    .line 66
    move-result-object v3

    .line 67
    invoke-static {v3}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 70
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->validateBasicRequirements()V

    .line 73
    iget-object v3, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 75
    monitor-enter v3

    .line 76
    :try_start_0
    iget-object v4, v0, Lcom/android/server/locksettings/LockSettingsService;->mDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;

    .line 78
    invoke-virtual {v4, v1}, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->restoreEscrowDataIfNeededLocked(I)V

    .line 81
    iget-object v4, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 83
    invoke-virtual {v4, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_3

    .line 89
    move-wide/from16 v4, p2

    .line 91
    invoke-virtual {p0, v4, v5, v1}, Lcom/android/server/locksettings/LockSettingsService;->isEscrowTokenActive(JI)Z

    .line 94
    move-result v6

    .line 95
    if-nez v6, :cond_0

    .line 97
    const-string v0, "LockSettingsService"

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    .line 101
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object v1

    .line 115
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    monitor-exit v3

    .line 119
    const/4 v0, 0x0

    .line 120
    goto :goto_1

    .line 121
    :catchall_0
    move-exception v0

    .line 122
    goto :goto_2

    .line 123
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithTokenInternalLocked(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z

    .line 126
    move-result v2

    .line 127
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    const/4 v3, 0x0

    .line 129
    if-eqz v2, :cond_2

    .line 131
    iget-object v4, v0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    .line 133
    monitor-enter v4

    .line 134
    const/4 v5, 0x1

    .line 135
    :try_start_1
    invoke-virtual {p0, v1, v5, v3}, Lcom/android/server/locksettings/LockSettingsService;->setSeparateProfileChallengeEnabledLocked(IZLcom/android/internal/widget/LockscreenCredential;)V

    .line 138
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 139
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    .line 142
    move-result v4

    .line 143
    if-eqz v4, :cond_1

    .line 145
    iget-object v4, v0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 147
    new-instance v5, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda9;

    .line 149
    const/4 v6, 0x1

    .line 150
    invoke-direct {v5, v1, v6, p0}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda9;-><init>(IILjava/lang/Object;)V

    .line 153
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 156
    :cond_1
    iget-object v4, v0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 158
    new-instance v5, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda3;

    .line 160
    move-object v6, p1

    .line 161
    invoke-direct {v5, p0, p1, v1}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 164
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 167
    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 169
    new-instance v4, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda4;

    .line 171
    invoke-direct {v4, v1}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda4;-><init>(I)V

    .line 174
    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 177
    goto :goto_0

    .line 178
    :catchall_1
    move-exception v0

    .line 179
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 180
    throw v0

    .line 181
    :cond_2
    :goto_0
    const-string v0, "Result of setting credential with token for user %d : %s"

    .line 183
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    move-result-object v1

    .line 187
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 190
    move-result-object v4

    .line 191
    filled-new-array {v1, v4}, [Ljava/lang/Object;

    .line 194
    move-result-object v1

    .line 195
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 198
    move-result-object v0

    .line 199
    invoke-static {v3, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    move v0, v2

    .line 203
    :goto_1
    return v0

    .line 204
    :cond_3
    :try_start_3
    new-instance v0, Ljava/lang/SecurityException;

    .line 206
    const-string v1, "Escrow token is disabled on the current user"

    .line 208
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 211
    throw v0

    .line 212
    :goto_2
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 213
    throw v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/security/Flags;->fixUnlockedDeviceRequiredKeysV2()Z

    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/android/server/locksettings/LockSettingsService;->FIX_UNLOCKED_DEVICE_REQUIRED_KEYS:Z

    .line 7
    const-string/jumbo v0, "ro.build.type"

    .line 10
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    const-string/jumbo v2, "userdebug"

    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    if-nez v1, :cond_1

    .line 24
    const-string/jumbo v1, "eng"

    .line 27
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v0, v2

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 41
    :goto_1
    sput-boolean v0, Lcom/android/server/locksettings/LockSettingsService;->DEBUG_DUMP:Z

    .line 43
    const/16 v0, 0x3f8

    .line 45
    const/16 v1, 0x3e8

    .line 47
    filled-new-array {v0, v2, v1}, [I

    .line 50
    move-result-object v0

    .line 51
    sput-object v0, Lcom/android/server/locksettings/LockSettingsService;->SYSTEM_CREDENTIAL_UIDS:[I

    .line 53
    sput-boolean v2, Lcom/android/server/locksettings/LockSettingsService;->mIsDbMigrated:Z

    .line 55
    sput-boolean v2, Lcom/android/server/locksettings/LockSettingsService;->mIsSpblobMigrated:Z

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsService$Injector;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/ILockSettings$Stub;-><init>()V

    .line 8
    new-instance v2, Ljava/lang/Object;

    .line 10
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    .line 15
    new-instance v2, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

    .line 17
    invoke-direct {v2, v0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    .line 20
    iput-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mDeviceProvisionedObserver:Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

    .line 22
    new-instance v2, Ljava/lang/Object;

    .line 24
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mUserCreationAndRemovalLock:Ljava/lang/Object;

    .line 29
    new-instance v2, Landroid/util/SparseIntArray;

    .line 31
    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 34
    iput-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mEarlyCreatedUsers:Landroid/util/SparseIntArray;

    .line 36
    new-instance v2, Landroid/util/SparseIntArray;

    .line 38
    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 41
    iput-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mEarlyRemovedUsers:Landroid/util/SparseIntArray;

    .line 43
    new-instance v2, Landroid/util/SparseArray;

    .line 45
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 48
    iput-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mUserPasswordMetrics:Landroid/util/SparseArray;

    .line 50
    new-instance v2, Ljava/lang/Object;

    .line 52
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mHeadlessAuthSecretLock:Ljava/lang/Object;

    .line 57
    new-instance v2, Ljava/util/HashMap;

    .line 59
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 62
    iput-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mUserManagerCache:Ljava/util/HashMap;

    .line 64
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 66
    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 69
    iput-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mLockSettingsStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 71
    const/4 v2, 0x0

    .line 72
    iput-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mMaintenanceModeCallback:Ljava/util/function/Consumer;

    .line 74
    new-instance v3, Lcom/android/server/locksettings/LockSettingsService$1;

    .line 76
    invoke-direct {v3, v0}, Lcom/android/server/locksettings/LockSettingsService$1;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    .line 79
    iput-object v3, v0, Lcom/android/server/locksettings/LockSettingsService;->mMaintenanceModeListener:Lcom/android/server/locksettings/LockSettingsService$1;

    .line 81
    new-instance v5, Lcom/android/server/locksettings/LockSettingsService$3;

    .line 83
    const/4 v3, 0x0

    .line 84
    invoke-direct {v5, v0, v3}, Lcom/android/server/locksettings/LockSettingsService$3;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    .line 87
    new-instance v4, Lcom/android/server/locksettings/LockSettingsService$4;

    .line 89
    invoke-direct {v4, v0}, Lcom/android/server/locksettings/LockSettingsService$4;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    .line 92
    iput-object v4, v0, Lcom/android/server/locksettings/LockSettingsService;->mCeStorageLockEventListener:Lcom/android/server/locksettings/LockSettingsService$4;

    .line 94
    new-instance v4, Ljava/util/HashMap;

    .line 96
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 99
    iput-object v4, v0, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    .line 101
    const-string v4, "FMM"

    .line 103
    const-string v6, "CarrierLock"

    .line 105
    const-string v7, "RmmLock"

    .line 107
    const-string v8, "KnoxGuard"

    .line 109
    filled-new-array {v4, v6, v7, v8}, [Ljava/lang/String;

    .line 112
    move-result-object v4

    .line 113
    iput-object v4, v0, Lcom/android/server/locksettings/LockSettingsService;->RemoteLockType:[Ljava/lang/String;

    .line 115
    new-instance v4, Lcom/android/server/locksettings/LockSettingsService$9;

    .line 117
    invoke-direct {v4, v0, v3}, Lcom/android/server/locksettings/LockSettingsService$9;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    .line 120
    iput-object v4, v0, Lcom/android/server/locksettings/LockSettingsService;->mResetDebugLevel:Lcom/android/server/locksettings/LockSettingsService$9;

    .line 122
    new-instance v3, Lcom/android/server/locksettings/LockSettingsService$9;

    .line 124
    const/4 v11, 0x1

    .line 125
    invoke-direct {v3, v0, v11}, Lcom/android/server/locksettings/LockSettingsService$9;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    .line 128
    iput-object v3, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpBackup:Lcom/android/server/locksettings/LockSettingsService$9;

    .line 130
    new-instance v3, Lcom/android/server/locksettings/LockSettingsService$3;

    .line 132
    invoke-direct {v3, v0, v11}, Lcom/android/server/locksettings/LockSettingsService$3;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    .line 135
    new-instance v4, Landroid/util/SparseArray;

    .line 137
    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 140
    iput-object v4, v0, Lcom/android/server/locksettings/LockSettingsService;->mPendingVerifiedResults:Landroid/util/SparseArray;

    .line 142
    iput-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 144
    iget-object v12, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    .line 146
    iput-object v12, v0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 148
    :try_start_0
    sget-object v4, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->PROTECTOR_SECRET_PERSONALIZATION:[B

    .line 150
    const-string v4, "AndroidKeyStore"

    .line 152
    invoke-static {v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    .line 155
    move-result-object v13

    .line 156
    new-instance v4, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;

    .line 158
    const/16 v6, 0x67

    .line 160
    invoke-direct {v4, v6}, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;-><init>(I)V

    .line 163
    invoke-virtual {v13, v4}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 166
    iput-object v13, v0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Ljava/security/KeyStore;

    .line 168
    invoke-static {}, Landroid/security/KeyStoreAuthorization;->getInstance()Landroid/security/KeyStoreAuthorization;

    .line 171
    move-result-object v4

    .line 172
    iput-object v4, v0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

    .line 174
    iget-object v4, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    .line 176
    const-class v6, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 178
    monitor-enter v6

    .line 179
    :try_start_1
    sget-object v7, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mInstance:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 181
    if-nez v7, :cond_1

    .line 183
    new-instance v7, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    .line 185
    const-string/jumbo v8, "recoverablekeystore.db"

    .line 188
    const/4 v9, 0x7

    .line 189
    invoke-direct {v7, v4, v8, v2, v9}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 192
    invoke-virtual {v7, v11}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 195
    const-wide/16 v8, 0x1e

    .line 197
    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteOpenHelper;->setIdleConnectionTimeout(J)V

    .line 200
    new-instance v8, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 202
    invoke-direct {v8, v7}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;-><init>(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;)V

    .line 205
    const-string/jumbo v7, "settings_enable_lockscreen_transfer_api"

    .line 208
    invoke-static {v4, v7}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    .line 211
    move-result v7

    .line 212
    if-eqz v7, :cond_0

    .line 214
    new-instance v7, Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage;

    .line 216
    invoke-direct {v7}, Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    move-object/from16 v25, v7

    .line 221
    goto :goto_0

    .line 222
    :catchall_0
    move-exception v0

    .line 223
    goto/16 :goto_5

    .line 225
    :cond_0
    move-object/from16 v25, v2

    .line 227
    :goto_0
    :try_start_2
    invoke-static {v4, v8}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getInstance(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;)Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    .line 230
    move-result-object v21

    .line 231
    invoke-static {}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->getInstance()Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    .line 234
    move-result-object v7
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 235
    :try_start_3
    new-instance v9, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    .line 237
    new-instance v10, Ljava/io/File;

    .line 239
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 242
    move-result-object v14

    .line 243
    const-string/jumbo v15, "system"

    .line 246
    invoke-direct {v10, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 249
    invoke-direct {v9, v10}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;-><init>(Ljava/io/File;)V

    .line 252
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 255
    move-result-object v10

    .line 256
    new-instance v15, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;

    .line 258
    invoke-static {v10}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 261
    move-result-object v10

    .line 262
    invoke-direct {v15, v9, v8, v10, v7}, Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;-><init>(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Landroid/os/UserManager;Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;)V

    .line 265
    new-instance v10, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 267
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 270
    move-result-object v4

    .line 271
    new-instance v17, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;

    .line 273
    invoke-direct/range {v17 .. v17}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;-><init>()V

    .line 276
    invoke-static {v11}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    .line 279
    move-result-object v18

    .line 280
    new-instance v14, Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

    .line 282
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 285
    new-instance v2, Landroid/util/SparseArray;

    .line 287
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 290
    iput-object v2, v14, Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;->mAgentIntents:Landroid/util/SparseArray;

    .line 292
    new-instance v2, Landroid/util/ArraySet;

    .line 294
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 297
    iput-object v2, v14, Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;->mAgentsWithPendingSnapshots:Landroid/util/ArraySet;

    .line 299
    new-instance v23, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 301
    invoke-direct/range {v23 .. v23}, Ljava/lang/Object;-><init>()V

    .line 304
    move-object v2, v14

    .line 305
    move-object v14, v10

    .line 306
    move-object/from16 v24, v15

    .line 308
    move-object v15, v4

    .line 309
    move-object/from16 v16, v8

    .line 311
    move-object/from16 v19, v9

    .line 313
    move-object/from16 v20, v2

    .line 315
    move-object/from16 v22, v7

    .line 317
    invoke-direct/range {v14 .. v25}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;-><init>(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;Ljava/util/concurrent/ScheduledExecutorService;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;Lcom/android/server/locksettings/recoverablekeystore/storage/CleanupManager;Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage;)V

    .line 320
    sput-object v10, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mInstance:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 322
    goto :goto_3

    .line 323
    :catch_0
    move-exception v0

    .line 324
    goto :goto_1

    .line 325
    :catch_1
    move-exception v0

    .line 326
    goto :goto_2

    .line 327
    :goto_1
    new-instance v1, Landroid/os/ServiceSpecificException;

    .line 329
    invoke-virtual {v0}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    .line 332
    move-result-object v0

    .line 333
    const/16 v2, 0x16

    .line 335
    invoke-direct {v1, v2, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 338
    throw v1

    .line 339
    :goto_2
    new-instance v1, Ljava/lang/RuntimeException;

    .line 341
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 344
    throw v1

    .line 345
    :cond_1
    :goto_3
    sget-object v2, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mInstance:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 347
    monitor-exit v6

    .line 348
    iput-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 350
    iget-object v2, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 352
    const/16 v14, 0xa

    .line 354
    if-nez v2, :cond_2

    .line 356
    new-instance v2, Lcom/android/server/ServiceThread;

    .line 358
    const-string v4, "LockSettingsService"

    .line 360
    invoke-direct {v2, v14, v4, v11}, Lcom/android/server/ServiceThread;-><init>(ILjava/lang/String;Z)V

    .line 363
    iput-object v2, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 365
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 368
    :cond_2
    iget-object v2, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 370
    iget-object v4, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mHandler:Landroid/os/Handler;

    .line 372
    if-nez v4, :cond_3

    .line 374
    new-instance v4, Landroid/os/Handler;

    .line 376
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 379
    move-result-object v2

    .line 380
    invoke-direct {v4, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 383
    iput-object v4, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mHandler:Landroid/os/Handler;

    .line 385
    :cond_3
    iget-object v2, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mHandler:Landroid/os/Handler;

    .line 387
    iput-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 389
    new-instance v2, Lcom/android/server/locksettings/LockSettingsStrongAuth;

    .line 391
    iget-object v4, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    .line 393
    new-instance v6, Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;

    .line 395
    invoke-direct {v6}, Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;-><init>()V

    .line 398
    invoke-direct {v2, v4, v6}, Lcom/android/server/locksettings/LockSettingsStrongAuth;-><init>(Landroid/content/Context;Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;)V

    .line 401
    iput-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    .line 403
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 406
    move-result-object v4

    .line 407
    iput-object v4, v0, Lcom/android/server/locksettings/LockSettingsService;->mActivityManager:Landroid/app/IActivityManager;

    .line 409
    new-instance v7, Landroid/content/IntentFilter;

    .line 411
    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 414
    const-string v4, "android.intent.action.USER_ADDED"

    .line 416
    invoke-virtual {v7, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 419
    const-string v4, "android.intent.action.USER_STARTING"

    .line 421
    invoke-virtual {v7, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 424
    const-string v4, "android.intent.action.LOCALE_CHANGED"

    .line 426
    invoke-virtual {v7, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 429
    iget-object v4, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    .line 431
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 433
    const/4 v10, 0x4

    .line 434
    const/4 v8, 0x0

    .line 435
    const/4 v9, 0x0

    .line 436
    invoke-virtual/range {v4 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 439
    new-instance v4, Lcom/android/server/locksettings/LockSettingsStorage;

    .line 441
    iget-object v5, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    .line 443
    invoke-direct {v4, v5}, Lcom/android/server/locksettings/LockSettingsStorage;-><init>(Landroid/content/Context;)V

    .line 446
    new-instance v5, Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 448
    invoke-direct {v5, v4}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;-><init>(Ljava/lang/Object;)V

    .line 451
    iput-object v5, v4, Lcom/android/server/locksettings/LockSettingsStorage;->mCallback:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 453
    iget-object v6, v4, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    .line 455
    iput-object v5, v6, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->mCallback:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 457
    iput-object v4, v0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 459
    iget-object v5, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    .line 461
    const-string/jumbo v6, "notification"

    .line 464
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 467
    move-result-object v5

    .line 468
    check-cast v5, Landroid/app/NotificationManager;

    .line 470
    iput-object v5, v0, Lcom/android/server/locksettings/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 472
    iget-object v5, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    .line 474
    const-string/jumbo v6, "user"

    .line 477
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 480
    move-result-object v5

    .line 481
    check-cast v5, Landroid/os/UserManager;

    .line 483
    iput-object v5, v0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 485
    const-string/jumbo v5, "mount"

    .line 488
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 491
    move-result-object v5

    .line 492
    if-eqz v5, :cond_4

    .line 494
    invoke-static {v5}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    .line 497
    move-result-object v5

    .line 498
    goto :goto_4

    .line 499
    :cond_4
    const/4 v5, 0x0

    .line 500
    :goto_4
    iput-object v5, v0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    .line 502
    const-class v5, Landroid/os/storage/StorageManagerInternal;

    .line 504
    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 507
    move-result-object v5

    .line 508
    check-cast v5, Landroid/os/storage/StorageManagerInternal;

    .line 510
    iput-object v5, v0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManagerInternal:Landroid/os/storage/StorageManagerInternal;

    .line 512
    new-instance v5, Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    .line 514
    iget-object v6, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    .line 516
    invoke-direct {v5, v6}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;-><init>(Landroid/content/Context;)V

    .line 519
    iput-object v5, v0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuthTracker:Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    .line 521
    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStub()Landroid/app/trust/IStrongAuthTracker$Stub;

    .line 524
    move-result-object v5

    .line 525
    iget-object v2, v2, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    .line 527
    const/4 v6, 0x2

    .line 528
    invoke-virtual {v2, v6, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 531
    move-result-object v2

    .line 532
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 535
    new-instance v2, Landroid/util/LongSparseArray;

    .line 537
    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    .line 540
    iput-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    .line 542
    new-instance v2, Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 544
    iget-object v5, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    .line 546
    const-string/jumbo v7, "user"

    .line 549
    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 552
    move-result-object v7

    .line 553
    check-cast v7, Landroid/os/UserManager;

    .line 555
    new-instance v8, Lcom/android/server/locksettings/PasswordSlotManager;

    .line 557
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 560
    invoke-direct {v2, v5, v4, v7, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;-><init>(Landroid/content/Context;Lcom/android/server/locksettings/LockSettingsStorage;Landroid/os/UserManager;Lcom/android/server/locksettings/PasswordSlotManager;)V

    .line 563
    iput-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 565
    new-instance v5, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;

    .line 567
    invoke-direct {v5, v13}, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;-><init>(Ljava/security/KeyStore;)V

    .line 570
    iput-object v5, v0, Lcom/android/server/locksettings/LockSettingsService;->mUnifiedProfilePasswordCache:Lcom/android/server/locksettings/UnifiedProfilePasswordCache;

    .line 572
    new-instance v5, Lcom/android/server/locksettings/BiometricDeferredQueue;

    .line 574
    invoke-direct {v5, v2}, Lcom/android/server/locksettings/BiometricDeferredQueue;-><init>(Lcom/android/server/locksettings/SyntheticPasswordManager;)V

    .line 577
    iput-object v5, v0, Lcom/android/server/locksettings/LockSettingsService;->mBiometricDeferredQueue:Lcom/android/server/locksettings/BiometricDeferredQueue;

    .line 579
    new-instance v2, Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 581
    invoke-direct {v2, v0}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;-><init>(Ljava/lang/Object;)V

    .line 584
    new-instance v5, Lcom/android/server/locksettings/RebootEscrowManager;

    .line 586
    iget-object v7, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    .line 588
    iget-object v8, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 590
    if-nez v8, :cond_5

    .line 592
    new-instance v8, Lcom/android/server/ServiceThread;

    .line 594
    const-string v9, "LockSettingsService"

    .line 596
    invoke-direct {v8, v14, v9, v11}, Lcom/android/server/ServiceThread;-><init>(ILjava/lang/String;Z)V

    .line 599
    iput-object v8, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 601
    invoke-virtual {v8}, Landroid/os/HandlerThread;->start()V

    .line 604
    :cond_5
    iget-object v8, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 606
    iget-object v9, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mHandler:Landroid/os/Handler;

    .line 608
    if-nez v9, :cond_6

    .line 610
    new-instance v9, Landroid/os/Handler;

    .line 612
    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 615
    move-result-object v8

    .line 616
    invoke-direct {v9, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 619
    iput-object v9, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mHandler:Landroid/os/Handler;

    .line 621
    :cond_6
    iget-object v8, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mHandler:Landroid/os/Handler;

    .line 623
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    .line 626
    move-result-object v9

    .line 627
    new-instance v10, Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    .line 629
    invoke-direct {v10, v7, v4, v9}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;-><init>(Landroid/content/Context;Lcom/android/server/locksettings/LockSettingsStorage;Lcom/android/server/pm/UserManagerInternal;)V

    .line 632
    invoke-direct {v5, v10, v2, v4, v8}, Lcom/android/server/locksettings/RebootEscrowManager;-><init>(Lcom/android/server/locksettings/RebootEscrowManager$Injector;Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;Lcom/android/server/locksettings/LockSettingsStorage;Landroid/os/Handler;)V

    .line 635
    iput-object v5, v0, Lcom/android/server/locksettings/LockSettingsService;->mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

    .line 637
    sget-boolean v2, Lcom/android/server/locksettings/LockSettingsService;->DEBUG_DUMP:Z

    .line 639
    if-eqz v2, :cond_7

    .line 641
    new-instance v2, Landroid/content/IntentFilter;

    .line 643
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 646
    const-string v4, "android.intent.action.DUMP_SYNTHETIC_PASSWORD"

    .line 648
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 651
    const-string v4, "android.intent.action.DUMP_DUALDAR_PASSWORD"

    .line 653
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 656
    const-string v4, "android.intent.action.CHECK_DUALDAR_POLICY_PACKAGES"

    .line 658
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 661
    iget-object v1, v1, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    .line 663
    invoke-virtual {v1, v3, v2, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 666
    :cond_7
    new-instance v1, Lcom/android/server/locksettings/SyntheticPasswordDump;

    .line 668
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 671
    iput-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpDump:Lcom/android/server/locksettings/SyntheticPasswordDump;

    .line 673
    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;

    .line 675
    invoke-direct {v1, v0, v0}, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;-><init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/server/locksettings/LockSettingsService;)V

    .line 678
    iput-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;

    .line 680
    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 682
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 685
    iput-object v0, v1, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    .line 687
    iput-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mSdpLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 689
    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$DualDarLockSettings;

    .line 691
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 694
    iput-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$DualDarLockSettings;

    .line 696
    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 698
    invoke-direct {v1, v0}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;-><init>(Ljava/lang/Object;)V

    .line 701
    iput-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mDarVirtualLock:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 703
    new-instance v1, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    .line 705
    invoke-direct {v1, v12}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;-><init>(Landroid/content/Context;)V

    .line 708
    iput-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    .line 710
    const-class v1, Lcom/android/internal/widget/LockSettingsInternal;

    .line 712
    new-instance v2, Lcom/android/server/locksettings/LockSettingsService$LocalService;

    .line 714
    invoke-direct {v2, v0}, Lcom/android/server/locksettings/LockSettingsService$LocalService;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    .line 717
    invoke-static {v1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 720
    return-void

    .line 721
    :goto_5
    monitor-exit v6

    .line 722
    throw v0

    .line 723
    :catch_2
    move-exception v0

    .line 724
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 726
    const-string v2, "Cannot load keystore"

    .line 728
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 731
    throw v1
.end method

.method public static isEnablePrevCredential()Z
    .locals 2

    .line 1
    const-string/jumbo v0, "ro.organization_owned"

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 11
    const-string/jumbo v1, "true"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 24
    :goto_1
    return v0
.end method

.method public static scheduleGc()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda2;

    .line 7
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 10
    const-wide/16 v2, 0x7d0

    .line 12
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    return-void
.end method

.method public static timestampToString(J)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 3
    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    .line 6
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 9
    new-instance v1, Ljava/util/Date;

    .line 11
    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 14
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method


# virtual methods
.method public final UnlockSecureFolderIfAutoDataDecryption(Landroid/content/pm/UserInfo;)V
    .locals 6

    .line 1
    const-string/jumbo v0, "dar"

    .line 4
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 16
    move-result-object v1

    .line 17
    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    .line 19
    const-string v3, "automatic_data_decryption"

    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 25
    move-result v1

    .line 26
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 28
    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    .line 30
    invoke-virtual {v2, v3}, Landroid/os/UserManager;->isUserRunning(I)Z

    .line 33
    move-result v2

    .line 34
    const/4 v3, 0x0

    .line 35
    if-nez v2, :cond_1

    .line 37
    new-instance p0, Ljava/lang/StringBuilder;

    .line 39
    const-string v0, "Secure folder user "

    .line 41
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    const-string p1, " is not running yet when on unlock system user"

    .line 49
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p0

    .line 56
    invoke-static {v3, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    goto :goto_3

    .line 60
    :cond_1
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 62
    iget v5, p1, Landroid/content/pm/UserInfo;->id:I

    .line 64
    invoke-virtual {v2, v5}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_4

    .line 70
    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    .line 72
    invoke-virtual {p0, v2}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_2

    .line 78
    const/4 v2, 0x1

    .line 79
    if-ne v1, v2, :cond_4

    .line 81
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 83
    const-string v2, "Unlock secure folder user "

    .line 85
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object v1

    .line 97
    invoke-static {v3, v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 103
    move-result-wide v1

    .line 104
    :try_start_0
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 106
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 112
    move-result-object v3

    .line 113
    check-cast v3, Lcom/android/server/knox/dar/DarManagerService;

    .line 115
    if-eqz v3, :cond_3

    .line 117
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 125
    move-result-object p0

    .line 126
    check-cast p0, Lcom/android/server/knox/dar/DarManagerService;

    .line 128
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 130
    invoke-virtual {p0}, Lcom/android/server/knox/dar/DarManagerService;->checkSystemPermission()V

    .line 133
    iget-object v0, p0, Lcom/android/server/knox/dar/DarManagerService;->mDarHandler:Lcom/android/server/knox/dar/DarManagerService$DarHandler;

    .line 135
    const/16 v3, 0x96

    .line 137
    invoke-virtual {v0, v3, p1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 140
    move-result-object p1

    .line 141
    iget-object p0, p0, Lcom/android/server/knox/dar/DarManagerService;->mDarHandler:Lcom/android/server/knox/dar/DarManagerService$DarHandler;

    .line 143
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    goto :goto_0

    .line 147
    :catchall_0
    move-exception p0

    .line 148
    goto :goto_2

    .line 149
    :catch_0
    move-exception p0

    .line 150
    goto :goto_1

    .line 151
    :cond_3
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 154
    goto :goto_3

    .line 155
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    goto :goto_0

    .line 159
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 162
    throw p0

    .line 163
    :cond_4
    :goto_3
    return-void
.end method

.method public final addEscrowToken([BIILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "add escrow token for user "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 18
    const-string/jumbo v0, "token"

    .line 21
    const-string/jumbo v1, "userId"

    .line 24
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v2

    .line 28
    filled-new-array {v0, p1, v1, v2}, [Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 35
    const-string v0, "LockSettingsService"

    .line 37
    const-string v1, "Adding escrow token for user %d"

    .line 39
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object v2

    .line 43
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 46
    move-result-object v2

    .line 47
    invoke-static {v0, v1, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 52
    monitor-enter v0

    .line 53
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_0

    .line 59
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 62
    move-result-wide v4

    .line 63
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 65
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 68
    move-result-object v3

    .line 69
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    .line 72
    move-result-object v6

    .line 73
    const/4 v8, 0x0

    .line 74
    move v7, p3

    .line 75
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    .line 78
    move-result-object v1

    .line 79
    iget-object v1, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 81
    const-string v2, "addEscrowToken: saveEscrowDataIfNeededLocked"

    .line 83
    invoke-static {v2}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 86
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;

    .line 88
    invoke-virtual {v2, p3}, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->saveEscrowDataIfNeededLocked(I)V

    .line 91
    goto :goto_0

    .line 92
    :catchall_0
    move-exception p0

    .line 93
    goto :goto_2

    .line 94
    :cond_0
    const/4 v1, 0x0

    .line 95
    :goto_0
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->disableEscrowTokenOnNonManagedDevicesIfNeeded(I)V

    .line 98
    const-string v2, "addEscrowToken: restoreEscrowDataIfNeededLocked"

    .line 100
    invoke-static {v2}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 103
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;

    .line 105
    invoke-virtual {v2, p3}, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->restoreEscrowDataIfNeededLocked(I)V

    .line 108
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 110
    invoke-virtual {v2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_2

    .line 116
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 118
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->addPendingToken([BIILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    .line 121
    move-result-wide p1

    .line 122
    if-eqz v1, :cond_1

    .line 124
    const-string p4, "LockSettingsService"

    .line 126
    const-string v2, "Immediately activating escrow token %016x"

    .line 128
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 131
    move-result-object v3

    .line 132
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 135
    move-result-object v3

    .line 136
    invoke-static {p4, v2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 141
    invoke-virtual {p0, p3, p1, p2, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createTokenBasedProtector(IJLcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)Z

    .line 144
    goto :goto_1

    .line 145
    :cond_1
    const-string p0, "LockSettingsService"

    .line 147
    const-string p3, "Escrow token %016x will be activated when user is unlocked"

    .line 149
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 152
    move-result-object p4

    .line 153
    filled-new-array {p4}, [Ljava/lang/Object;

    .line 156
    move-result-object p4

    .line 157
    invoke-static {p0, p3, p4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    :goto_1
    monitor-exit v0

    .line 161
    return-wide p1

    .line 162
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 164
    const-string p1, "Escrow token is disabled on the current user"

    .line 166
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 169
    throw p0

    .line 170
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    throw p0
.end method

.method public final addWeakEscrowToken([BILcom/android/internal/widget/IWeakEscrowTokenActivatedListener;)J
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkManageWeakEscrowTokenMethodUsage()V

    .line 4
    const-string v0, "Listener can not be null."

    .line 6
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda1;

    .line 11
    invoke-direct {v0, p3}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/IWeakEscrowTokenActivatedListener;)V

    .line 14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 17
    move-result-wide v1

    .line 18
    const/4 p3, 0x1

    .line 19
    :try_start_0
    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/android/server/locksettings/LockSettingsService;->addEscrowToken([BIILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    .line 22
    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 26
    return-wide p0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    throw p0
.end method

.method public final applyRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)Z
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 3
    move/from16 v0, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    iget v3, v2, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    .line 9
    iget-boolean v4, v2, Lcom/android/internal/widget/RemoteLockInfo;->lockState:Z

    .line 11
    iget-object v5, v2, Lcom/android/internal/widget/RemoteLockInfo;->message:Ljava/lang/CharSequence;

    .line 13
    check-cast v5, Ljava/lang/String;

    .line 15
    iget-object v6, v2, Lcom/android/internal/widget/RemoteLockInfo;->phoneNumber:Ljava/lang/CharSequence;

    .line 17
    check-cast v6, Ljava/lang/String;

    .line 19
    iget-boolean v7, v2, Lcom/android/internal/widget/RemoteLockInfo;->enableEmergencyCall:Z

    .line 21
    iget-object v8, v2, Lcom/android/internal/widget/RemoteLockInfo;->clientName:Ljava/lang/CharSequence;

    .line 23
    check-cast v8, Ljava/lang/String;

    .line 25
    iget-object v9, v2, Lcom/android/internal/widget/RemoteLockInfo;->emailAddress:Ljava/lang/CharSequence;

    .line 27
    check-cast v9, Ljava/lang/String;

    .line 29
    iget v10, v2, Lcom/android/internal/widget/RemoteLockInfo;->allowFailCount:I

    .line 31
    int-to-long v10, v10

    .line 32
    iget-wide v12, v2, Lcom/android/internal/widget/RemoteLockInfo;->lockTimeOut:J

    .line 34
    iget v14, v2, Lcom/android/internal/widget/RemoteLockInfo;->permanentBlockCount:I

    .line 36
    int-to-long v14, v14

    .line 37
    move-wide/from16 v16, v14

    .line 39
    iget-boolean v14, v2, Lcom/android/internal/widget/RemoteLockInfo;->skipPinContainer:Z

    .line 41
    iget-boolean v15, v2, Lcom/android/internal/widget/RemoteLockInfo;->skipSupportContainer:Z

    .line 43
    move/from16 v18, v15

    .line 45
    iget-object v15, v2, Lcom/android/internal/widget/RemoteLockInfo;->bundle:Landroid/os/Bundle;

    .line 47
    const/16 v19, 0x0

    .line 49
    if-eqz v15, :cond_2

    .line 51
    const-string/jumbo v2, "customer_app_name"

    .line 54
    invoke-virtual {v15, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 57
    move-result-object v20

    .line 58
    if-eqz v20, :cond_0

    .line 60
    invoke-virtual {v15, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Ljava/lang/String;

    .line 66
    move-object/from16 v20, v2

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    move-object/from16 v20, v19

    .line 71
    :goto_0
    const-string/jumbo v2, "customer_package_name"

    .line 74
    invoke-virtual {v15, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 77
    move-result-object v21

    .line 78
    if-eqz v21, :cond_1

    .line 80
    invoke-virtual {v15, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 83
    move-result-object v2

    .line 84
    move-object/from16 v19, v2

    .line 86
    check-cast v19, Ljava/lang/String;

    .line 88
    :cond_1
    move-object/from16 v2, v20

    .line 90
    goto :goto_1

    .line 91
    :cond_2
    move-object/from16 v2, v19

    .line 93
    :goto_1
    const-string/jumbo v15, "locked"

    .line 96
    move-object/from16 v20, v2

    .line 98
    if-eqz v4, :cond_4

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    .line 102
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    .line 120
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    const-string/jumbo v4, "message"

    .line 126
    invoke-static {v3, v2, v4}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {v1, v2, v5, v0}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    .line 135
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    const-string/jumbo v4, "phonenumber"

    .line 144
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v1, v2, v6, v0}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    .line 156
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    const-string/jumbo v4, "enableemergencycall"

    .line 162
    invoke-static {v3, v2, v4}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    move-result-object v2

    .line 166
    invoke-virtual {v1, v2, v7, v0}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    .line 171
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    const-string/jumbo v4, "clientname"

    .line 180
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    move-result-object v2

    .line 187
    invoke-virtual {v1, v2, v8, v0}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    .line 192
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    const-string/jumbo v4, "emailaddress"

    .line 198
    invoke-static {v3, v2, v4}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    move-result-object v2

    .line 202
    invoke-virtual {v1, v2, v9, v0}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    .line 207
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    const-string v4, "allowfailcount"

    .line 215
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    move-result-object v2

    .line 222
    invoke-virtual {v1, v2, v10, v11, v0}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    .line 227
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    const-string/jumbo v4, "locktime"

    .line 233
    invoke-static {v3, v2, v4}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 236
    move-result-object v2

    .line 237
    invoke-virtual {v1, v2, v12, v13, v0}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    .line 242
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    const-string/jumbo v4, "permanentblockcount"

    .line 248
    invoke-static {v3, v2, v4}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 251
    move-result-object v2

    .line 252
    move-wide/from16 v4, v16

    .line 254
    invoke-virtual {v1, v2, v4, v5, v0}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    .line 259
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    const-string/jumbo v4, "skippin"

    .line 265
    invoke-static {v3, v2, v4}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 268
    move-result-object v2

    .line 269
    invoke-virtual {v1, v2, v14, v0}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    .line 274
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 280
    const-string/jumbo v4, "skipsupport"

    .line 283
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    move-result-object v2

    .line 290
    move/from16 v4, v18

    .line 292
    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 295
    move-object/from16 v2, p2

    .line 297
    iget-object v4, v2, Lcom/android/internal/widget/RemoteLockInfo;->bundle:Landroid/os/Bundle;

    .line 299
    if-eqz v4, :cond_3

    .line 301
    new-instance v4, Ljava/lang/StringBuilder;

    .line 303
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 309
    const-string v5, "appname"

    .line 311
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    move-result-object v4

    .line 318
    move-object/from16 v5, v20

    .line 320
    invoke-virtual {v1, v4, v5, v0}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 323
    new-instance v4, Ljava/lang/StringBuilder;

    .line 325
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    const-string/jumbo v5, "packagename"

    .line 331
    invoke-static {v3, v4, v5}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 334
    move-result-object v4

    .line 335
    move-object/from16 v5, v19

    .line 337
    invoke-virtual {v1, v4, v5, v0}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 340
    :cond_3
    const/4 v5, 0x0

    .line 341
    goto :goto_2

    .line 342
    :cond_4
    move-object/from16 v2, p2

    .line 344
    new-instance v4, Ljava/lang/StringBuilder;

    .line 346
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 349
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 358
    move-result-object v4

    .line 359
    const/4 v5, 0x0

    .line 360
    invoke-virtual {v1, v4, v5, v0}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 363
    new-instance v4, Ljava/lang/StringBuilder;

    .line 365
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 368
    const-string/jumbo v6, "remotelockscreen.lockoutdeadline"

    .line 371
    invoke-static {v3, v4, v6}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 374
    move-result-object v4

    .line 375
    const-wide/16 v6, 0x0

    .line 377
    invoke-virtual {v1, v4, v6, v7, v0}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 380
    new-instance v4, Ljava/lang/StringBuilder;

    .line 382
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    const-string/jumbo v8, "remotelockscreen.failedunlockcount"

    .line 388
    invoke-static {v3, v4, v8}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 391
    move-result-object v4

    .line 392
    invoke-virtual {v1, v4, v6, v7, v0}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 395
    :goto_2
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    .line 397
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 400
    move-result-object v3

    .line 401
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    move-result-object v0

    .line 405
    check-cast v0, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    .line 407
    const-string/jumbo v3, "failed changeRemoteLockState callback!"

    .line 410
    const-string v4, "LockSettingsService"

    .line 412
    if-eqz v0, :cond_5

    .line 414
    :try_start_0
    invoke-interface {v0, v2}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    goto :goto_3

    .line 418
    :catch_0
    move-exception v0

    .line 419
    move-object v6, v0

    .line 420
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    .line 426
    move v0, v5

    .line 427
    goto :goto_4

    .line 428
    :cond_5
    :goto_3
    const/4 v0, 0x1

    .line 429
    :goto_4
    iget-object v6, v1, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    .line 431
    const/4 v7, 0x4

    .line 432
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 435
    move-result-object v7

    .line 436
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    move-result-object v6

    .line 440
    check-cast v6, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    .line 442
    if-eqz v6, :cond_6

    .line 444
    :try_start_1
    invoke-interface {v6, v2}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 447
    move v5, v0

    .line 448
    goto :goto_5

    .line 449
    :catch_1
    move-exception v0

    .line 450
    move-object v6, v0

    .line 451
    const-string v0, "!@ failed changeRemoteLockState callback!"

    .line 453
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    .line 459
    goto :goto_5

    .line 460
    :cond_6
    const-string v0, "!@ NULL Callback for changeRemoteLockState!"

    .line 462
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :goto_5
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    .line 467
    const/4 v1, 0x5

    .line 468
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 471
    move-result-object v1

    .line 472
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    move-result-object v0

    .line 476
    check-cast v0, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    .line 478
    if-eqz v0, :cond_7

    .line 480
    :try_start_2
    invoke-interface {v0, v2}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 483
    goto :goto_6

    .line 484
    :catch_2
    move-exception v0

    .line 485
    move-object v1, v0

    .line 486
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 492
    :cond_7
    :goto_6
    return v5
.end method

.method public final callToAuthSecretIfNeeded(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecretService:Landroid/hardware/authsecret/IAuthSecret;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_1

    .line 21
    return-void

    .line 22
    :cond_1
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_3

    .line 33
    if-eqz p1, :cond_2

    .line 35
    return-void

    .line 36
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    sget-object p3, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_AUTHSECRET_KEY:[B

    .line 41
    invoke-virtual {p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveSubkey([B)[B

    .line 44
    move-result-object p2

    .line 45
    goto/16 :goto_2

    .line 47
    :cond_3
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 49
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 55
    move-result-object v1

    .line 56
    const v2, 0x11101be

    .line 59
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_a

    .line 65
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isFull()Z

    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_4

    .line 71
    goto/16 :goto_4

    .line 73
    :cond_4
    const/4 v1, 0x0

    .line 74
    if-eqz p3, :cond_7

    .line 76
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isMain()Z

    .line 79
    move-result p3

    .line 80
    if-eqz p3, :cond_5

    .line 82
    const-string p3, "LockSettingsService"

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    const-string v2, "Generating new vendor auth secret and storing for user: "

    .line 88
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object v0

    .line 98
    invoke-static {p3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/16 p3, 0x20

    .line 103
    invoke-static {p3}, Lcom/android/server/locksettings/SecureRandomUtils;->randomBytes(I)[B

    .line 106
    move-result-object p3

    .line 107
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHeadlessAuthSecretLock:Ljava/lang/Object;

    .line 109
    monitor-enter v0

    .line 110
    :try_start_0
    iput-object p3, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecret:[B

    .line 112
    monitor-exit v0

    .line 113
    goto :goto_0

    .line 114
    :catchall_0
    move-exception p0

    .line 115
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    throw p0

    .line 117
    :cond_5
    iget-object p3, p0, Lcom/android/server/locksettings/LockSettingsService;->mHeadlessAuthSecretLock:Ljava/lang/Object;

    .line 119
    monitor-enter p3

    .line 120
    :try_start_1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecret:[B

    .line 122
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 123
    if-nez v0, :cond_6

    .line 125
    const-string p0, "LockSettingsService"

    .line 127
    const-string p2, "Creating non-main user "

    .line 129
    const-string p3, " but vendor auth secret is not in memory"

    .line 131
    invoke-static {p1, p2, p3, p0}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void

    .line 135
    :cond_6
    move-object p3, v0

    .line 136
    :goto_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 138
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    sget-object v2, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_AUTHSECRET_ENCRYPTION_KEY:[B

    .line 146
    invoke-virtual {p2, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveSubkey([B)[B

    .line 149
    move-result-object p2

    .line 150
    new-array v1, v1, [B

    .line 152
    invoke-static {p2, v1, p3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt([B[B[B)[B

    .line 155
    move-result-object v4

    .line 156
    const-string/jumbo v3, "vendor_auth_secret"

    .line 159
    const-wide/16 v5, 0x0

    .line 161
    move-object v2, v0

    .line 162
    move v7, p1

    .line 163
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 166
    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->syncState(I)V

    .line 169
    move-object p2, p3

    .line 170
    goto :goto_2

    .line 171
    :catchall_1
    move-exception p0

    .line 172
    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 173
    throw p0

    .line 174
    :cond_7
    iget-object p3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 176
    iget-object p3, p3, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 178
    const-wide/16 v2, 0x0

    .line 180
    const-string/jumbo v0, "vendor_auth_secret"

    .line 183
    invoke-virtual {p3, p1, v0, v2, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->readSyntheticPasswordState(ILjava/lang/String;J)[B

    .line 186
    move-result-object p3

    .line 187
    if-nez p3, :cond_8

    .line 189
    const/4 p2, 0x0

    .line 190
    goto :goto_1

    .line 191
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_AUTHSECRET_ENCRYPTION_KEY:[B

    .line 196
    invoke-virtual {p2, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveSubkey([B)[B

    .line 199
    move-result-object p2

    .line 200
    new-array v0, v1, [B

    .line 202
    invoke-static {p2, v0, p3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    .line 205
    move-result-object p2

    .line 206
    :goto_1
    if-nez p2, :cond_9

    .line 208
    const-string p0, "LockSettingsService"

    .line 210
    const-string p2, "Unable to read vendor auth secret for user: "

    .line 212
    invoke-static {p1, p2, p0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void

    .line 216
    :cond_9
    iget-object p3, p0, Lcom/android/server/locksettings/LockSettingsService;->mHeadlessAuthSecretLock:Ljava/lang/Object;

    .line 218
    monitor-enter p3

    .line 219
    :try_start_3
    iput-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecret:[B

    .line 221
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 222
    :goto_2
    const-string p3, "LockSettingsService"

    .line 224
    const-string v0, "Sending vendor auth secret to IAuthSecret HAL as user: "

    .line 226
    invoke-static {p1, v0, p3}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 229
    :try_start_4
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecretService:Landroid/hardware/authsecret/IAuthSecret;

    .line 231
    invoke-interface {p0, p2}, Landroid/hardware/authsecret/IAuthSecret;->setPrimaryUserCredential([B)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 234
    goto :goto_3

    .line 235
    :catch_0
    move-exception p0

    .line 236
    const-string p1, "LockSettingsService"

    .line 238
    const-string p2, "Failed to send vendor auth secret to IAuthSecret HAL"

    .line 240
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    :goto_3
    return-void

    .line 244
    :catchall_2
    move-exception p0

    .line 245
    :try_start_5
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 246
    throw p0

    .line 247
    :cond_a
    :goto_4
    return-void
.end method

.method public final changeToken([BJ[BJI)Z
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-wide/from16 v7, p5

    .line 4
    move/from16 v9, p7

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    const-string v2, "Change token for user "

    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 23
    const-string/jumbo v1, "newToken"

    .line 26
    const-string/jumbo v2, "newHandle"

    .line 29
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 32
    move-result-object v3

    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    .line 35
    const-string v5, ", oldToken : "

    .line 37
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    move-object/from16 v6, p4

    .line 42
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    const-string v5, ", oldHandle : "

    .line 47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v4

    .line 57
    move-object v5, p1

    .line 58
    filled-new-array {v1, p1, v2, v3, v4}, [Ljava/lang/Object;

    .line 61
    move-result-object v1

    .line 62
    invoke-static {v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 65
    const/4 v10, 0x0

    .line 66
    const/4 v11, 0x0

    .line 67
    :try_start_0
    iget-object v12, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 69
    monitor-enter v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :try_start_1
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 72
    invoke-virtual {v1, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_4

    .line 78
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 80
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 83
    move-result-object v5

    .line 84
    move/from16 v2, p7

    .line 86
    move-wide/from16 v3, p5

    .line 88
    move-object/from16 v6, p4

    .line 90
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockTokenBasedProtector(IJLandroid/service/gatekeeper/IGateKeeperService;[B)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    .line 93
    move-result-object v1

    .line 94
    iget-object v1, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 96
    if-nez v1, :cond_0

    .line 98
    const-string v0, "Failed due to invalid token"

    .line 100
    invoke-static {v10, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    .line 105
    goto :goto_1

    .line 106
    :cond_0
    iget-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 108
    move-wide v3, p2

    .line 109
    invoke-virtual {v2, v9, v3, v4, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createTokenBasedProtector(IJLcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)Z

    .line 112
    move-result v11

    .line 113
    if-nez v11, :cond_1

    .line 115
    const-string v1, "Failed in new token activation"

    .line 117
    invoke-static {v10, v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_1
    if-eqz v11, :cond_2

    .line 122
    invoke-virtual {p0, v7, v8, v9}, Lcom/android/server/locksettings/LockSettingsService;->removeEscrowToken(JI)Z

    .line 125
    move-result v0

    .line 126
    if-nez v0, :cond_3

    .line 128
    :cond_2
    const-string v0, "Failed in old token elimination"

    .line 130
    invoke-static {v10, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_3
    :goto_0
    monitor-exit v12

    .line 134
    goto :goto_2

    .line 135
    :cond_4
    new-instance v0, Ljava/lang/SecurityException;

    .line 137
    const-string v1, "Excrow token is disabled for current user"

    .line 139
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 142
    throw v0

    .line 143
    :goto_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    const-string v1, "Unexpected exception while change token"

    .line 148
    invoke-static {v0, v10, v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->e(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 153
    const-string v1, "Final result of change token : "

    .line 155
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    move-result-object v0

    .line 165
    invoke-static {v10, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return v11
.end method

.method public final checkAppLockBackupPin(Ljava/lang/String;I)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 4
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p0, p2, v1}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash(I[B)[B

    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    const-string v3, "applockbackuppin.key"

    .line 21
    invoke-static {p2, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v2, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/io/File;)[B

    .line 28
    move-result-object v2

    .line 29
    if-eqz v2, :cond_0

    .line 31
    array-length v3, v2

    .line 32
    if-lez v3, :cond_0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v2, 0x0

    .line 36
    :goto_0
    if-nez v2, :cond_1

    .line 38
    const/4 p0, 0x1

    .line 39
    return p0

    .line 40
    :cond_1
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_2

    .line 46
    array-length v3, v2

    .line 47
    const/16 v4, 0x28

    .line 49
    if-ne v3, v4, :cond_2

    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash(I[B)[B

    .line 58
    move-result-object p0

    .line 59
    invoke-static {p0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 62
    move-result v1

    .line 63
    :cond_2
    return v1
.end method

.method public final checkAppLockFingerprintPassword(Ljava/lang/String;I)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 4
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p0, p2, v1}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash(I[B)[B

    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    const-string v3, "applockfingerprintpassword.key"

    .line 21
    invoke-static {p2, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v2, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/io/File;)[B

    .line 28
    move-result-object v2

    .line 29
    if-eqz v2, :cond_0

    .line 31
    array-length v3, v2

    .line 32
    if-lez v3, :cond_0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v2, 0x0

    .line 36
    :goto_0
    if-nez v2, :cond_1

    .line 38
    const/4 p0, 0x1

    .line 39
    return p0

    .line 40
    :cond_1
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_2

    .line 46
    array-length v3, v2

    .line 47
    const/16 v4, 0x28

    .line 49
    if-ne v3, v4, :cond_2

    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash(I[B)[B

    .line 58
    move-result-object p0

    .line 59
    invoke-static {p0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 62
    move-result v1

    .line 63
    :cond_2
    return v1
.end method

.method public final checkAppLockPassword(Ljava/lang/String;I)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 4
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p0, p2, v1}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash(I[B)[B

    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    const-string v3, "applockpassword.key"

    .line 21
    invoke-static {p2, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v2, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/io/File;)[B

    .line 28
    move-result-object v2

    .line 29
    if-eqz v2, :cond_0

    .line 31
    array-length v3, v2

    .line 32
    if-lez v3, :cond_0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v2, 0x0

    .line 36
    :goto_0
    if-nez v2, :cond_1

    .line 38
    const/4 p0, 0x1

    .line 39
    return p0

    .line 40
    :cond_1
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_2

    .line 46
    array-length v3, v2

    .line 47
    const/16 v4, 0x28

    .line 49
    if-ne v3, v4, :cond_2

    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash(I[B)[B

    .line 58
    move-result-object p0

    .line 59
    invoke-static {p0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 62
    move-result v1

    .line 63
    :cond_2
    return v1
.end method

.method public final checkAppLockPatternWithHash(Ljava/lang/String;I[B)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 4
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->byteArrayToPattern([B)Ljava/util/List;

    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToByteArray(Ljava/util/List;)[B

    .line 17
    move-result-object p1

    .line 18
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    const-string v0, "applockpattern.key"

    .line 25
    invoke-static {p2, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/io/File;)[B

    .line 32
    move-result-object p0

    .line 33
    if-eqz p0, :cond_0

    .line 35
    array-length p2, p0

    .line 36
    if-lez p2, :cond_0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 p0, 0x0

    .line 40
    :goto_0
    const/4 p2, 0x1

    .line 41
    if-nez p0, :cond_1

    .line 43
    return p2

    .line 44
    :cond_1
    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_3

    .line 50
    invoke-static {p3, p0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 53
    move-result p0

    .line 54
    if-eqz p0, :cond_2

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const/4 p2, 0x0

    .line 58
    :cond_3
    :goto_1
    return p2
.end method

.method public final checkAppLockPin(Ljava/lang/String;I)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 4
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p0, p2, v1}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash(I[B)[B

    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    const-string v3, "applockpin.key"

    .line 21
    invoke-static {p2, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v2, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/io/File;)[B

    .line 28
    move-result-object v2

    .line 29
    if-eqz v2, :cond_0

    .line 31
    array-length v3, v2

    .line 32
    if-lez v3, :cond_0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v2, 0x0

    .line 36
    :goto_0
    if-nez v2, :cond_1

    .line 38
    const/4 p0, 0x1

    .line 39
    return p0

    .line 40
    :cond_1
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_2

    .line 46
    array-length v3, v2

    .line 47
    const/16 v4, 0x28

    .line 49
    if-ne v3, v4, :cond_2

    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash(I[B)[B

    .line 58
    move-result-object p0

    .line 59
    invoke-static {p0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 62
    move-result v1

    .line 63
    :cond_2
    return v1
.end method

.method public final checkCarrierPassword([BI)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 4
    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash(I[B)[B

    .line 7
    move-result-object p1

    .line 8
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    const-string/jumbo v0, "sktpassword.key"

    .line 16
    invoke-static {p2, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/io/File;)[B

    .line 23
    move-result-object p0

    .line 24
    if-eqz p0, :cond_0

    .line 26
    array-length p2, p0

    .line 27
    if-lez p2, :cond_0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    :goto_0
    if-nez p0, :cond_1

    .line 33
    const/4 p0, 0x1

    .line 34
    return p0

    .line 35
    :cond_1
    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 38
    move-result p0

    .line 39
    return p0
.end method

.method public final checkCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    move-result-wide v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 12
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 19
    return-object p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 24
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 27
    throw p0
.end method

.method public final checkCredentialForDualDarDo(Lcom/android/internal/widget/LockscreenCredential;IILcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredentialForDualDarDo(Lcom/android/internal/widget/LockscreenCredential;IILcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 11
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 15
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 18
    return-object p0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 26
    throw p0
.end method

.method public final checkDatabaseReadPermission(ILjava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    const-string/jumbo v1, "uid="

    .line 17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lcom/android/internal/widget/ILockSettings$Stub;->getCallingUid()I

    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string v1, " needs permission android.permission.ACCESS_KEYGUARD_SECURE_STORAGE to read "

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string p2, " for user "

    .line 37
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 50
    throw p0
.end method

.method public final checkFMMPassword([BI)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 4
    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash(I[B)[B

    .line 7
    move-result-object p1

    .line 8
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    const-string/jumbo v0, "fmmpassword.key"

    .line 16
    invoke-static {p2, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/io/File;)[B

    .line 23
    move-result-object p0

    .line 24
    if-eqz p0, :cond_0

    .line 26
    array-length p2, p0

    .line 27
    if-lez p2, :cond_0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    :goto_0
    if-nez p0, :cond_1

    .line 33
    const/4 p0, 0x1

    .line 34
    return p0

    .line 35
    :cond_1
    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    .line 38
    move-result p0

    .line 39
    return p0
.end method

.method public final checkManageWeakEscrowTokenMethodUsage()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 3
    const-string v1, "android.permission.MANAGE_WEAK_ESCROW_TOKEN"

    .line 5
    const-string v2, "Requires MANAGE_WEAK_ESCROW_TOKEN permission."

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 15
    move-result-object p0

    .line 16
    const-string v0, "android.hardware.type.automotive"

    .line 18
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_0

    .line 24
    return-void

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 27
    const-string v0, "Weak escrow token are only for automotive devices."

    .line 29
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    throw p0
.end method

.method public final checkPasswordReadPermission()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 3
    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 5
    const-string v1, "LockSettingsRead"

    .line 7
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public final checkRemoteLockPassword(I[BILandroid/os/IRemoteCallback;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    .line 16
    const-string v1, "LockSettingsService"

    .line 18
    if-eqz v0, :cond_0

    .line 20
    :try_start_0
    invoke-interface {v0, p2}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->checkRemoteLockPassword([B)I

    .line 23
    move-result p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p3

    .line 26
    new-instance v0, Landroid/content/Intent;

    .line 28
    const-string/jumbo v2, "com.samsung.remotelock.CLIENT_WAKEUP"

    .line 31
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 36
    const-string/jumbo v3, "com.samsung.android.permission.REMOTELOCK"

    .line 39
    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 42
    iput-object p4, p0, Lcom/android/server/locksettings/LockSettingsService;->mRemoteCallback:Landroid/os/IRemoteCallback;

    .line 44
    iput p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockTypeForPasswordCheck:I

    .line 46
    iput-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mPassword:[B

    .line 48
    const-string/jumbo p0, "failed checkRemoteLockPassword callback!"

    .line 51
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 57
    return-void

    .line 58
    :cond_0
    const/4 p2, -0x1

    .line 59
    :goto_0
    const-string/jumbo v0, "result"

    .line 62
    invoke-static {p2, v0}, Lcom/android/server/SystemUpdateManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/Bundle;

    .line 65
    move-result-object v0

    .line 66
    if-lez p2, :cond_1

    .line 68
    const-string/jumbo p2, "locktime"

    .line 71
    invoke-static {p1, p2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    const-wide/16 v2, 0x0

    .line 77
    invoke-virtual {p0, p1, v2, v3, p3}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    .line 80
    move-result-wide p0

    .line 81
    const-string/jumbo p2, "timeout"

    .line 84
    invoke-virtual {v0, p2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 87
    :cond_1
    :try_start_1
    invoke-interface {p4, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    goto :goto_1

    .line 91
    :catch_1
    move-exception p0

    .line 92
    const-string/jumbo p1, "failed sendResult callback!"

    .line 95
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 101
    :goto_1
    return-void
.end method

.method public final checkWritePermission()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 3
    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 5
    const-string v1, "LockSettingsWrite"

    .line 7
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public final closeSession(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 6
    const-string/jumbo v0, "invalid session"

    .line 9
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 15
    move-result v0

    .line 16
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRecoverySessionStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;

    .line 18
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    .line 20
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    if-nez v1, :cond_0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    .line 29
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Ljava/util/ArrayList;

    .line 35
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$$ExternalSyntheticLambda0;

    .line 37
    invoke-direct {v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 43
    :goto_0
    return-void
.end method

.method public deleteRepairModePersistentDataIfNeeded()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->isRepairModeSupported(Landroid/content/Context;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 11
    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->isRepairModeActive(Landroid/content/Context;)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 17
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isGsiRunning()Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 31
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getRepairModePersistentDataFile()Ljava/io/File;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteFile(Ljava/io/File;)V

    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method public final disableEscrowTokenOnNonManagedDevicesIfNeeded(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 3
    const-string/jumbo v1, "e0"

    .line 6
    const-wide/16 v2, 0x0

    .line 8
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(ILjava/lang/String;J)Z

    .line 11
    move-result v4

    .line 12
    const-string/jumbo v5, "p1"

    .line 15
    if-nez v4, :cond_1

    .line 17
    invoke-virtual {v0, p1, v5, v2, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(ILjava/lang/String;J)Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void

    .line 25
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 28
    move-result-wide v6

    .line 29
    :try_start_0
    const-string/jumbo v0, "device_policy_manager"

    .line 32
    const-string/jumbo v4, "deprecate_usermanagerinternal_devicepolicy"

    .line 35
    const/4 v8, 0x1

    .line 36
    invoke-static {v0, v4, v8}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 39
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    const-string v4, "LockSettingsService"

    .line 42
    if-eqz v0, :cond_2

    .line 44
    :try_start_1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    invoke-static {}, Landroid/app/admin/DeviceStateCache;->getInstance()Landroid/app/admin/DeviceStateCache;

    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0, p1}, Landroid/app/admin/DeviceStateCache;->isUserOrganizationManaged(I)Z

    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_4

    .line 59
    const-string p0, "Organization managed users can have escrow token"

    .line 61
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 67
    return-void

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    goto/16 :goto_1

    .line 71
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 73
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->isUserManaged(I)Z

    .line 83
    move-result v8

    .line 84
    if-eqz v8, :cond_3

    .line 86
    const-string p0, "Managed profile can have escrow token"

    .line 88
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 94
    return-void

    .line 95
    :cond_3
    :try_start_3
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->isDeviceManaged()Z

    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_4

    .line 101
    const-string p0, "Corp-owned device can have escrow token"

    .line 103
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 106
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 109
    return-void

    .line 110
    :cond_4
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isKnoxAdminActivated(I)Z

    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_5

    .line 119
    const-string p0, "User with knox admin can have escrow token"

    .line 121
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void

    .line 125
    :cond_5
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 127
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    invoke-static {}, Landroid/app/admin/DeviceStateCache;->getInstance()Landroid/app/admin/DeviceStateCache;

    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroid/app/admin/DeviceStateCache;->isDeviceProvisioned()Z

    .line 137
    move-result v0

    .line 138
    if-nez v0, :cond_6

    .line 140
    const-string p0, "Postpone disabling escrow tokens until device is provisioned"

    .line 142
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void

    .line 146
    :cond_6
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 148
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 151
    move-result-object v0

    .line 152
    const-string v6, "android.hardware.type.automotive"

    .line 154
    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 157
    move-result v0

    .line 158
    if-eqz v0, :cond_7

    .line 160
    return-void

    .line 161
    :cond_7
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 163
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_8

    .line 180
    const-string p0, "SecureFolder can have escrow token"

    .line 182
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void

    .line 186
    :cond_8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    move-result-object v0

    .line 190
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 193
    move-result-object v0

    .line 194
    const-string v6, "Permanently disabling support for escrow tokens on user %d"

    .line 196
    invoke-static {v4, v6, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 201
    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(ILjava/lang/String;J)V

    .line 204
    invoke-virtual {p0, p1, v5, v2, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(ILjava/lang/String;J)V

    .line 207
    return-void

    .line 208
    :goto_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 211
    throw p0
.end method

.method public final doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v8, p1

    .line 5
    move/from16 v1, p2

    .line 7
    if-eqz v8, :cond_11

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_11

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    const-string v3, "Verify credential for user "

    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    invoke-static {v2}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 32
    const-string/jumbo v9, "credential"

    .line 35
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    .line 38
    move-result-object v10

    .line 39
    const-string/jumbo v11, "credentialType"

    .line 42
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    .line 45
    move-result v2

    .line 46
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v12

    .line 50
    const-string/jumbo v13, "userId"

    .line 53
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object v14

    .line 57
    filled-new-array/range {v9 .. v14}, [Ljava/lang/Object;

    .line 60
    move-result-object v2

    .line 61
    invoke-static {v2}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 64
    const/4 v9, 0x0

    .line 65
    const/16 v2, -0x270f

    .line 67
    if-ne v1, v2, :cond_0

    .line 69
    iget-object v3, v0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 74
    move-result-object v3

    .line 75
    const-string/jumbo v4, "device_provisioned"

    .line 78
    invoke-static {v3, v4, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_0

    .line 84
    const-string v0, "LockSettingsService"

    .line 86
    const-string v1, "FRP credential can only be verified prior to provisioning."

    .line 88
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 93
    return-object v0

    .line 94
    :cond_0
    const/16 v3, -0x270e

    .line 96
    if-ne v1, v3, :cond_1

    .line 98
    iget-object v3, v0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 100
    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->isRepairModeActive(Landroid/content/Context;)Z

    .line 103
    move-result v3

    .line 104
    if-nez v3, :cond_1

    .line 106
    const-string v0, "LockSettingsService"

    .line 108
    const-string v1, "Repair mode is not active on the device."

    .line 110
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 115
    return-object v0

    .line 116
    :cond_1
    const-string v3, "LockSettingsService"

    .line 118
    const-string v4, "Verifying lockscreen credential for user %d"

    .line 120
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    move-result-object v5

    .line 124
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 127
    move-result-object v5

    .line 128
    invoke-static {v3, v4, v5}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    iget-object v10, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 133
    monitor-enter v10

    .line 134
    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/android/internal/widget/LockPatternUtils;->isSpecialUserId(I)Z

    .line 137
    move-result v3

    .line 138
    if-eqz v3, :cond_4

    .line 140
    iget-object v3, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 145
    move-result-object v4

    .line 146
    invoke-virtual {v3, v1, v4, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifySpecialUserCredential(ILandroid/service/gatekeeper/IGateKeeperService;Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 149
    move-result-object v3

    .line 150
    invoke-static {}, Landroid/security/Flags;->frpEnforcement()Z

    .line 153
    move-result v4

    .line 154
    if-eqz v4, :cond_3

    .line 156
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    .line 159
    move-result v4

    .line 160
    if-eqz v4, :cond_3

    .line 162
    if-ne v1, v2, :cond_3

    .line 164
    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 166
    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getPersistentDataBlockManager()Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    .line 169
    move-result-object v0

    .line 170
    if-eqz v0, :cond_2

    .line 172
    check-cast v0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

    .line 174
    iget-object v1, v0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 176
    iget-object v1, v1, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    .line 178
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 179
    :try_start_1
    iget-object v0, v0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 181
    iput-boolean v9, v0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    .line 183
    invoke-virtual {v0, v9}, Lcom/android/server/pdb/PersistentDataBlockService;->setOldSettingForBackworkCompatibility(Z)V

    .line 186
    monitor-exit v1

    .line 187
    goto :goto_0

    .line 188
    :catchall_0
    move-exception v0

    .line 189
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    :try_start_2
    throw v0

    .line 191
    :cond_2
    const-string v0, "LockSettingsStorage"

    .line 193
    const-string v1, "Failed to get PersistentDataBlockManagerInternal"

    .line 195
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    goto :goto_0

    .line 199
    :catchall_1
    move-exception v0

    .line 200
    goto/16 :goto_9

    .line 202
    :cond_3
    :goto_0
    monitor-exit v10

    .line 203
    return-object v3

    .line 204
    :cond_4
    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 207
    move-result-wide v2

    .line 208
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->isEnablePrevCredential()Z

    .line 211
    move-result v4

    .line 212
    const/4 v11, 0x1

    .line 213
    if-eqz v4, :cond_5

    .line 215
    const/16 v4, -0x26ab

    .line 217
    if-ne v1, v4, :cond_5

    .line 219
    const-string v1, "LockSettingsService"

    .line 221
    const-string v2, "!@ try unlock with prevCredential!!!"

    .line 223
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {v0, v9}, Lcom/android/server/locksettings/LockSettingsService;->getBackupLskfBasedProtectorId(I)J

    .line 229
    move-result-wide v2

    .line 230
    move-wide v13, v2

    .line 231
    move v12, v9

    .line 232
    move v15, v11

    .line 233
    goto :goto_1

    .line 234
    :cond_5
    move v12, v1

    .line 235
    move-wide v13, v2

    .line 236
    move v15, v9

    .line 237
    :goto_1
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 242
    move-result-object v2

    .line 243
    move-wide v3, v13

    .line 244
    move-object/from16 v5, p1

    .line 246
    move v6, v12

    .line 247
    move-object/from16 v7, p3

    .line 249
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    .line 252
    move-result-object v1

    .line 253
    iget-object v2, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 255
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    .line 258
    move-result v3

    .line 259
    if-nez v3, :cond_7

    .line 261
    and-int/lit8 v3, p4, 0x2

    .line 263
    if-eqz v3, :cond_6

    .line 265
    iget-object v3, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 267
    invoke-virtual {v3, v12, v13, v14}, Lcom/android/server/locksettings/SyntheticPasswordManager;->writeRepairModeCredentialLocked(IJ)Z

    .line 270
    move-result v3

    .line 271
    if-nez v3, :cond_6

    .line 273
    const-string v0, "LockSettingsService"

    .line 275
    const-string v1, "Failed to write repair mode credential"

    .line 277
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const-string v0, "Verify success. But failed to write repair mode credential"

    .line 282
    invoke-static {v0}, Lcom/samsung/android/lock/LsLog;->verify(Ljava/lang/String;)V

    .line 285
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 287
    monitor-exit v10

    .line 288
    return-object v0

    .line 289
    :cond_6
    iget-object v3, v0, Lcom/android/server/locksettings/LockSettingsService;->mBiometricDeferredQueue:Lcom/android/server/locksettings/BiometricDeferredQueue;

    .line 291
    iget-object v4, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 293
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 296
    sget-object v5, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_GK_AUTH:[B

    .line 298
    invoke-virtual {v4, v5}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveSubkey([B)[B

    .line 301
    move-result-object v4

    .line 302
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 305
    new-instance v5, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda0;

    .line 307
    invoke-direct {v5, v3, v12, v4}, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/locksettings/BiometricDeferredQueue;I[B)V

    .line 310
    iget-object v3, v3, Lcom/android/server/locksettings/BiometricDeferredQueue;->mHandler:Landroid/os/Handler;

    .line 312
    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 315
    :cond_7
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 316
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    .line 319
    move-result v3

    .line 320
    if-nez v3, :cond_c

    .line 322
    const-string v3, "LockSettingsService"

    .line 324
    const-string v4, "Successfully verified lockscreen credential for user %d"

    .line 326
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 329
    move-result-object v5

    .line 330
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 333
    move-result-object v5

    .line 334
    invoke-static {v3, v4, v5}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    invoke-static {v12, v9}, Lcom/samsung/android/lock/LsLog;->setFailureCount(II)V

    .line 340
    iget-object v3, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 342
    if-eqz v15, :cond_8

    .line 344
    const/4 v4, 0x0

    .line 345
    goto :goto_2

    .line 346
    :cond_8
    invoke-static/range {p1 .. p1}, Landroid/app/admin/PasswordMetrics;->computeForCredential(Lcom/android/internal/widget/LockscreenCredential;)Landroid/app/admin/PasswordMetrics;

    .line 349
    move-result-object v4

    .line 350
    :goto_2
    invoke-virtual {v0, v3, v4, v12}, Lcom/android/server/locksettings/LockSettingsService;->onCredentialVerified(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Landroid/app/admin/PasswordMetrics;I)V

    .line 353
    and-int/lit8 v3, p4, 0x1

    .line 355
    if-eqz v3, :cond_b

    .line 357
    iget-object v1, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 359
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 362
    sget-object v2, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_GK_AUTH:[B

    .line 364
    invoke-virtual {v1, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveSubkey([B)[B

    .line 367
    move-result-object v1

    .line 368
    iget-object v3, v0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    .line 370
    monitor-enter v3

    .line 371
    const-wide/16 v4, 0x0

    .line 373
    move-wide v6, v4

    .line 374
    :goto_3
    cmp-long v2, v6, v4

    .line 376
    if-eqz v2, :cond_a

    .line 378
    :try_start_3
    iget-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    .line 380
    invoke-virtual {v2, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 383
    move-result-object v2

    .line 384
    if-eqz v2, :cond_9

    .line 386
    goto :goto_4

    .line 387
    :cond_9
    iget-object v2, v0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    .line 389
    invoke-virtual {v2, v6, v7, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 392
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 393
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 395
    new-instance v2, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda0;

    .line 397
    invoke-direct {v2, v0, v6, v7}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/locksettings/LockSettingsService;J)V

    .line 400
    const-wide/32 v3, 0x927c0

    .line 403
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 406
    new-instance v1, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;

    .line 408
    invoke-direct {v1}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;-><init>()V

    .line 411
    invoke-virtual {v1, v6, v7}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->setGatekeeperPasswordHandle(J)Lcom/android/internal/widget/VerifyCredentialResponse$Builder;

    .line 414
    move-result-object v1

    .line 415
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->build()Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 418
    move-result-object v2

    .line 419
    goto :goto_6

    .line 420
    :catchall_2
    move-exception v0

    .line 421
    goto :goto_5

    .line 422
    :cond_a
    :goto_4
    :try_start_4
    sget-object v2, Lcom/android/server/locksettings/SecureRandomUtils;->RNG:Ljava/security/SecureRandom;

    .line 424
    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextLong()J

    .line 427
    move-result-wide v6

    .line 428
    goto :goto_3

    .line 429
    :goto_5
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 430
    throw v0

    .line 431
    :cond_b
    :goto_6
    invoke-virtual {v0, v8, v12}, Lcom/android/server/locksettings/LockSettingsService;->sendCredentialsOnUnlockIfRequired(Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 434
    const-string/jumbo v1, "persist.escrowvault.sa.signed"

    .line 437
    invoke-static {v1, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 440
    move-result v1

    .line 441
    new-instance v3, Ljava/lang/StringBuilder;

    .line 443
    const-string/jumbo v4, "isSaSignedIn : "

    .line 446
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 449
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 452
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 455
    move-result-object v1

    .line 456
    const-string v3, "LockSettingsService"

    .line 458
    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    goto :goto_7

    .line 462
    :cond_c
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    .line 465
    move-result v1

    .line 466
    if-ne v1, v11, :cond_d

    .line 468
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    .line 471
    move-result v1

    .line 472
    if-lez v1, :cond_d

    .line 474
    const/16 v1, 0x8

    .line 476
    invoke-virtual {v0, v1, v12}, Lcom/android/server/locksettings/LockSettingsService;->requireStrongAuth(II)V

    .line 479
    :cond_d
    :goto_7
    invoke-static {}, Landroid/security/Flags;->reportPrimaryAuthAttempts()Z

    .line 482
    move-result v1

    .line 483
    if-eqz v1, :cond_10

    .line 485
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    .line 488
    move-result v1

    .line 489
    if-nez v1, :cond_e

    .line 491
    move v9, v11

    .line 492
    :cond_e
    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsService;->mLockSettingsStateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 494
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 497
    move-result-object v0

    .line 498
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 501
    move-result v1

    .line 502
    if-eqz v1, :cond_10

    .line 504
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 507
    move-result-object v1

    .line 508
    check-cast v1, Lcom/android/internal/widget/LockSettingsStateListener;

    .line 510
    if-eqz v9, :cond_f

    .line 512
    invoke-interface {v1, v12}, Lcom/android/internal/widget/LockSettingsStateListener;->onAuthenticationSucceeded(I)V

    .line 515
    goto :goto_8

    .line 516
    :cond_f
    invoke-interface {v1, v12}, Lcom/android/internal/widget/LockSettingsStateListener;->onAuthenticationFailed(I)V

    .line 519
    goto :goto_8

    .line 520
    :cond_10
    return-object v2

    .line 521
    :goto_9
    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 522
    throw v0

    .line 523
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 525
    const-string v1, "Credential can\'t be null or empty"

    .line 527
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 530
    throw v0
.end method

.method public final doVerifyCredentialForDualDarDo(Lcom/android/internal/widget/LockscreenCredential;IILcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "Verify credential for dual-dar user "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 18
    const-string/jumbo v1, "credential"

    .line 21
    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    .line 26
    move-result-object v0

    .line 27
    :goto_0
    move-object v2, v0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const-string/jumbo v0, "null"

    .line 32
    goto :goto_0

    .line 33
    :goto_1
    const-string/jumbo v3, "credentialType"

    .line 36
    if-eqz p1, :cond_1

    .line 38
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    .line 41
    move-result v0

    .line 42
    goto :goto_2

    .line 43
    :cond_1
    const/4 v0, -0x1

    .line 44
    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v4

    .line 48
    const-string/jumbo v5, "userId"

    .line 51
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object v6

    .line 55
    const-string/jumbo v7, "opiotn"

    .line 58
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object v8

    .line 62
    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    .line 65
    move-result-object v0

    .line 66
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 69
    if-eqz p1, :cond_e

    .line 71
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_e

    .line 77
    const-string v0, "LockSettingsService"

    .line 79
    const-string v1, "Verifying lockscreen credential for user %d"

    .line 81
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    move-result-object v2

    .line 85
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 88
    move-result-object v2

    .line 89
    invoke-static {v0, v1, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 94
    monitor-enter v0

    .line 95
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 98
    move-result-wide v3

    .line 99
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 101
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 104
    move-result-object v2

    .line 105
    const/4 v7, 0x0

    .line 106
    move-object v5, p1

    .line 107
    move v6, p2

    .line 108
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    .line 111
    move-result-object v1

    .line 112
    iget-object v2, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 114
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    .line 117
    move-result v3

    .line 118
    if-nez v3, :cond_3

    .line 120
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mBiometricDeferredQueue:Lcom/android/server/locksettings/BiometricDeferredQueue;

    .line 122
    iget-object v3, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 124
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    sget-object v4, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_GK_AUTH:[B

    .line 129
    invoke-virtual {v3, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveSubkey([B)[B

    .line 132
    move-result-object v3

    .line 133
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    new-instance v4, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda0;

    .line 138
    invoke-direct {v4, v2, p2, v3}, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/locksettings/BiometricDeferredQueue;I[B)V

    .line 141
    iget-object v2, v2, Lcom/android/server/locksettings/BiometricDeferredQueue;->mHandler:Landroid/os/Handler;

    .line 143
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 146
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 148
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 151
    move-result-object v3

    .line 152
    iget-object v4, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 154
    invoke-virtual {v2, v3, v4, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 157
    move-result-object v2

    .line 158
    if-eqz v2, :cond_2

    .line 160
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    .line 163
    move-result v3

    .line 164
    if-eqz v3, :cond_3

    .line 166
    goto :goto_3

    .line 167
    :catchall_0
    move-exception p0

    .line 168
    goto/16 :goto_e

    .line 170
    :cond_2
    :goto_3
    const-string p0, "LockSettingsService"

    .line 172
    const-string/jumbo p1, "verifyChallenge with SP failed."

    .line 175
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 180
    monitor-exit v0

    .line 181
    return-object p0

    .line 182
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    .line 186
    move-result v0

    .line 187
    const/4 v3, 0x1

    .line 188
    if-nez v0, :cond_c

    .line 190
    const-string v0, "LockSettingsService"

    .line 192
    const-string v4, "Successfully verified lockscreen credential for user %d"

    .line 194
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 197
    move-result-object v5

    .line 198
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 201
    move-result-object v5

    .line 202
    invoke-static {v0, v4, v5}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    and-int/2addr p3, v3

    .line 206
    if-eqz p3, :cond_a

    .line 208
    iget-object p3, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 210
    invoke-static {p1}, Landroid/app/admin/PasswordMetrics;->computeForCredential(Lcom/android/internal/widget/LockscreenCredential;)Landroid/app/admin/PasswordMetrics;

    .line 213
    move-result-object v0

    .line 214
    if-nez p3, :cond_4

    .line 216
    goto/16 :goto_c

    .line 218
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 220
    const-string v3, "Postpone credential verified event for user "

    .line 222
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    move-result-object v1

    .line 232
    const/4 v3, 0x0

    .line 233
    invoke-static {v3, v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mPendingVerifiedResults:Landroid/util/SparseArray;

    .line 238
    monitor-enter v4

    .line 239
    :try_start_1
    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;

    .line 241
    invoke-direct {v1}, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;-><init>()V

    .line 244
    iput-object p4, v1, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;->mCallback:Ljava/lang/Object;

    .line 246
    if-nez p4, :cond_5

    .line 248
    move-object p4, v3

    .line 249
    goto :goto_4

    .line 250
    :cond_5
    invoke-interface {p4}, Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;->asBinder()Landroid/os/IBinder;

    .line 253
    move-result-object p4

    .line 254
    :goto_4
    invoke-static {p4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 257
    move-result-object p4

    .line 258
    new-instance v5, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback$$ExternalSyntheticLambda0;

    .line 260
    const/4 v6, 0x0

    .line 261
    invoke-direct {v5, v1, v6}, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;I)V

    .line 264
    invoke-virtual {p4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 267
    new-instance p4, Lcom/android/server/locksettings/LockSettingsService$PendingVerifiedResult;

    .line 269
    invoke-direct {p4, p3, v0, v1}, Lcom/android/server/locksettings/LockSettingsService$PendingVerifiedResult;-><init>(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Landroid/app/admin/PasswordMetrics;Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;)V

    .line 272
    iget-object p3, p0, Lcom/android/server/locksettings/LockSettingsService;->mPendingVerifiedResults:Landroid/util/SparseArray;

    .line 274
    invoke-virtual {p3, p2, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 277
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 278
    iget-object p3, p0, Lcom/android/server/locksettings/LockSettingsService;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    .line 280
    invoke-virtual {p3, p2}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->getInnerAuthUserId(I)I

    .line 283
    move-result p3

    .line 284
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    .line 287
    move-result p4

    .line 288
    if-nez p4, :cond_b

    .line 290
    new-instance p4, Ljava/lang/StringBuilder;

    .line 292
    const-string v0, "Auth user "

    .line 294
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 300
    const-string v0, " has no credential"

    .line 302
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    move-result-object p4

    .line 309
    invoke-static {v3, p4}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object p4, p0, Lcom/android/server/locksettings/LockSettingsService;->mDarVirtualLock:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 314
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    .line 317
    move-result-object v0

    .line 318
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 321
    invoke-static {}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwnerEnabled()Z

    .line 324
    move-result v1

    .line 325
    if-eqz v1, :cond_b

    .line 327
    iget-object v1, p4, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    .line 329
    check-cast v1, Lcom/android/server/locksettings/LockSettingsService;

    .line 331
    iget-object v1, v1, Lcom/android/server/locksettings/LockSettingsService;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    .line 333
    invoke-virtual {v1, p3}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->isInnerAuthUserForDo(I)Z

    .line 336
    move-result v1

    .line 337
    if-eqz v1, :cond_b

    .line 339
    iget-object v1, p4, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    .line 341
    check-cast v1, Lcom/android/server/locksettings/LockSettingsService;

    .line 343
    iget-object v1, v1, Lcom/android/server/locksettings/LockSettingsService;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    .line 345
    invoke-virtual {v1, p3}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->getMainUserId(I)I

    .line 348
    move-result v1

    .line 349
    iget-object v4, p4, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    .line 351
    check-cast v4, Lcom/android/server/locksettings/LockSettingsService;

    .line 353
    iget-object v4, v4, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 355
    invoke-static {v4}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDARController;

    .line 358
    move-result-object v4

    .line 359
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    .line 362
    move-result v5

    .line 363
    if-eqz v5, :cond_6

    .line 365
    move-object v5, v3

    .line 366
    goto :goto_5

    .line 367
    :cond_6
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    .line 370
    move-result-object v5

    .line 371
    :goto_5
    invoke-virtual {v4, v1, v5}, Lcom/samsung/android/knox/dar/ddar/DualDARController;->onPassword2Auth(I[B)Z

    .line 374
    move-result v4

    .line 375
    if-eqz v4, :cond_9

    .line 377
    const-string v4, "LockSettingsService.DarVirtualLock"

    .line 379
    const-string v5, "Inner-layer authenticated with auth user "

    .line 381
    invoke-static {p3, v5, v4}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v4, p4, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    .line 386
    check-cast v4, Lcom/android/server/locksettings/LockSettingsService;

    .line 388
    monitor-enter v4

    .line 389
    :try_start_2
    iget-object v5, v4, Lcom/android/server/locksettings/LockSettingsService;->mUserPasswordMetrics:Landroid/util/SparseArray;

    .line 391
    invoke-static {v0}, Landroid/app/admin/PasswordMetrics;->computeForCredential(Lcom/android/internal/widget/LockscreenCredential;)Landroid/app/admin/PasswordMetrics;

    .line 394
    move-result-object v0

    .line 395
    invoke-virtual {v5, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 398
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 399
    iget-object p3, p4, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    .line 401
    check-cast p3, Lcom/android/server/locksettings/LockSettingsService;

    .line 403
    iget-object p3, p3, Lcom/android/server/locksettings/LockSettingsService;->mPendingVerifiedResults:Landroid/util/SparseArray;

    .line 405
    monitor-enter p3

    .line 406
    :try_start_3
    iget-object v0, p4, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    .line 408
    check-cast v0, Lcom/android/server/locksettings/LockSettingsService;

    .line 410
    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsService;->mPendingVerifiedResults:Landroid/util/SparseArray;

    .line 412
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 415
    move-result-object v0

    .line 416
    check-cast v0, Lcom/android/server/locksettings/LockSettingsService$PendingVerifiedResult;

    .line 418
    if-eqz v0, :cond_8

    .line 420
    iget-object v4, p4, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    .line 422
    check-cast v4, Lcom/android/server/locksettings/LockSettingsService;

    .line 424
    iget-object v5, v0, Lcom/android/server/locksettings/LockSettingsService$PendingVerifiedResult;->mSyntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 426
    iget-object v6, v0, Lcom/android/server/locksettings/LockSettingsService$PendingVerifiedResult;->mPasswordMetrics:Landroid/app/admin/PasswordMetrics;

    .line 428
    invoke-virtual {v4, v5, v6, v1}, Lcom/android/server/locksettings/LockSettingsService;->onCredentialVerified(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Landroid/app/admin/PasswordMetrics;I)V

    .line 431
    sget-object v4, Lcom/samsung/android/knox/dar/ddar/fsm/Event;->DEVICE_AUTH_SUCCESS:Lcom/samsung/android/knox/dar/ddar/fsm/Event;

    .line 433
    invoke-static {v1, v4}, Lcom/samsung/android/knox/dar/ddar/fsm/StateMachine;->processEvent(ILcom/samsung/android/knox/dar/ddar/fsm/Event;)Z

    .line 436
    sget-object v4, Lcom/samsung/android/knox/dar/ddar/fsm/Event;->DDAR_WORKSPACE_AUTH_SUCCESS:Lcom/samsung/android/knox/dar/ddar/fsm/Event;

    .line 438
    invoke-static {v1, v4}, Lcom/samsung/android/knox/dar/ddar/fsm/StateMachine;->processEvent(ILcom/samsung/android/knox/dar/ddar/fsm/Event;)Z

    .line 441
    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsService$PendingVerifiedResult;->mDualDARCallback:Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 443
    if-eqz v0, :cond_8

    .line 445
    :try_start_4
    iget-object v4, v0, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;->mCallback:Ljava/lang/Object;

    .line 447
    check-cast v4, Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;

    .line 449
    if-eqz v4, :cond_7

    .line 451
    invoke-interface {v4}, Lcom/samsung/android/knox/dar/ddar/IDualDarAuthProgressCallback;->onInnerLayerUnlocked()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 454
    goto :goto_6

    .line 455
    :catchall_1
    move-exception p0

    .line 456
    goto :goto_9

    .line 457
    :catch_0
    move-exception v4

    .line 458
    goto :goto_8

    .line 459
    :cond_7
    :goto_6
    :try_start_5
    iput-object v3, v0, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;->mCallback:Ljava/lang/Object;

    .line 461
    iget-object p4, p4, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    .line 463
    check-cast p4, Lcom/android/server/locksettings/LockSettingsService;

    .line 465
    iget-object p4, p4, Lcom/android/server/locksettings/LockSettingsService;->mPendingVerifiedResults:Landroid/util/SparseArray;

    .line 467
    :goto_7
    invoke-virtual {p4, v1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 470
    goto :goto_a

    .line 471
    :catchall_2
    move-exception p0

    .line 472
    goto :goto_b

    .line 473
    :goto_8
    :try_start_6
    const-string v5, "LockSettingsService.DarVirtualLock"

    .line 475
    const-string v6, "Callback might be dead..."

    .line 477
    invoke-static {v4, v5, v6}, Lcom/android/server/knox/dar/sdp/SDPLog;->e(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 480
    :try_start_7
    iput-object v3, v0, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;->mCallback:Ljava/lang/Object;

    .line 482
    iget-object p4, p4, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    .line 484
    check-cast p4, Lcom/android/server/locksettings/LockSettingsService;

    .line 486
    iget-object p4, p4, Lcom/android/server/locksettings/LockSettingsService;->mPendingVerifiedResults:Landroid/util/SparseArray;

    .line 488
    goto :goto_7

    .line 489
    :goto_9
    iput-object v3, v0, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;->mCallback:Ljava/lang/Object;

    .line 491
    iget-object p1, p4, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    .line 493
    check-cast p1, Lcom/android/server/locksettings/LockSettingsService;

    .line 495
    iget-object p1, p1, Lcom/android/server/locksettings/LockSettingsService;->mPendingVerifiedResults:Landroid/util/SparseArray;

    .line 497
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 500
    throw p0

    .line 501
    :cond_8
    :goto_a
    monitor-exit p3

    .line 502
    goto :goto_c

    .line 503
    :goto_b
    monitor-exit p3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 504
    throw p0

    .line 505
    :catchall_3
    move-exception p0

    .line 506
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 507
    throw p0

    .line 508
    :cond_9
    const-string p4, "LockSettingsService.DarVirtualLock"

    .line 510
    const-string v0, "Failed in inner-layer authentication with auth user "

    .line 512
    invoke-static {p3, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 515
    move-result-object p3

    .line 516
    const/4 v0, 0x0

    .line 517
    new-array v0, v0, [Ljava/lang/Object;

    .line 519
    invoke-static {p4, p3, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 522
    goto :goto_c

    .line 523
    :catchall_4
    move-exception p0

    .line 524
    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 525
    throw p0

    .line 526
    :cond_a
    iget-object p3, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 528
    invoke-static {p1}, Landroid/app/admin/PasswordMetrics;->computeForCredential(Lcom/android/internal/widget/LockscreenCredential;)Landroid/app/admin/PasswordMetrics;

    .line 531
    move-result-object p4

    .line 532
    invoke-virtual {p0, p3, p4, p2}, Lcom/android/server/locksettings/LockSettingsService;->onCredentialVerified(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Landroid/app/admin/PasswordMetrics;I)V

    .line 535
    :cond_b
    :goto_c
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->sendCredentialsOnUnlockIfRequired(Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 538
    goto :goto_d

    .line 539
    :cond_c
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    .line 542
    move-result p1

    .line 543
    if-ne p1, v3, :cond_d

    .line 545
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    .line 548
    move-result p1

    .line 549
    if-lez p1, :cond_d

    .line 551
    const/16 p1, 0x8

    .line 553
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->requireStrongAuth(II)V

    .line 556
    :cond_d
    :goto_d
    return-object v2

    .line 557
    :goto_e
    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 558
    throw p0

    .line 559
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 561
    const-string p1, "Credential can\'t be null or empty"

    .line 563
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 566
    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 3
    const-string p3, "LockSettingsService"

    .line 5
    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    move-result-wide v0

    .line 16
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->dumpInternal(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    throw p0
.end method

.method public final dumpInternal(Ljava/io/PrintWriter;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 3
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    .line 5
    const-string v0, "  "

    .line 7
    move-object/from16 v3, p1

    .line 9
    invoke-direct {v2, v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 12
    const-string v0, "Current lock settings service state:"

    .line 14
    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 20
    const-string/jumbo v0, "knox.device_owner"

    .line 23
    const-wide/16 v3, 0x0

    .line 25
    const/4 v5, 0x0

    .line 26
    invoke-virtual {v1, v0, v3, v4, v5}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    .line 29
    move-result-wide v6

    .line 30
    cmp-long v0, v6, v3

    .line 32
    const/4 v6, 0x1

    .line 33
    if-eqz v0, :cond_0

    .line 35
    move v0, v6

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move v0, v5

    .line 38
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    .line 40
    const-string v8, "DO Enabled: "

    .line 42
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 58
    const-string v0, "User State:"

    .line 60
    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 66
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 68
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 71
    move-result-object v0

    .line 72
    move v7, v5

    .line 73
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 76
    move-result v8

    .line 77
    if-ge v7, v8, :cond_4

    .line 79
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    move-result-object v8

    .line 83
    check-cast v8, Landroid/content/pm/UserInfo;

    .line 85
    iget v8, v8, Landroid/content/pm/UserInfo;->id:I

    .line 87
    new-instance v9, Ljava/lang/StringBuilder;

    .line 89
    const-string v10, "User "

    .line 91
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object v9

    .line 101
    invoke-virtual {v2, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 107
    iget-object v9, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 109
    monitor-enter v9

    .line 110
    :try_start_0
    const-string v10, "LSKF-based SP protector ID: %016x"

    .line 112
    invoke-virtual {v1, v8}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 115
    move-result-wide v11

    .line 116
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 119
    move-result-object v11

    .line 120
    filled-new-array {v11}, [Ljava/lang/Object;

    .line 123
    move-result-object v11

    .line 124
    invoke-static {v10, v11}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 127
    move-result-object v10

    .line 128
    invoke-virtual {v2, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 131
    const-string v10, "LSKF last changed: %s (previous protector: %016x)"

    .line 133
    const-string/jumbo v11, "sp-handle-ts"

    .line 136
    invoke-virtual {v1, v11, v3, v4, v8}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    .line 139
    move-result-wide v11

    .line 140
    invoke-static {v11, v12}, Lcom/android/server/locksettings/LockSettingsService;->timestampToString(J)Ljava/lang/String;

    .line 143
    move-result-object v11

    .line 144
    const-string/jumbo v12, "prev-sp-handle"

    .line 147
    invoke-virtual {v1, v12, v3, v4, v8}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    .line 150
    move-result-wide v12

    .line 151
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 154
    move-result-object v12

    .line 155
    filled-new-array {v11, v12}, [Ljava/lang/Object;

    .line 158
    move-result-object v11

    .line 159
    invoke-static {v10, v11}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 162
    move-result-object v10

    .line 163
    invoke-virtual {v2, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 166
    if-nez v8, :cond_1

    .line 168
    const-string v10, "Backup protector: %016x (set : %s, expire : %s)"

    .line 170
    const-string v11, "backup-protector-id"

    .line 172
    invoke-virtual {v1, v11, v3, v4, v8}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    .line 175
    move-result-wide v11

    .line 176
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 179
    move-result-object v11

    .line 180
    const-string v12, "backup-protector-ts"

    .line 182
    invoke-virtual {v1, v12, v3, v4, v8}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    .line 185
    move-result-wide v12

    .line 186
    invoke-static {v12, v13}, Lcom/android/server/locksettings/LockSettingsService;->timestampToString(J)Ljava/lang/String;

    .line 189
    move-result-object v12

    .line 190
    const-string v13, "backup-expiration-ts"

    .line 192
    invoke-virtual {v1, v13, v3, v4, v8}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    .line 195
    move-result-wide v13

    .line 196
    invoke-static {v13, v14}, Lcom/android/server/locksettings/LockSettingsService;->timestampToString(J)Ljava/lang/String;

    .line 199
    move-result-object v13

    .line 200
    filled-new-array {v11, v12, v13}, [Ljava/lang/Object;

    .line 203
    move-result-object v11

    .line 204
    invoke-static {v10, v11}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 207
    move-result-object v10

    .line 208
    invoke-virtual {v2, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 211
    goto :goto_2

    .line 212
    :catchall_0
    move-exception v0

    .line 213
    goto/16 :goto_5

    .line 215
    :cond_1
    :goto_2
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    const-string v9, "Secure Mode: %d"

    .line 218
    iget-object v10, v1, Lcom/android/server/locksettings/LockSettingsService;->mDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;

    .line 220
    invoke-virtual {v10, v8}, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->getSecureMode(I)I

    .line 223
    move-result v10

    .line 224
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 227
    move-result-object v10

    .line 228
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 231
    move-result-object v10

    .line 232
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 235
    move-result-object v9

    .line 236
    invoke-virtual {v2, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 239
    :try_start_1
    const-string v9, "SID: %016x"

    .line 241
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 244
    move-result-object v10

    .line 245
    invoke-interface {v10, v8}, Landroid/service/gatekeeper/IGateKeeperService;->getSecureUserId(I)J

    .line 248
    move-result-wide v10

    .line 249
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 252
    move-result-object v10

    .line 253
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 256
    move-result-object v10

    .line 257
    invoke-static {v9, v10}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 260
    move-result-object v9

    .line 261
    invoke-virtual {v2, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 264
    :catch_0
    new-instance v9, Ljava/lang/StringBuilder;

    .line 266
    const-string v10, "Quality: "

    .line 268
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    iget-object v10, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 273
    const/4 v11, 0x0

    .line 274
    const-string/jumbo v12, "lockscreen.password_type"

    .line 277
    invoke-virtual {v10, v12, v11, v8}, Lcom/android/server/locksettings/LockSettingsStorage;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 280
    move-result-object v10

    .line 281
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 284
    move-result v11

    .line 285
    if-eqz v11, :cond_2

    .line 287
    move-wide v10, v3

    .line 288
    goto :goto_3

    .line 289
    :cond_2
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 292
    move-result-wide v10

    .line 293
    :goto_3
    long-to-int v10, v10

    .line 294
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    move-result-object v9

    .line 301
    invoke-virtual {v2, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 304
    new-instance v9, Ljava/lang/StringBuilder;

    .line 306
    const-string v10, "CredentialType: "

    .line 308
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v1, v8}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialTypeInternal(I)I

    .line 314
    move-result v10

    .line 315
    invoke-static {v10}, Lcom/android/internal/widget/LockPatternUtils;->credentialTypeToString(I)Ljava/lang/String;

    .line 318
    move-result-object v10

    .line 319
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    move-result-object v9

    .line 326
    invoke-virtual {v2, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 329
    new-instance v9, Ljava/lang/StringBuilder;

    .line 331
    const-string v10, "SeparateChallenge: "

    .line 333
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v1, v8}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    .line 339
    move-result v10

    .line 340
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 346
    move-result-object v9

    .line 347
    invoke-virtual {v2, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 350
    const-string v9, "Metrics: %s"

    .line 352
    invoke-virtual {v1, v8}, Lcom/android/server/locksettings/LockSettingsService;->getUserPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;

    .line 355
    move-result-object v10

    .line 356
    if-eqz v10, :cond_3

    .line 358
    const-string/jumbo v10, "known"

    .line 361
    goto :goto_4

    .line 362
    :cond_3
    const-string/jumbo v10, "unknown"

    .line 365
    :goto_4
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 368
    move-result-object v10

    .line 369
    invoke-static {v9, v10}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 372
    move-result-object v9

    .line 373
    invoke-virtual {v2, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 376
    new-instance v9, Ljava/lang/StringBuilder;

    .line 378
    const-string/jumbo v10, "failed attempt = "

    .line 381
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 384
    iget-object v10, v1, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 386
    invoke-virtual {v10}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    .line 389
    move-result-object v10

    .line 390
    invoke-virtual {v10, v8}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts(I)I

    .line 393
    move-result v8

    .line 394
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 400
    move-result-object v8

    .line 401
    invoke-virtual {v2, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 404
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 407
    add-int/lit8 v7, v7, 0x1

    .line 409
    goto/16 :goto_1

    .line 411
    :goto_5
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 412
    throw v0

    .line 413
    :cond_4
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 416
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 419
    const-string v0, "Keys in namespace:"

    .line 421
    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 427
    :try_start_3
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Ljava/security/KeyStore;

    .line 429
    invoke-virtual {v0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    .line 432
    move-result-object v0

    .line 433
    :goto_6
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 436
    move-result v7

    .line 437
    if-eqz v7, :cond_5

    .line 439
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 442
    move-result-object v7

    .line 443
    check-cast v7, Ljava/lang/String;

    .line 445
    invoke-virtual {v2, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_1

    .line 448
    goto :goto_6

    .line 449
    :catch_1
    move-exception v0

    .line 450
    new-instance v7, Ljava/lang/StringBuilder;

    .line 452
    const-string v8, "Unable to get keys: "

    .line 454
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 457
    invoke-virtual {v0}, Ljava/security/KeyStoreException;->toString()Ljava/lang/String;

    .line 460
    move-result-object v8

    .line 461
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 467
    move-result-object v7

    .line 468
    invoke-virtual {v2, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 471
    const-string v7, "LockSettingsService"

    .line 473
    const-string v8, "Dump error"

    .line 475
    invoke-static {v7, v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 478
    :cond_5
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 481
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 484
    const-string v0, "Storage:"

    .line 486
    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 489
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 492
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 494
    iget-object v7, v0, Lcom/android/server/locksettings/LockSettingsStorage;->mContext:Landroid/content/Context;

    .line 496
    invoke-static {v7}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 499
    move-result-object v7

    .line 500
    invoke-virtual {v7}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 503
    move-result-object v7

    .line 504
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 507
    move-result-object v7

    .line 508
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 511
    move-result v8

    .line 512
    const-string v9, "%6d %s %s"

    .line 514
    if-eqz v8, :cond_8

    .line 516
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 519
    move-result-object v8

    .line 520
    check-cast v8, Landroid/content/pm/UserInfo;

    .line 522
    iget v10, v8, Landroid/content/pm/UserInfo;->id:I

    .line 524
    invoke-virtual {v0, v10}, Lcom/android/server/locksettings/LockSettingsStorage;->getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;

    .line 527
    move-result-object v10

    .line 528
    iget v11, v8, Landroid/content/pm/UserInfo;->id:I

    .line 530
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 533
    move-result-object v11

    .line 534
    filled-new-array {v11, v10}, [Ljava/lang/Object;

    .line 537
    move-result-object v11

    .line 538
    const-string v12, "User %d [%s]:"

    .line 540
    invoke-static {v12, v11}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 543
    move-result-object v11

    .line 544
    invoke-virtual {v2, v11}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 547
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 550
    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 553
    move-result-object v10

    .line 554
    if-eqz v10, :cond_6

    .line 556
    invoke-static {v10}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 559
    array-length v11, v10

    .line 560
    move v12, v5

    .line 561
    :goto_8
    if-ge v12, v11, :cond_7

    .line 563
    aget-object v13, v10, v12

    .line 565
    invoke-virtual {v13}, Ljava/io/File;->length()J

    .line 568
    move-result-wide v14

    .line 569
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 572
    move-result-object v14

    .line 573
    invoke-virtual {v13}, Ljava/io/File;->lastModified()J

    .line 576
    move-result-wide v15

    .line 577
    invoke-static/range {v15 .. v16}, Lcom/android/server/locksettings/LockSettingsService;->timestampToString(J)Ljava/lang/String;

    .line 580
    move-result-object v15

    .line 581
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 584
    move-result-object v13

    .line 585
    filled-new-array {v14, v15, v13}, [Ljava/lang/Object;

    .line 588
    move-result-object v13

    .line 589
    invoke-static {v9, v13}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 592
    move-result-object v13

    .line 593
    invoke-virtual {v2, v13}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 596
    add-int/lit8 v12, v12, 0x1

    .line 598
    goto :goto_8

    .line 599
    :cond_6
    const-string v9, "[Not found]"

    .line 601
    invoke-virtual {v2, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 604
    :cond_7
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 607
    iget v8, v8, Landroid/content/pm/UserInfo;->id:I

    .line 609
    invoke-static {v2, v8}, Lcom/samsung/android/lock/SPBnRManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;I)V

    .line 612
    goto :goto_7

    .line 613
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getRepairModePersistentDataFile()Ljava/io/File;

    .line 616
    move-result-object v7

    .line 617
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 620
    move-result v8

    .line 621
    if-eqz v8, :cond_b

    .line 623
    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 626
    move-result-object v8

    .line 627
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 630
    move-result-object v8

    .line 631
    const-string v10, "Repair Mode [%s]:"

    .line 633
    invoke-static {v10, v8}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 636
    move-result-object v8

    .line 637
    invoke-virtual {v2, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 640
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 643
    invoke-virtual {v7}, Ljava/io/File;->length()J

    .line 646
    move-result-wide v10

    .line 647
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 650
    move-result-object v8

    .line 651
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    .line 654
    move-result-wide v10

    .line 655
    invoke-static {v10, v11}, Lcom/android/server/locksettings/LockSettingsService;->timestampToString(J)Ljava/lang/String;

    .line 658
    move-result-object v10

    .line 659
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 662
    move-result-object v7

    .line 663
    filled-new-array {v8, v10, v7}, [Ljava/lang/Object;

    .line 666
    move-result-object v7

    .line 667
    invoke-static {v9, v7}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 670
    move-result-object v7

    .line 671
    invoke-virtual {v2, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 674
    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getRepairModePersistentDataFile()Ljava/io/File;

    .line 677
    move-result-object v7

    .line 678
    invoke-virtual {v0, v7}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/io/File;)[B

    .line 681
    move-result-object v0

    .line 682
    if-nez v0, :cond_9

    .line 684
    sget-object v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    .line 686
    goto :goto_9

    .line 687
    :cond_9
    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->fromBytes([B)Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    .line 690
    move-result-object v0

    .line 691
    :goto_9
    iget v7, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    .line 693
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 696
    move-result-object v7

    .line 697
    iget v8, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->userId:I

    .line 699
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 702
    move-result-object v8

    .line 703
    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->payload:[B

    .line 705
    if-eqz v0, :cond_a

    .line 707
    array-length v0, v0

    .line 708
    goto :goto_a

    .line 709
    :cond_a
    move v0, v5

    .line 710
    :goto_a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 713
    move-result-object v0

    .line 714
    filled-new-array {v7, v8, v0}, [Ljava/lang/Object;

    .line 717
    move-result-object v0

    .line 718
    const-string/jumbo v7, "type: %d, user id: %d, payload size: %d"

    .line 721
    invoke-static {v7, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 724
    move-result-object v0

    .line 725
    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 728
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 731
    :cond_b
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 734
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 737
    const-string v0, "StrongAuth:"

    .line 739
    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 742
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 745
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    .line 747
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 750
    const-string v7, "PrimaryAuthFlags state:"

    .line 752
    invoke-virtual {v2, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 755
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 758
    move v7, v5

    .line 759
    :goto_b
    iget-object v8, v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    .line 761
    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    .line 764
    move-result v8

    .line 765
    const-string/jumbo v9, "userId="

    .line 768
    if-ge v7, v8, :cond_c

    .line 770
    iget-object v8, v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    .line 772
    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 775
    move-result v8

    .line 776
    iget-object v10, v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    .line 778
    invoke-virtual {v10, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 781
    move-result v10

    .line 782
    const-string v11, ", primaryAuthFlags="

    .line 784
    invoke-static {v8, v9, v11}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    move-result-object v8

    .line 788
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 791
    move-result-object v9

    .line 792
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 798
    move-result-object v8

    .line 799
    invoke-virtual {v2, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 802
    add-int/lit8 v7, v7, 0x1

    .line 804
    goto :goto_b

    .line 805
    :cond_c
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 808
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 811
    const-string v7, "NonStrongBiometricAllowed state:"

    .line 813
    invoke-virtual {v2, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 816
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 819
    move v7, v5

    .line 820
    :goto_c
    iget-object v8, v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    .line 822
    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    .line 825
    move-result v8

    .line 826
    if-ge v7, v8, :cond_d

    .line 828
    iget-object v8, v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    .line 830
    invoke-virtual {v8, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 833
    move-result v8

    .line 834
    iget-object v10, v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    .line 836
    invoke-virtual {v10, v7}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 839
    move-result v10

    .line 840
    new-instance v11, Ljava/lang/StringBuilder;

    .line 842
    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 845
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 848
    const-string v8, ", allowed="

    .line 850
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 856
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 859
    move-result-object v8

    .line 860
    invoke-virtual {v2, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 863
    add-int/lit8 v7, v7, 0x1

    .line 865
    goto :goto_c

    .line 866
    :cond_d
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 869
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 872
    const-string/jumbo v7, "strong auth timeout state:"

    .line 875
    invoke-virtual {v2, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 878
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 881
    new-instance v7, Ljava/text/SimpleDateFormat;

    .line 883
    const-string/jumbo v8, "yyyy/MM/dd HH:mm:ss.SSS"

    .line 886
    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 889
    iget-object v8, v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 891
    const-string/jumbo v9, "lockscreen.strong_bio_timeout"

    .line 894
    invoke-virtual {v8, v9, v5}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricStrongAuthTimeout(Ljava/lang/String;I)J

    .line 897
    move-result-wide v8

    .line 898
    cmp-long v10, v8, v3

    .line 900
    if-eqz v10, :cond_e

    .line 902
    new-instance v10, Ljava/lang/StringBuilder;

    .line 904
    const-string/jumbo v11, "strong biometric timeout:"

    .line 907
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 910
    new-instance v11, Ljava/util/Date;

    .line 912
    invoke-direct {v11, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 915
    invoke-virtual {v7, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 918
    move-result-object v8

    .line 919
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 925
    move-result-object v8

    .line 926
    invoke-virtual {v2, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 929
    :cond_e
    iget-object v8, v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 931
    const-string/jumbo v9, "lockscreen.non_strong_bio_timeout"

    .line 934
    invoke-virtual {v8, v9, v5}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricStrongAuthTimeout(Ljava/lang/String;I)J

    .line 937
    move-result-wide v8

    .line 938
    cmp-long v10, v8, v3

    .line 940
    if-eqz v10, :cond_f

    .line 942
    new-instance v10, Ljava/lang/StringBuilder;

    .line 944
    const-string/jumbo v11, "non strong biometric timeout:"

    .line 947
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 950
    new-instance v11, Ljava/util/Date;

    .line 952
    invoke-direct {v11, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 955
    invoke-virtual {v7, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 958
    move-result-object v8

    .line 959
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 965
    move-result-object v8

    .line 966
    invoke-virtual {v2, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 969
    :cond_f
    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 971
    const-string/jumbo v8, "lockscreen.non_strong_bio_idle_timeout"

    .line 974
    invoke-virtual {v0, v8, v5}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricStrongAuthTimeout(Ljava/lang/String;I)J

    .line 977
    move-result-wide v8

    .line 978
    cmp-long v0, v8, v3

    .line 980
    if-eqz v0, :cond_10

    .line 982
    new-instance v0, Ljava/lang/StringBuilder;

    .line 984
    const-string/jumbo v3, "non strong biometric idle timeout:"

    .line 987
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 990
    new-instance v3, Ljava/util/Date;

    .line 992
    invoke-direct {v3, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 995
    invoke-virtual {v7, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 998
    move-result-object v3

    .line 999
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1005
    move-result-object v0

    .line 1006
    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1009
    :cond_10
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1012
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1015
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1018
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1021
    const-string v0, "RebootEscrow:"

    .line 1023
    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1026
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1029
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

    .line 1031
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1034
    const-string/jumbo v3, "mRebootEscrowWanted="

    .line 1037
    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1040
    iget-boolean v3, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowWanted:Z

    .line 1042
    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 1045
    const-string/jumbo v3, "mRebootEscrowReady="

    .line 1048
    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1051
    iget-boolean v3, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowReady:Z

    .line 1053
    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 1056
    const-string/jumbo v3, "mRebootEscrowListener="

    .line 1059
    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1062
    iget-object v3, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowListener:Lcom/android/internal/widget/RebootEscrowListener;

    .line 1064
    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1067
    const-string/jumbo v3, "mLoadEscrowDataErrorCode="

    .line 1070
    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1073
    iget v3, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mLoadEscrowDataErrorCode:I

    .line 1075
    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 1078
    iget-object v3, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyGenerationLock:Ljava/lang/Object;

    .line 1080
    monitor-enter v3

    .line 1081
    :try_start_4
    iget-object v4, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mPendingRebootEscrowKey:Lcom/android/server/locksettings/RebootEscrowKey;

    .line 1083
    if-eqz v4, :cond_11

    .line 1085
    goto :goto_d

    .line 1086
    :cond_11
    move v6, v5

    .line 1087
    :goto_d
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1088
    const-string/jumbo v3, "mPendingRebootEscrowKey is "

    .line 1091
    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1094
    if-eqz v6, :cond_12

    .line 1096
    const-string/jumbo v3, "set"

    .line 1099
    goto :goto_e

    .line 1100
    :cond_12
    const-string/jumbo v3, "not set"

    .line 1103
    :goto_e
    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1106
    iget-object v3, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    .line 1108
    iget-object v3, v3, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mRebootEscrowProvider:Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    .line 1110
    if-nez v3, :cond_13

    .line 1112
    const-string/jumbo v3, "null"

    .line 1115
    goto :goto_f

    .line 1116
    :cond_13
    invoke-interface {v3}, Lcom/android/server/locksettings/RebootEscrowProviderInterface;->getType()I

    .line 1119
    move-result v3

    .line 1120
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1123
    move-result-object v3

    .line 1124
    :goto_f
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1126
    const-string v6, "RebootEscrowProvider type is "

    .line 1128
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1131
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1134
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1137
    move-result-object v3

    .line 1138
    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1141
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1144
    const-string v3, "Event log:"

    .line 1146
    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1149
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1152
    iget-object v0, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    .line 1154
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1157
    new-instance v3, Ljava/text/SimpleDateFormat;

    .line 1159
    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 1162
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1164
    invoke-direct {v3, v4, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1167
    :goto_10
    iget-object v4, v0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mEntries:[Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

    .line 1169
    array-length v6, v4

    .line 1170
    if-ge v5, v6, :cond_16

    .line 1172
    iget v6, v0, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mNextIndex:I

    .line 1174
    add-int/2addr v6, v5

    .line 1175
    array-length v7, v4

    .line 1176
    rem-int/2addr v6, v7

    .line 1177
    aget-object v4, v4, v6

    .line 1179
    if-nez v4, :cond_14

    .line 1181
    goto :goto_12

    .line 1182
    :cond_14
    const-string v6, "Event #"

    .line 1184
    invoke-virtual {v2, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1187
    invoke-virtual {v2, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 1190
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1192
    const-string v7, " time="

    .line 1194
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1197
    new-instance v7, Ljava/util/Date;

    .line 1199
    iget-wide v8, v4, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;->mWallTime:J

    .line 1201
    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 1204
    invoke-virtual {v3, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 1207
    move-result-object v7

    .line 1208
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1211
    const-string v7, " (timestamp="

    .line 1213
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1216
    iget-wide v7, v4, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;->mTimestamp:J

    .line 1218
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1221
    const-string v7, ")"

    .line 1223
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1226
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1229
    move-result-object v6

    .line 1230
    invoke-virtual {v2, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1233
    const-string v6, " event="

    .line 1235
    invoke-virtual {v2, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1238
    iget v6, v4, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;->mEventId:I

    .line 1240
    packed-switch v6, :pswitch_data_0

    .line 1243
    const-string v7, "Unknown event ID "

    .line 1245
    invoke-static {v6, v7}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 1248
    move-result-object v6

    .line 1249
    goto :goto_11

    .line 1250
    :pswitch_0
    const-string v6, "Retrieved LSKF for user"

    .line 1252
    goto :goto_11

    .line 1253
    :pswitch_1
    const-string v6, "Stored LSKF for user"

    .line 1255
    goto :goto_11

    .line 1256
    :pswitch_2
    const-string v6, "Requested LSKF"

    .line 1258
    goto :goto_11

    .line 1259
    :pswitch_3
    const-string v6, "Retrieved stored KEK"

    .line 1261
    goto :goto_11

    .line 1262
    :pswitch_4
    const-string v6, "Cleared request for LSKF"

    .line 1264
    goto :goto_11

    .line 1265
    :pswitch_5
    const-string v6, "Set armed status"

    .line 1267
    goto :goto_11

    .line 1268
    :pswitch_6
    const-string v6, "Found escrow data"

    .line 1270
    :goto_11
    invoke-virtual {v2, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1273
    iget-object v4, v4, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;->mUserId:Ljava/lang/Integer;

    .line 1275
    if-eqz v4, :cond_15

    .line 1277
    const-string v6, " user="

    .line 1279
    invoke-virtual {v2, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1282
    invoke-virtual {v2, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1285
    :cond_15
    :goto_12
    add-int/lit8 v5, v5, 0x1

    .line 1287
    goto :goto_10

    .line 1288
    :cond_16
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1291
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1294
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1297
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1300
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1302
    const-string v3, "PasswordHandleCount: "

    .line 1304
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1307
    iget-object v3, v1, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    .line 1309
    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    .line 1312
    move-result v3

    .line 1313
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1316
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1319
    move-result-object v0

    .line 1320
    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1323
    iget-object v4, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserCreationAndRemovalLock:Ljava/lang/Object;

    .line 1325
    monitor-enter v4

    .line 1326
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1328
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1331
    const-string v3, "ThirdPartyAppsStarted: "

    .line 1333
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1336
    iget-boolean v1, v1, Lcom/android/server/locksettings/LockSettingsService;->mThirdPartyAppsStarted:Z

    .line 1338
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1341
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1344
    move-result-object v0

    .line 1345
    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1348
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1349
    const-string v0, "LSSLog:"

    .line 1351
    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1354
    invoke-static {v2}, Lcom/samsung/android/lock/LsLog;->dump(Ljava/io/PrintWriter;)V

    .line 1357
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1360
    return-void

    .line 1361
    :catchall_1
    move-exception v0

    .line 1362
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1363
    throw v0

    .line 1364
    :catchall_2
    move-exception v0

    .line 1365
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1366
    throw v0

    .line 1367
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final enforceFrpNotActive()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getMainUserId()I

    .line 13
    move-result v0

    .line 14
    if-gez v0, :cond_0

    .line 16
    const-string p0, "LockSettingsService"

    .line 18
    const-string v0, "No Main user on device; skipping enforceFrpNotActive"

    .line 20
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void

    .line 24
    :cond_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 26
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 29
    move-result-object v1

    .line 30
    const-string/jumbo v2, "user_setup_complete"

    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-static {v1, v2, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 37
    move-result v0

    .line 38
    const/4 v2, 0x1

    .line 39
    if-nez v0, :cond_1

    .line 41
    move v0, v2

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move v0, v3

    .line 44
    :goto_0
    invoke-static {}, Landroid/security/Flags;->frpEnforcement()Z

    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_3

    .line 50
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 52
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mContext:Landroid/content/Context;

    .line 54
    const-class v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 56
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 59
    move-result-object p0

    .line 60
    check-cast p0, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 62
    if-eqz p0, :cond_2

    .line 64
    invoke-virtual {p0}, Landroid/service/persistentdata/PersistentDataBlockManager;->isFactoryResetProtectionActive()Z

    .line 67
    move-result v3

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    const-string p0, "LockSettingsStorage"

    .line 71
    const-string v0, "Failed to get PersistentDataBlockManager"

    .line 73
    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    goto :goto_1

    .line 77
    :cond_3
    const-string/jumbo p0, "secure_frp_mode"

    .line 80
    invoke-static {v1, p0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 83
    move-result p0

    .line 84
    if-ne p0, v2, :cond_4

    .line 86
    if-eqz v0, :cond_4

    .line 88
    move v3, v2

    .line 89
    :cond_4
    :goto_1
    if-nez v3, :cond_5

    .line 91
    return-void

    .line 92
    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    .line 94
    const-string v0, "Cannot change credential while factory reset protection is active"

    .line 96
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 99
    throw p0
.end method

.method public final expirePreviousData()V
    .locals 6

    .line 1
    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 9
    const-string v0, "android.permission.SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS"

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 20
    const-string/jumbo v0, "expirePreviousData requires SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS or android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 23
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 26
    throw p0

    .line 27
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->getBackupLskfBasedProtectorId(I)J

    .line 31
    move-result-wide v1

    .line 32
    const-wide/16 v3, 0x0

    .line 34
    cmp-long v5, v3, v1

    .line 36
    if-nez v5, :cond_2

    .line 38
    return-void

    .line 39
    :cond_2
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 41
    monitor-enter v5

    .line 42
    :try_start_0
    invoke-virtual {p0, v0, v3, v4}, Lcom/android/server/locksettings/LockSettingsService;->setBackupLskfBasedProtectorId(IJ)V

    .line 45
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 47
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyLskfBasedProtector(IJ)V

    .line 50
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->invalidateCredentialTypeCache()V

    .line 54
    return-void

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    throw p0
.end method

.method public final generateKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->generateKeyWithMetadata(Ljava/lang/String;[B)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final generateKeyWithMetadata(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->generateKeyWithMetadata(Ljava/lang/String;[B)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final getBackupLskfBasedProtectorId(I)J
    .locals 3

    .line 1
    const-string v0, "backup-protector-id"

    .line 3
    const-wide/16 v1, 0x0

    .line 5
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    .line 8
    move-result-wide p0

    .line 9
    return-wide p0
.end method

.method public final getBoolean(Ljava/lang/String;ZI)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p3, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkDatabaseReadPermission(ILjava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->getBoolean(Ljava/lang/String;ZI)Z

    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final getCarrierLock(I)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 6
    iget p1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    .line 8
    const-string/jumbo v0, "getCarrierLock#mSKTLockState = "

    .line 11
    const-string v1, "LockSettingsStorage"

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    if-eqz p1, :cond_1

    .line 17
    if-eq p1, v3, :cond_0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    iget p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    .line 27
    invoke-static {p1, p0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 30
    :goto_0
    move v2, v3

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getCarrierLockFromFile()Z

    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_2

    .line 38
    iput v3, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    iget p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    .line 47
    invoke-static {p1, p0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/4 p1, 0x2

    .line 52
    iput p1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    .line 54
    :goto_1
    return v2
.end method

.method public final getCredentialType(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 3
    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 5
    const-string v2, "LockSettingsHave"

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialTypeInternal(I)I

    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final getCredentialTypeInternal(I)I
    .locals 10

    .line 1
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->isSpecialUserId(I)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, -0x1

    .line 7
    if-eqz v0, :cond_3

    .line 9
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getSpecialUserPersistentData(I)Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    .line 14
    move-result-object p0

    .line 15
    iget p1, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    .line 17
    const/4 v0, 0x1

    .line 18
    if-eq p1, v0, :cond_0

    .line 20
    if-eq p1, v1, :cond_0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->payload:[B

    .line 25
    if-nez p1, :cond_1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    .line 31
    move-result-object p1

    .line 32
    iget v2, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    .line 34
    if-eq v2, v1, :cond_2

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    iget p0, p0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->qualityForUi:I

    .line 39
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->pinOrPasswordQualityToCredentialType(I)I

    .line 42
    move-result v2

    .line 43
    :goto_0
    return v2

    .line 44
    :cond_3
    const/16 v0, -0x26ab

    .line 46
    const-wide/16 v3, 0x0

    .line 48
    if-ne p1, v0, :cond_7

    .line 50
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->isEnablePrevCredential()Z

    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_7

    .line 56
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 58
    monitor-enter v0

    .line 59
    const/4 p1, 0x0

    .line 60
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getBackupLskfBasedProtectorId(I)J

    .line 63
    move-result-wide v5

    .line 64
    cmp-long v3, v5, v3

    .line 66
    if-nez v3, :cond_4

    .line 68
    monitor-exit v0

    .line 69
    goto :goto_2

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    goto :goto_3

    .line 72
    :cond_4
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 74
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 76
    const-string/jumbo v3, "pwd"

    .line 79
    invoke-virtual {p0, p1, v3, v5, v6}, Lcom/android/server/locksettings/LockSettingsStorage;->readSyntheticPasswordState(ILjava/lang/String;J)[B

    .line 82
    move-result-object p0

    .line 83
    if-nez p0, :cond_5

    .line 85
    move p0, v2

    .line 86
    goto :goto_1

    .line 87
    :cond_5
    invoke-static {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    .line 90
    move-result-object p0

    .line 91
    iget p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    .line 93
    :goto_1
    if-eq p0, v1, :cond_6

    .line 95
    monitor-exit v0

    .line 96
    move v2, p0

    .line 97
    goto :goto_2

    .line 98
    :cond_6
    monitor-exit v0

    .line 99
    :goto_2
    return v2

    .line 100
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    throw p0

    .line 102
    :cond_7
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 104
    const-string/jumbo v5, "lockscreen.password_type"

    .line 107
    const/4 v6, 0x0

    .line 108
    invoke-virtual {v0, v5, v6, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 111
    move-result-object v0

    .line 112
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 115
    move-result v5

    .line 116
    if-eqz v5, :cond_8

    .line 118
    move-wide v7, v3

    .line 119
    goto :goto_4

    .line 120
    :cond_8
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 123
    move-result-wide v7

    .line 124
    :goto_4
    long-to-int v0, v7

    .line 125
    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->isQualitySmartCard(I)Z

    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_9

    .line 131
    const/4 p0, 0x6

    .line 132
    return p0

    .line 133
    :cond_9
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 135
    monitor-enter v0

    .line 136
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 139
    move-result-wide v7

    .line 140
    cmp-long v5, v7, v3

    .line 142
    if-nez v5, :cond_a

    .line 144
    monitor-exit v0

    .line 145
    return v2

    .line 146
    :catchall_1
    move-exception p0

    .line 147
    goto :goto_7

    .line 148
    :cond_a
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 150
    iget-object v5, v5, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 152
    const-string/jumbo v9, "pwd"

    .line 155
    invoke-virtual {v5, p1, v9, v7, v8}, Lcom/android/server/locksettings/LockSettingsStorage;->readSyntheticPasswordState(ILjava/lang/String;J)[B

    .line 158
    move-result-object v5

    .line 159
    if-nez v5, :cond_b

    .line 161
    goto :goto_5

    .line 162
    :cond_b
    invoke-static {v5}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    .line 165
    move-result-object v2

    .line 166
    iget v2, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    .line 168
    :goto_5
    if-eq v2, v1, :cond_c

    .line 170
    monitor-exit v0

    .line 171
    return v2

    .line 172
    :cond_c
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 174
    const-string/jumbo v1, "lockscreen.password_type"

    .line 177
    invoke-virtual {p0, v1, v6, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 180
    move-result-object p0

    .line 181
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 184
    move-result p1

    .line 185
    if-eqz p1, :cond_d

    .line 187
    goto :goto_6

    .line 188
    :cond_d
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 191
    move-result-wide v3

    .line 192
    :goto_6
    long-to-int p0, v3

    .line 193
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->pinOrPasswordQualityToCredentialType(I)I

    .line 196
    move-result p0

    .line 197
    monitor-exit v0

    .line 198
    return p0

    .line 199
    :goto_7
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 200
    throw p0
.end method

.method public getCurrentLskfBasedProtectorId(I)J
    .locals 3

    .line 1
    const-string/jumbo v0, "sp-handle"

    .line 4
    const-wide/16 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    .line 9
    move-result-wide p0

    .line 10
    return-wide p0
.end method

.method public getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object v0

    .line 5
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "LockSettingsService"

    .line 11
    const-string v2, "Decrypting password for tied profile %d"

    .line 13
    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 18
    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/io/File;

    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->readFile(Ljava/io/File;)[B

    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 28
    const/4 v2, 0x0

    .line 29
    const/16 v3, 0xc

    .line 31
    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 34
    move-result-object v4

    .line 35
    array-length v5, v0

    .line 36
    invoke-static {v0, v3, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 39
    move-result-object v0

    .line 40
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Ljava/security/KeyStore;

    .line 42
    new-instance v5, Ljava/lang/StringBuilder;

    .line 44
    const-string/jumbo v6, "profile_key_name_decrypt_"

    .line 47
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v5

    .line 57
    const/4 v6, 0x0

    .line 58
    invoke-virtual {v3, v5, v6}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Ljavax/crypto/SecretKey;

    .line 64
    const-string v5, "AES/GCM/NoPadding"

    .line 66
    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 69
    move-result-object v5

    .line 70
    new-instance v6, Ljavax/crypto/spec/GCMParameterSpec;

    .line 72
    const/16 v7, 0x80

    .line 74
    invoke-direct {v6, v7, v4}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 77
    const/4 v4, 0x2

    .line 78
    invoke-virtual {v5, v4, v3, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 81
    invoke-virtual {v5, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 84
    move-result-object v0

    .line 85
    invoke-static {v0}, Lcom/android/internal/widget/LockscreenCredential;->createUnifiedProfilePassword([B)Lcom/android/internal/widget/LockscreenCredential;

    .line 88
    move-result-object v3

    .line 89
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 92
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 95
    move-result-object v0

    .line 96
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 98
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 101
    move-result-object v2

    .line 102
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 104
    invoke-interface {v0, v2}, Landroid/service/gatekeeper/IGateKeeperService;->getSecureUserId(I)J

    .line 107
    move-result-wide v4

    .line 108
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUnifiedProfilePasswordCache:Lcom/android/server/locksettings/UnifiedProfilePasswordCache;

    .line 110
    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->storePassword(ILcom/android/internal/widget/LockscreenCredential;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    goto :goto_0

    .line 114
    :catch_0
    move-exception p0

    .line 115
    const-string p1, "Failed to talk to GateKeeper service"

    .line 117
    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    :goto_0
    return-object v3

    .line 121
    :cond_0
    new-instance p0, Ljava/io/FileNotFoundException;

    .line 123
    const-string p1, "Child profile lock file not found"

    .line 125
    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 128
    throw p0
.end method

.method public final getExpireTimeForPrev()J
    .locals 2

    .line 1
    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 9
    const-string v0, "android.permission.SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS"

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 20
    const-string/jumbo v0, "expirePreviousData requires SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS or android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 23
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 26
    throw p0

    .line 27
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->updateExpireTimeForPrev(Z)J

    .line 31
    move-result-wide v0

    .line 32
    return-wide v0
.end method

.method public final getFailureCount(I)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->isSupportWeaver()Z

    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 10
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 12
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getHermesService()Lcom/samsung/android/service/HermesService/IHermesService;

    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 19
    move-result-wide v3

    .line 20
    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getFailureCount(Lcom/samsung/android/service/HermesService/IHermesService;JI)I

    .line 23
    move-result v1

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_2

    .line 27
    :cond_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 29
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 36
    move-result-wide v3

    .line 37
    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getFailureCount(Landroid/service/gatekeeper/IGateKeeperService;JI)I

    .line 40
    move-result v1

    .line 41
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-static {p1, v1}, Lcom/samsung/android/lock/LsLog;->setFailureCount(II)V

    .line 45
    if-gez v1, :cond_1

    .line 47
    const-string p1, "LockSettingsService"

    .line 49
    const-string/jumbo v0, "getFailureCount error "

    .line 52
    invoke-static {v1, v0, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 57
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mResetDebugLevel:Lcom/android/server/locksettings/LockSettingsService$9;

    .line 59
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 62
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 64
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mResetDebugLevel:Lcom/android/server/locksettings/LockSettingsService$9;

    .line 66
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    const/4 v1, 0x0

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    sget p1, Lcom/samsung/android/lock/LsConstants;->SECURITY_DEBUG_ON_COUNT:I

    .line 73
    if-lt v1, p1, :cond_2

    .line 75
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 77
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mResetDebugLevel:Lcom/android/server/locksettings/LockSettingsService$9;

    .line 79
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 82
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 84
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mResetDebugLevel:Lcom/android/server/locksettings/LockSettingsService$9;

    .line 86
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    :cond_2
    :goto_1
    return v1

    .line 90
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    throw p0
.end method

.method public final declared-synchronized getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    monitor-exit p0

    .line 7
    return-object v0

    .line 8
    :cond_0
    :try_start_1
    const-string v0, "android.service.gatekeeper.IGateKeeperService"

    .line 10
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 13
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    if-eqz v0, :cond_1

    .line 16
    :try_start_2
    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;

    .line 18
    invoke-direct {v1, p0}, Lcom/android/server/locksettings/LockSettingsService$DualDARCallback;-><init>(Lcom/android/server/locksettings/LockSettingsService;)V

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    goto :goto_1

    .line 28
    :catch_0
    move-exception v1

    .line 29
    :try_start_3
    const-string v2, "LockSettingsService"

    .line 31
    const-string v3, " Unable to register death recipient"

    .line 33
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    :goto_0
    invoke-static {v0}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/gatekeeper/IGateKeeperService;

    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 42
    monitor-exit p0

    .line 43
    return-object v0

    .line 44
    :cond_1
    :try_start_4
    const-string v0, "LockSettingsService"

    .line 46
    const-string v1, "Unable to acquire GateKeeperService"

    .line 48
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 51
    monitor-exit p0

    .line 52
    const/4 p0, 0x0

    .line 53
    return-object p0

    .line 54
    :goto_1
    monitor-exit p0

    .line 55
    throw v0
.end method

.method public final getHashFactor(Lcom/android/internal/widget/LockscreenCredential;I)[B
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 4
    :try_start_0
    const-string v0, "LockSettingsService"

    .line 6
    const-string v1, "Getting password history hash factor for user %d"

    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v2

    .line 12
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    invoke-static {v0, v1, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithUnifiedLock(I)Z

    .line 22
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz v0, :cond_0

    .line 26
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    .line 29
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    :cond_0
    move-object v6, p1

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_5

    .line 34
    :catch_0
    move-exception p0

    .line 35
    :try_start_2
    const-string p1, "LockSettingsService"

    .line 37
    const-string p2, "Failed to get unified profile password"

    .line 39
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 45
    return-object v1

    .line 46
    :goto_0
    :try_start_3
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 48
    monitor-enter p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 49
    const/16 v0, -0x26ab

    .line 51
    const/4 v2, 0x0

    .line 52
    if-ne p2, v0, :cond_1

    .line 54
    :try_start_4
    const-string p2, "LockSettingsService"

    .line 56
    const-string v0, "!@ getHashFactor with prev!!!"

    .line 58
    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 p2, 0x1

    .line 62
    move v7, v2

    .line 63
    move v2, p2

    .line 64
    goto :goto_1

    .line 65
    :catchall_1
    move-exception p0

    .line 66
    goto :goto_4

    .line 67
    :cond_1
    move v7, p2

    .line 68
    :goto_1
    if-eqz v2, :cond_2

    .line 70
    invoke-virtual {p0, v7}, Lcom/android/server/locksettings/LockSettingsService;->getBackupLskfBasedProtectorId(I)J

    .line 73
    move-result-wide v2

    .line 74
    :goto_2
    move-wide v4, v2

    .line 75
    goto :goto_3

    .line 76
    :cond_2
    invoke-virtual {p0, v7}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 79
    move-result-wide v2

    .line 80
    goto :goto_2

    .line 81
    :goto_3
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 83
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 86
    move-result-object v3

    .line 87
    const/4 v8, 0x0

    .line 88
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    .line 91
    move-result-object p0

    .line 92
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 94
    if-nez p0, :cond_3

    .line 96
    const-string p0, "LockSettingsService"

    .line 98
    const-string p2, "Current credential is incorrect"

    .line 100
    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 104
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 107
    return-object v1

    .line 108
    :cond_3
    :try_start_5
    sget-object p2, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_PASSWORD_HASH:[B

    .line 110
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveSubkey([B)[B

    .line 113
    move-result-object p0

    .line 114
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 115
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 118
    return-object p0

    .line 119
    :goto_4
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 120
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 121
    :goto_5
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 124
    throw p0
.end method

.method public final declared-synchronized getHermesService()Lcom/samsung/android/service/HermesService/IHermesService;
    .locals 3

    .line 1
    const-string/jumbo v0, "getHermesService() is "

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mHermesService:Lcom/samsung/android/service/HermesService/IHermesService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    if-eqz v1, :cond_0

    .line 9
    monitor-exit p0

    .line 10
    return-object v1

    .line 11
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 13
    const-string/jumbo v2, "sepunion"

    .line 16
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/samsung/android/sepunion/SemUnionManager;

    .line 22
    const-string v2, "HermesService"

    .line 24
    invoke-virtual {v1, v2}, Lcom/samsung/android/sepunion/SemUnionManager;->getSemSystemService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1}, Lcom/samsung/android/service/HermesService/IHermesService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/HermesService/IHermesService;

    .line 31
    move-result-object v1

    .line 32
    iput-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mHermesService:Lcom/samsung/android/service/HermesService/IHermesService;

    .line 34
    const-string v1, "LockSettingsService"

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHermesService:Lcom/samsung/android/service/HermesService/IHermesService;

    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHermesService:Lcom/samsung/android/service/HermesService/IHermesService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    monitor-exit p0

    .line 56
    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    monitor-exit p0

    .line 59
    throw v0
.end method

.method public final getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 6
    const-string v0, "alias is null"

    .line 8
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 14
    move-result v0

    .line 15
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 18
    move-result v1

    .line 19
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getAlias(IILjava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public final getKeyChainSnapshot()Landroid/security/keystore/recovery/KeyChainSnapshot;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 9
    move-result v0

    .line 10
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mSnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;->get(I)Landroid/security/keystore/recovery/KeyChainSnapshot;

    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_0

    .line 18
    return-object p0

    .line 19
    :cond_0
    new-instance p0, Landroid/os/ServiceSpecificException;

    .line 21
    const/16 v0, 0x15

    .line 23
    invoke-direct {p0, v0}, Landroid/os/ServiceSpecificException;-><init>(I)V

    .line 26
    throw p0
.end method

.method public final getLong(Ljava/lang/String;JI)J
    .locals 1

    .line 1
    invoke-virtual {p0, p4, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkDatabaseReadPermission(ILjava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0, p4}, Lcom/android/server/locksettings/LockSettingsStorage;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 21
    move-result-wide p2

    .line 22
    :goto_0
    return-wide p2
.end method

.method public final getPinLength(I)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 3
    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 5
    const-string v2, "LockSettingsHave"

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getUserPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;

    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 16
    iget v1, v0, Landroid/app/admin/PasswordMetrics;->credType:I

    .line 18
    const/4 v2, 0x3

    .line 19
    if-ne v1, v2, :cond_0

    .line 21
    iget p0, v0, Landroid/app/admin/PasswordMetrics;->length:I

    .line 23
    return p0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 26
    monitor-enter v0

    .line 27
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 30
    move-result-wide v1

    .line 31
    const-wide/16 v3, 0x0

    .line 33
    cmp-long v3, v1, v3

    .line 35
    const/4 v4, -0x1

    .line 36
    if-nez v3, :cond_1

    .line 38
    monitor-exit v0

    .line 39
    return v4

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 44
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 46
    const-string/jumbo v3, "pwd"

    .line 49
    invoke-virtual {p0, p1, v3, v1, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->readSyntheticPasswordState(ILjava/lang/String;J)[B

    .line 52
    move-result-object p0

    .line 53
    if-nez p0, :cond_2

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    invoke-static {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    .line 59
    move-result-object p0

    .line 60
    iget v4, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->pinLength:I

    .line 62
    :goto_0
    monitor-exit v0

    .line 63
    return v4

    .line 64
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    throw p0
.end method

.method public final getProfilesWithSameLockScreen(I)Ljava/util/Set;
    .locals 5

    .line 1
    new-instance v0, Landroid/util/ArraySet;

    .line 3
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 8
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_2

    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 28
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    .line 30
    if-eq v3, p1, :cond_1

    .line 32
    iget v4, v2, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 34
    if-ne v4, p1, :cond_0

    .line 36
    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithUnifiedLock(I)Z

    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_0

    .line 42
    :cond_1
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 44
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    return-object v0
.end method

.method public final getRecoverySecretTypes()[I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 6
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 9
    move-result v0

    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 13
    move-result v1

    .line 14
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 16
    invoke-virtual {p0, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getRecoverySecretTypes(II)[I

    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public final getRecoveryStatus()Ljava/util/Map;
    .locals 11

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 9
    move-result v0

    .line 10
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 12
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    .line 14
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 17
    move-result-object v1

    .line 18
    const-string p0, "_id"

    .line 20
    const-string v9, "alias"

    .line 22
    const-string/jumbo v10, "recovery_status"

    .line 25
    filled-new-array {p0, v9, v10}, [Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    filled-new-array {p0}, [Ljava/lang/String;

    .line 36
    move-result-object v5

    .line 37
    const/4 v7, 0x0

    .line 38
    const/4 v8, 0x0

    .line 39
    const-string/jumbo v2, "keys"

    .line 42
    const-string/jumbo v4, "uid = ?"

    .line 45
    const/4 v6, 0x0

    .line 46
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 49
    move-result-object p0

    .line 50
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    .line 52
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 55
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_0

    .line 61
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 64
    move-result v1

    .line 65
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 68
    move-result-object v1

    .line 69
    invoke-interface {p0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 72
    move-result v2

    .line 73
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 76
    move-result v2

    .line 77
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    .line 86
    goto :goto_1

    .line 87
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 90
    return-object v0

    .line 91
    :goto_1
    if-eqz p0, :cond_1

    .line 93
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 96
    goto :goto_2

    .line 97
    :catchall_1
    move-exception p0

    .line 98
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 101
    :cond_1
    :goto_2
    throw v0
.end method

.method public final getSeparateProfileChallengeEnabled(I)Z
    .locals 1

    .line 1
    const-string/jumbo v0, "lockscreen.profilechallenge"

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsService;->checkDatabaseReadPermission(ILjava/lang/String;)V

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final getSeparateProfileChallengeEnabledInternal(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 6
    const-string/jumbo v1, "lockscreen.profilechallenge"

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getBoolean(Ljava/lang/String;ZI)Z

    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
.end method

.method public final getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p3, p1}, Lcom/android/server/locksettings/LockSettingsService;->checkDatabaseReadPermission(ILjava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final getStrongAuthForUser(I)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuthTracker:Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;->getStrongAuthForUser(I)I

    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public getUserPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    new-instance p0, Landroid/app/admin/PasswordMetrics;

    .line 9
    const/4 p1, -0x1

    .line 10
    invoke-direct {p0, p1}, Landroid/app/admin/PasswordMetrics;-><init>(I)V

    .line 13
    return-object p0

    .line 14
    :cond_0
    monitor-enter p0

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserPasswordMetrics:Landroid/util/SparseArray;

    .line 17
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Landroid/app/admin/PasswordMetrics;

    .line 23
    monitor-exit p0

    .line 24
    return-object p1

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p1
.end method

.method public final hasPendingEscrowToken(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getPendingTokensForUser(I)Ljava/util/Set;

    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    .line 16
    move-result p0

    .line 17
    xor-int/lit8 p0, p0, 0x1

    .line 19
    monitor-exit v0

    .line 20
    return p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method

.method public final hasPermission(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public final hasSecureLockScreen()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHasSecureLockScreen:Z

    .line 3
    return p0
.end method

.method public final haveAppLockBackupPin(I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string v0, "applockbackuppin.key"

    .line 8
    invoke-static {p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/io/File;)Z

    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public final haveAppLockFingerprintPassword(I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string v0, "applockfingerprintpassword.key"

    .line 8
    invoke-static {p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/io/File;)Z

    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public final haveAppLockPassword(I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string v0, "applockpassword.key"

    .line 8
    invoke-static {p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/io/File;)Z

    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public final haveAppLockPattern(I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string v0, "applockpattern.key"

    .line 8
    invoke-static {p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/io/File;)Z

    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public final haveAppLockPin(I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string v0, "applockpin.key"

    .line 8
    invoke-static {p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/io/File;)Z

    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public final haveCarrierPassword(I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string/jumbo v0, "sktpassword.key"

    .line 9
    invoke-static {p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/io/File;)Z

    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final haveFMMPassword(I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string/jumbo v0, "fmmpassword.key"

    .line 9
    invoke-static {p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/io/File;)Z

    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final importKey(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->importKeyWithMetadata(Ljava/lang/String;[B[B)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final importKeyWithMetadata(Ljava/lang/String;[B[B)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->importKeyWithMetadata(Ljava/lang/String;[B[B)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public initKeystoreSuperKeys(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Z)V
    .locals 2

    .line 1
    const-string p0, "Failed to initialize Keystore super keys for user "

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_KEY_STORE_PASSWORD:[B

    .line 8
    invoke-virtual {p2, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveSubkey([B)[B

    .line 11
    move-result-object p2

    .line 12
    invoke-static {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->bytesToHex([B)[B

    .line 15
    move-result-object p2

    .line 16
    const/4 v0, 0x0

    .line 17
    :try_start_0
    invoke-static {p1, p2, p3}, Landroid/security/AndroidKeyStoreMaintenance;->initUserSuperKeys(I[BZ)I

    .line 20
    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    if-nez p3, :cond_0

    .line 23
    invoke-static {p2, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 26
    return-void

    .line 27
    :cond_0
    :try_start_1
    new-instance p3, Ljava/lang/IllegalStateException;

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 41
    invoke-direct {p3, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    throw p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    invoke-static {p2, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 49
    throw p0
.end method

.method public final initRecoveryServiceWithSigFile(Ljava/lang/String;[B[B)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 3
    const-string v0, "RecoverableKeyStoreMgr"

    .line 5
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 8
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mTestCertHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-static {p1}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    const-string/jumbo v1, "recoveryServiceCertFile is null"

    .line 20
    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    const-string/jumbo v1, "recoveryServiceSigFile is null"

    .line 26
    invoke-static {p3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    :try_start_0
    invoke-static {p3}, Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;->parse([B)Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;

    .line 32
    move-result-object v1
    :try_end_0
    .catch Lcom/android/server/locksettings/recoverablekeystore/certificate/CertParsingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 33
    invoke-static {p1}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getRootCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    .line 36
    move-result-object v2

    .line 37
    invoke-static {p1}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getValidationDate(Ljava/lang/String;)Ljava/util/Date;

    .line 40
    move-result-object v3

    .line 41
    :try_start_1
    invoke-virtual {v1, v2, p2, v3}, Lcom/android/server/locksettings/recoverablekeystore/certificate/SigXml;->verifyFileSignature(Ljava/security/cert/X509Certificate;[BLjava/util/Date;)V
    :try_end_1
    .catch Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->initRecoveryService(Ljava/lang/String;[B)V

    .line 47
    return-void

    .line 48
    :catch_0
    move-exception p0

    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    .line 51
    const-string v1, "The signature over the cert file is invalid. Cert: "

    .line 53
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-static {p2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string p2, " Sig: "

    .line 65
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-static {p3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 79
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance p1, Landroid/os/ServiceSpecificException;

    .line 84
    const/16 p2, 0x1c

    .line 86
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 89
    move-result-object p0

    .line 90
    invoke-direct {p1, p2, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 93
    throw p1

    .line 94
    :catch_1
    move-exception p0

    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    .line 97
    const-string p2, "Failed to parse the sig file: "

    .line 99
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-static {p3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    .line 105
    move-result-object p2

    .line 106
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object p1

    .line 113
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance p1, Landroid/os/ServiceSpecificException;

    .line 118
    const/16 p2, 0x19

    .line 120
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 123
    move-result-object p0

    .line 124
    invoke-direct {p1, p2, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 127
    throw p1
.end method

.method public initializeSyntheticPassword(I)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;
    .locals 12

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "Initialize sp for user "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 18
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 21
    move-result v0

    .line 22
    const-string/jumbo v1, "initializeSP"

    .line 25
    invoke-static {p1, v0, v1}, Lcom/samsung/android/lock/LsLog;->enrollRequest(IILjava/lang/String;)V

    .line 28
    const-string v0, "Enroll [User %d NONE][initializeSP]"

    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v1

    .line 34
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Lcom/samsung/android/lock/LsLog;->enroll(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 47
    monitor-enter v0

    .line 48
    :try_start_0
    const-string v1, "LockSettingsService"

    .line 50
    const-string v2, "Initializing synthetic password for user %d"

    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    move-result-object v3

    .line 56
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 59
    move-result-object v3

    .line 60
    invoke-static {v1, v2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 66
    move-result-wide v1

    .line 67
    const-wide/16 v3, 0x0

    .line 69
    cmp-long v1, v1, v3

    .line 71
    const/4 v2, 0x0

    .line 72
    const/4 v3, 0x1

    .line 73
    if-nez v1, :cond_0

    .line 75
    move v1, v3

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    move v1, v2

    .line 78
    :goto_0
    const-string v4, "Cannot reinitialize SP"

    .line 80
    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 85
    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->newSyntheticPassword(I)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 88
    move-result-object v1

    .line 89
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 91
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 94
    move-result-object v5

    .line 95
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    .line 98
    move-result-object v9

    .line 99
    const/4 v6, 0x0

    .line 100
    const-wide/16 v7, 0x0

    .line 102
    move-object v10, v1

    .line 103
    move v11, p1

    .line 104
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/internal/widget/LockscreenCredential;JLcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)J

    .line 107
    move-result-wide v4

    .line 108
    invoke-virtual {p0, p1, v4, v5}, Lcom/android/server/locksettings/LockSettingsService;->setCurrentLskfBasedProtectorId(IJ)V

    .line 111
    invoke-virtual {p0, p1, v1}, Lcom/android/server/locksettings/LockSettingsService;->setCeStorageProtection(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    .line 114
    sget-boolean v4, Lcom/android/server/locksettings/LockSettingsService;->FIX_UNLOCKED_DEVICE_REQUIRED_KEYS:Z

    .line 116
    if-eqz v4, :cond_1

    .line 118
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/locksettings/LockSettingsService;->initKeystoreSuperKeys(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Z)V

    .line 121
    goto :goto_1

    .line 122
    :catchall_0
    move-exception p0

    .line 123
    goto :goto_2

    .line 124
    :cond_1
    :goto_1
    invoke-virtual {p0, p1, v1, v3}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordKnown(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Z)V

    .line 127
    const-string p0, "LockSettingsService"

    .line 129
    const-string v2, "Successfully initialized synthetic password for user %d"

    .line 131
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    move-result-object v4

    .line 135
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 138
    move-result-object v4

    .line 139
    invoke-static {p0, v2, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    invoke-static {p1}, Lcom/samsung/android/lock/SPBnRManager;->getPWFilelist(I)Ljava/lang/String;

    .line 145
    move-result-object p0

    .line 146
    invoke-static {p0, v3}, Lcom/samsung/android/lock/LsLog;->enroll(Ljava/lang/String;Z)V

    .line 149
    monitor-exit v0

    .line 150
    return-object v1

    .line 151
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    throw p0
.end method

.method public final isCeStorageUnlocked(I)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    .line 3
    invoke-interface {p0, p1}, Landroid/os/storage/IStorageManager;->isCeStorageUnlocked(I)Z

    .line 6
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    const-string p1, "LockSettingsService"

    .line 11
    const-string v0, "Error checking whether CE storage is unlocked"

    .line 13
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    const/4 p0, 0x0

    .line 17
    return p0
.end method

.method public isCredentialSharableWithParent(I)Z
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManagerCache:Ljava/util/HashMap;

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManagerCache:Ljava/util/HashMap;

    .line 15
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Landroid/os/UserManager;

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 24
    const-string/jumbo v1, "system"

    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {v0, v1, v2, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    .line 31
    move-result-object v0

    .line 32
    const-class v1, Landroid/os/UserManager;

    .line 34
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/os/UserManager;

    .line 40
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManagerCache:Ljava/util/HashMap;

    .line 42
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    move-object p0, v0

    .line 46
    :goto_0
    invoke-virtual {p0}, Landroid/os/UserManager;->isCredentialSharableWithParent()Z

    .line 49
    move-result p0

    .line 50
    return p0

    .line 51
    :catch_0
    move-exception p0

    .line 52
    new-instance v0, Ljava/lang/RuntimeException;

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    const-string v2, "Failed to create context for user "

    .line 58
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    invoke-direct {v0, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    throw v0
.end method

.method public final isEscrowTokenActive(JI)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 6
    const-string/jumbo v1, "spblob"

    .line 9
    invoke-virtual {p0, p3, v1, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(ILjava/lang/String;J)Z

    .line 12
    move-result p0

    .line 13
    monitor-exit v0

    .line 14
    return p0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method

.method public final isKnoxAdminActivated(I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string/jumbo p0, "enterprise_policy"

    .line 9
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_0

    .line 19
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->isMdmAdminPresentAsUser(I)Z

    .line 22
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return p0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    const-string p1, "LockSettingsService"

    .line 27
    const-string v0, "Failed talking with enterprise policy service"

    .line 29
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    return p0
.end method

.method public final isProfileWithUnifiedLock(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_0

    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public final isRemoteLock(I)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->haveFMMPassword(I)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCarrierLock(I)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 13
    const/4 v0, 0x0

    .line 14
    move v1, v0

    .line 15
    :goto_0
    const/4 v2, 0x4

    .line 16
    if-ge v1, v2, :cond_2

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string/jumbo v3, "locked"

    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {p0, v2, v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    :goto_1
    const/4 v0, 0x1

    .line 47
    :cond_2
    return v0
.end method

.method public final isSupportWeaver()Z
    .locals 1

    .line 1
    const-string/jumbo p0, "security.securehw.available"

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final isSyntheticPasswordBasedCredentialLocked(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 4
    move-result-wide p0

    .line 5
    const-wide/16 v0, 0x0

    .line 7
    cmp-long p0, p0, v0

    .line 9
    if-eqz p0, :cond_0

    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public final isUserSecure(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialTypeInternal(I)I

    .line 4
    move-result p0

    .line 5
    const/4 p1, -0x1

    .line 6
    if-eq p0, p1, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public final isWeakEscrowTokenActive(JI)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkManageWeakEscrowTokenMethodUsage()V

    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->isEscrowTokenActive(JI)Z

    .line 11
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    throw p0
.end method

.method public final isWeakEscrowTokenValid(J[BI)Z
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkManageWeakEscrowTokenMethodUsage()V

    .line 5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    move-result-wide v1

    .line 9
    :try_start_0
    iget-object v3, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 11
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :try_start_1
    iget-object v4, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 14
    move/from16 v11, p4

    .line 16
    invoke-virtual {v4, v11}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    .line 19
    move-result v4

    .line 20
    const/4 v12, 0x0

    .line 21
    if-nez v4, :cond_0

    .line 23
    const-string v0, "LockSettingsService"

    .line 25
    const-string v4, "Escrow token is disabled on the current user"

    .line 27
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    return v12

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    :try_start_2
    iget-object v5, v0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 39
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 42
    move-result-object v6

    .line 43
    const/4 v9, 0x2

    .line 44
    move-wide v7, p1

    .line 45
    move-object/from16 v10, p3

    .line 47
    move/from16 v11, p4

    .line 49
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockTokenBasedProtectorInternal(Landroid/service/gatekeeper/IGateKeeperService;JB[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    .line 52
    move-result-object v0

    .line 53
    iget-object v0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 55
    if-nez v0, :cond_1

    .line 57
    const-string v0, "LockSettingsService"

    .line 59
    const-string v4, "Invalid escrow token supplied"

    .line 61
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 68
    return v12

    .line 69
    :cond_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 73
    const/4 v0, 0x1

    .line 74
    return v0

    .line 75
    :goto_0
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 76
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 77
    :catchall_1
    move-exception v0

    .line 78
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 81
    throw v0
.end method

.method public final loadPasswordMetrics(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)Landroid/app/admin/PasswordMetrics;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 10
    monitor-exit v0

    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 20
    move-result-wide v2

    .line 21
    invoke-virtual {v1, p1, v2, v3, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getPasswordMetrics(IJLcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)Landroid/app/admin/PasswordMetrics;

    .line 24
    move-result-object p0

    .line 25
    monitor-exit v0

    .line 26
    return-object p0

    .line 27
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method

.method public final maybeShowEncryptionNotificationForUser(ILjava/lang/String;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isCeStorageUnlocked(I)Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 20
    return-void

    .line 21
    :cond_1
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_f

    .line 31
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 33
    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_f

    .line 39
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 41
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_f

    .line 47
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 49
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_f

    .line 59
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 61
    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_f

    .line 67
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 70
    move-result-object v7

    .line 71
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 74
    move-result p1

    .line 75
    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_2

    .line 81
    goto/16 :goto_5

    .line 83
    :cond_2
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 86
    move-result p1

    .line 87
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 90
    move-result p1

    .line 91
    const/4 v1, 0x1

    .line 92
    if-eqz p1, :cond_3

    .line 94
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 103
    move-result v2

    .line 104
    const-string v3, "automatic_data_decryption"

    .line 106
    const/4 v4, 0x0

    .line 107
    invoke-static {p1, v3, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 110
    move-result p1

    .line 111
    if-ne p1, v1, :cond_3

    .line 113
    goto/16 :goto_5

    .line 115
    :cond_3
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 118
    move-result p1

    .line 119
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 122
    move-result v2

    .line 123
    if-eqz v2, :cond_4

    .line 125
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 130
    move-result-object p1

    .line 131
    const v2, 0x1040c4b

    .line 134
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 137
    move-result-object p1

    .line 138
    goto :goto_0

    .line 139
    :cond_4
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 141
    invoke-virtual {v2}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getPersonaService()Ljava/util/Optional;

    .line 144
    move-result-object v2

    .line 145
    new-instance v3, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda5;

    .line 147
    const/4 v4, 0x0

    .line 148
    invoke-direct {v3, p1, v4}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda5;-><init>(II)V

    .line 151
    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 154
    move-result-object p1

    .line 155
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 157
    invoke-virtual {p1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    move-result-object p1

    .line 161
    check-cast p1, Ljava/lang/Boolean;

    .line 163
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 166
    move-result p1

    .line 167
    const-string v2, "Core.PROFILE_ENCRYPTED_TITLE"

    .line 169
    if-eqz p1, :cond_6

    .line 171
    const-string/jumbo p1, "ro.build.characteristics"

    .line 174
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 177
    move-result-object p1

    .line 178
    if-eqz p1, :cond_5

    .line 180
    const-string/jumbo v3, "tablet"

    .line 183
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 186
    move-result p1

    .line 187
    if-eqz p1, :cond_5

    .line 189
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 191
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    .line 194
    move-result-object p1

    .line 195
    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 198
    move-result-object p1

    .line 199
    new-instance v3, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda6;

    .line 201
    const/4 v4, 0x0

    .line 202
    invoke-direct {v3, p0, v4}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    .line 205
    invoke-virtual {p1, v2, v3}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 208
    move-result-object p1

    .line 209
    goto :goto_0

    .line 210
    :cond_5
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 212
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    .line 215
    move-result-object p1

    .line 216
    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 219
    move-result-object p1

    .line 220
    new-instance v3, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda6;

    .line 222
    const/4 v4, 0x4

    .line 223
    invoke-direct {v3, p0, v4}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    .line 226
    invoke-virtual {p1, v2, v3}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 229
    move-result-object p1

    .line 230
    goto :goto_0

    .line 231
    :cond_6
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 233
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    .line 236
    move-result-object p1

    .line 237
    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 240
    move-result-object p1

    .line 241
    new-instance v3, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda6;

    .line 243
    const/4 v4, 0x5

    .line 244
    invoke-direct {v3, p0, v4}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    .line 247
    invoke-virtual {p1, v2, v3}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 250
    move-result-object p1

    .line 251
    :goto_0
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 254
    move-result v2

    .line 255
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 258
    move-result v3

    .line 259
    if-eqz v3, :cond_7

    .line 261
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 263
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 266
    move-result-object v2

    .line 267
    const v3, 0x1040c47

    .line 270
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 273
    move-result-object v2

    .line 274
    :goto_1
    move-object v8, v2

    .line 275
    goto :goto_2

    .line 276
    :cond_7
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 278
    invoke-virtual {v3}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getPersonaService()Ljava/util/Optional;

    .line 281
    move-result-object v3

    .line 282
    new-instance v4, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda5;

    .line 284
    const/4 v5, 0x1

    .line 285
    invoke-direct {v4, v2, v5}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda5;-><init>(II)V

    .line 288
    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 291
    move-result-object v2

    .line 292
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 294
    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    move-result-object v2

    .line 298
    check-cast v2, Ljava/lang/Boolean;

    .line 300
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 303
    move-result v2

    .line 304
    const-string v3, "Core.PROFILE_ENCRYPTED_MESSAGE"

    .line 306
    if-eqz v2, :cond_8

    .line 308
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 310
    invoke-virtual {v2}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    .line 313
    move-result-object v2

    .line 314
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 317
    move-result-object v2

    .line 318
    new-instance v4, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda6;

    .line 320
    const/4 v5, 0x1

    .line 321
    invoke-direct {v4, p0, v5}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    .line 324
    invoke-virtual {v2, v3, v4}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 327
    move-result-object v2

    .line 328
    goto :goto_1

    .line 329
    :cond_8
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 331
    invoke-virtual {v2}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    .line 334
    move-result-object v2

    .line 335
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 338
    move-result-object v2

    .line 339
    new-instance v4, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda6;

    .line 341
    const/4 v5, 0x2

    .line 342
    invoke-direct {v4, p0, v5}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    .line 345
    invoke-virtual {v2, v3, v4}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 348
    move-result-object v2

    .line 349
    goto :goto_1

    .line 350
    :goto_2
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 353
    move-result v2

    .line 354
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 357
    move-result v3

    .line 358
    const/4 v9, 0x0

    .line 359
    if-eqz v3, :cond_a

    .line 361
    :cond_9
    move-object v10, v9

    .line 362
    goto :goto_3

    .line 363
    :cond_a
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 365
    invoke-virtual {v3}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getPersonaService()Ljava/util/Optional;

    .line 368
    move-result-object v3

    .line 369
    new-instance v4, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda5;

    .line 371
    const/4 v5, 0x2

    .line 372
    invoke-direct {v4, v2, v5}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda5;-><init>(II)V

    .line 375
    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 378
    move-result-object v2

    .line 379
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 381
    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    move-result-object v2

    .line 385
    check-cast v2, Ljava/lang/Boolean;

    .line 387
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 390
    move-result v2

    .line 391
    if-eqz v2, :cond_9

    .line 393
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 395
    invoke-virtual {v2}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    .line 398
    move-result-object v2

    .line 399
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 402
    move-result-object v2

    .line 403
    new-instance v3, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda6;

    .line 405
    const/4 v4, 0x3

    .line 406
    invoke-direct {v3, p0, v4}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    .line 409
    const-string v4, "Core.PROFILE_ENCRYPTED_DETAIL"

    .line 411
    invoke-virtual {v2, v4, v3}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 414
    move-result-object v2

    .line 415
    move-object v10, v2

    .line 416
    :goto_3
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 418
    const-string/jumbo v3, "keyguard"

    .line 421
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 424
    move-result-object v2

    .line 425
    check-cast v2, Landroid/app/KeyguardManager;

    .line 427
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 430
    move-result v3

    .line 431
    invoke-virtual {v2, v9, v9, v3}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    .line 434
    move-result-object v4

    .line 435
    if-nez v4, :cond_b

    .line 437
    goto/16 :goto_5

    .line 439
    :cond_b
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    .line 442
    move-result v2

    .line 443
    if-nez v2, :cond_c

    .line 445
    goto/16 :goto_5

    .line 447
    :cond_c
    const/high16 v2, 0x10800000

    .line 449
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 452
    invoke-static {}, Landroid/app/admin/flags/Flags;->hsumUnlockNotificationFix()Z

    .line 455
    move-result v2

    .line 456
    if-eqz v2, :cond_d

    .line 458
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 460
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 463
    move-result v3

    .line 464
    const/high16 v5, 0xa000000

    .line 466
    const/4 v6, 0x0

    .line 467
    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 470
    move-result-object v2

    .line 471
    goto :goto_4

    .line 472
    :cond_d
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 474
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 477
    move-result v3

    .line 478
    const/high16 v5, 0xa000000

    .line 480
    invoke-static {v2, v3, v4, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 483
    move-result-object v2

    .line 484
    :goto_4
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 487
    move-result v3

    .line 488
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 491
    move-result-object v3

    .line 492
    filled-new-array {v3, p2}, [Ljava/lang/Object;

    .line 495
    move-result-object p2

    .line 496
    const-string v3, "LockSettingsService"

    .line 498
    const-string v4, "Showing encryption notification for user %d; reason: %s"

    .line 500
    invoke-static {v3, v4, p2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 503
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 506
    move-result p2

    .line 507
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 510
    move-result p2

    .line 511
    const/16 v3, 0x9

    .line 513
    const v4, 0x106001c

    .line 516
    const-wide/16 v5, 0x0

    .line 518
    const v7, 0x10805fa

    .line 521
    if-eqz p2, :cond_e

    .line 523
    new-instance p2, Landroid/app/Notification$Builder;

    .line 525
    iget-object v11, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 527
    sget-object v12, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    .line 529
    invoke-direct {p2, v11, v12}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 532
    invoke-virtual {p2, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 535
    move-result-object p2

    .line 536
    invoke-virtual {p2, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 539
    move-result-object p2

    .line 540
    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 543
    move-result-object p2

    .line 544
    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 547
    move-result-object p2

    .line 548
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 550
    invoke-virtual {v5, v4}, Landroid/content/Context;->getColor(I)I

    .line 553
    move-result v4

    .line 554
    invoke-virtual {p2, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 557
    move-result-object p2

    .line 558
    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 561
    move-result-object p1

    .line 562
    invoke-virtual {p1, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 565
    move-result-object p1

    .line 566
    invoke-virtual {p1, v10}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 569
    move-result-object p1

    .line 570
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 573
    move-result-object p1

    .line 574
    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 577
    move-result-object p1

    .line 578
    new-instance p2, Landroid/app/Notification$BigTextStyle;

    .line 580
    invoke-direct {p2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 583
    invoke-virtual {p2, v8}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 586
    move-result-object p2

    .line 587
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 590
    move-result-object p1

    .line 591
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 594
    move-result-object p1

    .line 595
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 597
    invoke-virtual {p0, v9, v3, p1, v0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 600
    goto :goto_5

    .line 601
    :cond_e
    new-instance p2, Landroid/app/Notification$Builder;

    .line 603
    iget-object v11, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 605
    sget-object v12, Lcom/android/internal/notification/SystemNotificationChannels;->DEVICE_ADMIN:Ljava/lang/String;

    .line 607
    invoke-direct {p2, v11, v12}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 610
    invoke-virtual {p2, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 613
    move-result-object p2

    .line 614
    invoke-virtual {p2, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 617
    move-result-object p2

    .line 618
    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 621
    move-result-object p2

    .line 622
    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 625
    move-result-object p2

    .line 626
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 628
    invoke-virtual {v5, v4}, Landroid/content/Context;->getColor(I)I

    .line 631
    move-result v4

    .line 632
    invoke-virtual {p2, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 635
    move-result-object p2

    .line 636
    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 639
    move-result-object p1

    .line 640
    invoke-virtual {p1, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 643
    move-result-object p1

    .line 644
    invoke-virtual {p1, v10}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 647
    move-result-object p1

    .line 648
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 651
    move-result-object p1

    .line 652
    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 655
    move-result-object p1

    .line 656
    new-instance p2, Landroid/app/Notification$BigTextStyle;

    .line 658
    invoke-direct {p2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 661
    invoke-virtual {p2, v8}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 664
    move-result-object p2

    .line 665
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 668
    move-result-object p1

    .line 669
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 672
    move-result-object p1

    .line 673
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 675
    invoke-virtual {p0, v9, v3, p1, v0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 678
    :cond_f
    :goto_5
    return-void
.end method

.method public final migrateLockSettingsDB()V
    .locals 7

    .line 1
    const-string/jumbo v0, "locksettings_db_backup"

    .line 4
    const-string/jumbo v1, "locksettings_db_restore"

    .line 7
    sget-boolean v2, Lcom/android/server/locksettings/LockSettingsService;->mIsDbMigrated:Z

    .line 9
    const-string v3, "LockSettingsService"

    .line 11
    if-eqz v2, :cond_0

    .line 13
    const-string p0, "!@ migrateLockSettingsDB already finish"

    .line 15
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void

    .line 19
    :cond_0
    const/4 v2, 0x0

    .line 20
    :try_start_0
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 22
    iget-object v4, v4, Lcom/android/server/locksettings/LockSettingsStorage;->mOpenHelper:Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;

    .line 24
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 27
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 28
    :try_start_1
    const-string v5, "PRAGMA quick_check(1)"

    .line 30
    const/4 v6, 0x0

    .line 31
    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 34
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 35
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_1

    .line 41
    const-string/jumbo v5, "ok"

    .line 44
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 47
    move-result-object v6

    .line 48
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 55
    goto :goto_4

    .line 56
    :catch_0
    move-exception v4

    .line 57
    goto :goto_2

    .line 58
    :catchall_0
    move-exception v5

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 63
    goto :goto_3

    .line 64
    :goto_0
    if-eqz v4, :cond_2

    .line 66
    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 69
    goto :goto_1

    .line 70
    :catchall_1
    move-exception v4

    .line 71
    :try_start_5
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 74
    :cond_2
    :goto_1
    throw v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 75
    :goto_2
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    :goto_3
    move v5, v2

    .line 79
    :goto_4
    if-eqz v5, :cond_5

    .line 81
    const-string v4, "!@ LockSettingsDB, checkIntegrity pass."

    .line 83
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const-wide/16 v3, 0x0

    .line 88
    invoke-virtual {p0, v0, v3, v4, v2}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    .line 91
    move-result-wide v5

    .line 92
    cmp-long v5, v5, v3

    .line 94
    if-nez v5, :cond_8

    .line 96
    invoke-virtual {p0, v2}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 99
    move-result-wide v5

    .line 100
    cmp-long v3, v5, v3

    .line 102
    if-eqz v3, :cond_3

    .line 104
    const-string/jumbo v3, "migrate backup locksettings.db! Maybe FOTA updated or backup failed. try to backup DB!"

    .line 107
    invoke-static {v3}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 113
    move-result-wide v3

    .line 114
    invoke-virtual {p0, v0, v3, v4, v2}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 117
    goto :goto_6

    .line 118
    :cond_3
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 120
    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasLockSettingsBackup()Z

    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_4

    .line 126
    const-string/jumbo v0, "migrate backup locksettings.db! Maybe DB removed. try to restore DB!"

    .line 129
    invoke-static {v0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 135
    move-result-wide v3

    .line 136
    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 139
    goto :goto_6

    .line 140
    :cond_4
    const-string/jumbo v0, "migrate backup locksettings.db! Maybe 1st boot!!"

    .line 143
    invoke-static {v0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    .line 146
    goto :goto_6

    .line 147
    :cond_5
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 149
    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasLockSettingsBackup()Z

    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_6

    .line 155
    const-string v0, "LockSettingsDB, DB Integrity failed! restore locksettings.db!"

    .line 157
    invoke-static {v0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 163
    move-result-wide v3

    .line 164
    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 167
    goto :goto_5

    .line 168
    :cond_6
    const-string v0, "LockSettingsDB, DB Integrity failed! but do not have backup!"

    .line 170
    invoke-static {v0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 173
    :goto_5
    return-void

    .line 174
    :catch_1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 176
    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasLockSettingsBackup()Z

    .line 179
    move-result v0

    .line 180
    if-eqz v0, :cond_7

    .line 182
    const-string v0, "LockSettingsDB, Found corrupted! restore locksettings.db!"

    .line 184
    invoke-static {v0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 190
    move-result-wide v3

    .line 191
    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 194
    goto :goto_6

    .line 195
    :cond_7
    const-string p0, "LockSettingsDB, Found corrupted! but do not have backup!"

    .line 197
    invoke-static {p0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    .line 200
    :cond_8
    :goto_6
    const/4 p0, 0x1

    .line 201
    sput-boolean p0, Lcom/android/server/locksettings/LockSettingsService;->mIsDbMigrated:Z

    .line 203
    return-void
.end method

.method public final migrateMdfppPwdData(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isSyntheticPasswordBasedCredentialLocked(I)Z

    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 13
    move-result-wide v1

    .line 14
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 16
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->migratePwdDataForKnox(IJ)V

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public migrateOldDataAfterSystemReady()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->frpCredentialEnabled(Landroid/content/Context;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_5

    .line 11
    const-string/jumbo v0, "migrated_frp2"

    .line 14
    invoke-virtual {p0, v0, v2, v2}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_5

    .line 20
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 22
    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    .line 25
    move-result-object v0

    .line 26
    sget-object v3, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->NONE:Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    .line 28
    if-eq v0, v3, :cond_1

    .line 30
    iget v3, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    .line 32
    const/4 v4, 0x2

    .line 33
    if-eq v3, v1, :cond_0

    .line 35
    if-ne v3, v4, :cond_4

    .line 37
    :cond_0
    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->payload:[B

    .line 39
    if-eqz v0, :cond_4

    .line 41
    array-length v3, v0

    .line 42
    if-lt v3, v4, :cond_4

    .line 44
    aget-byte v3, v0, v2

    .line 46
    if-nez v3, :cond_4

    .line 48
    aget-byte v0, v0, v1

    .line 50
    if-ne v0, v4, :cond_4

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 54
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 57
    move-result-object v0

    .line 58
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 61
    move-result-object v0

    .line 62
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_4

    .line 68
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    move-result-object v3

    .line 72
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 74
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 76
    invoke-static {v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_2

    .line 82
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    .line 84
    invoke-virtual {p0, v4}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    .line 87
    move-result v4

    .line 88
    if-eqz v4, :cond_2

    .line 90
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 92
    monitor-enter v4

    .line 93
    :try_start_0
    const-string/jumbo v0, "lockscreen.password_type"

    .line 96
    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    .line 98
    const-wide/16 v6, 0x0

    .line 100
    invoke-virtual {p0, v0, v6, v7, v5}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    .line 103
    move-result-wide v5

    .line 104
    long-to-int v0, v5

    .line 105
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 107
    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    .line 109
    invoke-virtual {p0, v6}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 112
    move-result-wide v6

    .line 113
    const/high16 v8, 0x20000

    .line 115
    if-eq v0, v8, :cond_3

    .line 117
    const/high16 v9, 0x30000

    .line 119
    if-eq v0, v9, :cond_3

    .line 121
    const/high16 v8, 0x40000

    .line 123
    if-eq v0, v8, :cond_3

    .line 125
    const/high16 v9, 0x50000

    .line 127
    if-eq v0, v9, :cond_3

    .line 129
    const/high16 v9, 0x60000

    .line 131
    if-eq v0, v9, :cond_3

    .line 133
    goto :goto_0

    .line 134
    :cond_3
    move v0, v8

    .line 135
    :goto_0
    invoke-virtual {v5, v6, v7, v3, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->migrateFrpPasswordLocked(JLandroid/content/pm/UserInfo;I)V

    .line 138
    monitor-exit v4

    .line 139
    goto :goto_1

    .line 140
    :catchall_0
    move-exception p0

    .line 141
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    throw p0

    .line 143
    :cond_4
    :goto_1
    const-string/jumbo v0, "migrated_frp2"

    .line 146
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 149
    :cond_5
    const-string v0, "LockSettingsService"

    .line 151
    const-string/jumbo v3, "lockscreen.pwdata.ver"

    .line 154
    const-string v4, ""

    .line 156
    invoke-virtual {p0, v3, v4, v2}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 159
    move-result-object v5

    .line 160
    sget-object v6, Lcom/samsung/android/lock/LsConstants;->SECURITY_LOG_VERSION:Ljava/lang/String;

    .line 162
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    move-result v7

    .line 166
    if-nez v7, :cond_7

    .line 168
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 171
    move-result v7

    .line 172
    if-eqz v7, :cond_6

    .line 174
    const-string/jumbo v5, "empty"

    .line 177
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    .line 179
    const-string v8, "SecurityLog ver updated! "

    .line 181
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const-string v5, " -> "

    .line 189
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    move-result-object v5

    .line 199
    invoke-static {v5}, Lcom/samsung/android/lock/LsLog;->enroll(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0, v3, v6, v2}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 205
    :cond_7
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 207
    const-string/jumbo v5, "locksettings.log.ver"

    .line 210
    invoke-virtual {v3, v2, v2, v5}, Lcom/android/server/locksettings/LockSettingsStorage;->getInt(IILjava/lang/String;)I

    .line 213
    move-result v3

    .line 214
    if-ge v3, v1, :cond_9

    .line 216
    invoke-static {v3}, Lcom/samsung/android/lock/LsLog;->migrate(I)V

    .line 219
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 221
    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 224
    move-result-object v3

    .line 225
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 228
    move-result v6

    .line 229
    move v7, v2

    .line 230
    :goto_2
    if-ge v7, v6, :cond_8

    .line 232
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 235
    move-result-object v4

    .line 236
    check-cast v4, Landroid/content/pm/UserInfo;

    .line 238
    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 240
    const-string v8, "User "

    .line 242
    const-string v9, " list updated!\n"

    .line 244
    invoke-static {v4, v8, v9}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 247
    move-result-object v8

    .line 248
    invoke-static {v8}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    move-result-object v8

    .line 252
    invoke-static {v4}, Lcom/samsung/android/lock/SPBnRManager;->getPWFilelist(I)Ljava/lang/String;

    .line 255
    move-result-object v9

    .line 256
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    move-result-object v8

    .line 263
    iget-object v9, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 265
    const-string/jumbo v10, "lockscreen.token"

    .line 268
    invoke-virtual {v9, v10, v4}, Lcom/android/server/locksettings/LockSettingsStorage;->removeKey(Ljava/lang/String;I)V

    .line 271
    add-int/lit8 v7, v7, 0x1

    .line 273
    move-object v4, v8

    .line 274
    goto :goto_2

    .line 275
    :cond_8
    invoke-static {v4}, Lcom/samsung/android/lock/LsLog;->enroll(Ljava/lang/String;)V

    .line 278
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 280
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 286
    move-result-object v4

    .line 287
    invoke-virtual {v3, v5, v4, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 290
    :cond_9
    :try_start_1
    const-string/jumbo v3, "window"

    .line 293
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 296
    move-result-object v3

    .line 297
    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    .line 300
    move-result-object v3

    .line 301
    invoke-interface {v3}, Landroid/view/IWindowManager;->isSafeModeEnabled()Z

    .line 304
    move-result v3

    .line 305
    if-eqz v3, :cond_a

    .line 307
    const-string v2, "!@ safe mode on"

    .line 309
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-virtual {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->setSecurityDebugLevel(I)V

    .line 315
    goto :goto_4

    .line 316
    :catch_0
    move-exception p0

    .line 317
    goto :goto_3

    .line 318
    :cond_a
    invoke-static {v2}, Lcom/samsung/android/lock/LsLog;->getFailureCount(I)I

    .line 321
    move-result v2

    .line 322
    sget v3, Lcom/samsung/android/lock/LsConstants;->SECURITY_DEBUG_ON_COUNT:I

    .line 324
    if-lt v2, v3, :cond_b

    .line 326
    const-string v2, "!@ debug mode on, Too many failed"

    .line 328
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-virtual {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->setSecurityDebugLevel(I)V

    .line 334
    goto :goto_4

    .line 335
    :cond_b
    const-string p0, "!@ safe mode off"

    .line 337
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 340
    goto :goto_4

    .line 341
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 343
    const-string v2, "SAFEMODE Exception occurs! "

    .line 345
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 348
    invoke-static {p0, v1, v0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 351
    :goto_4
    return-void
.end method

.method public final migrateSpblob()V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsService;->mIsSpblobMigrated:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string p0, "LockSettingsService"

    .line 7
    const-string v0, "!@ migrateSpblob already finish"

    .line 9
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    return-void

    .line 13
    :cond_0
    const-string v0, "LockSettingsService"

    .line 15
    const-string v1, "!@ migrateSpblob()"

    .line 17
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->isSupportWeaver()Z

    .line 23
    move-result v0

    .line 24
    invoke-static {v0}, Lcom/samsung/android/lock/SPBnRManager;->init(Z)V

    .line 27
    invoke-static {}, Lcom/samsung/android/lock/SPBnRManager;->resetMode()V

    .line 30
    const-string/jumbo v0, "locksettings_spblob_backup"

    .line 33
    const-wide/16 v1, 0x0

    .line 35
    const/4 v3, 0x0

    .line 36
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    .line 39
    move-result-wide v4

    .line 40
    cmp-long v0, v4, v1

    .line 42
    const/4 v4, 0x1

    .line 43
    if-nez v0, :cond_3

    .line 45
    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 48
    move-result-wide v5

    .line 49
    cmp-long v0, v5, v1

    .line 51
    if-eqz v0, :cond_2

    .line 53
    const-string/jumbo v0, "migrate backup SPBLOB! Maybe FOTA updated or backup failed. try to backup SPBLOB!"

    .line 56
    invoke-static {v0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->getBackupLskfBasedProtectorId(I)J

    .line 62
    move-result-wide v0

    .line 63
    invoke-static {v3, v5, v6, v0, v1}, Lcom/samsung/android/lock/SPBnRManager;->setProtectorIdForBackup(IJJ)V

    .line 66
    invoke-static {}, Lcom/samsung/android/lock/SPBnRManager;->startBackup()Z

    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_1

    .line 72
    const-string/jumbo v0, "locksettings_spblob_backup"

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 78
    move-result-wide v1

    .line 79
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 82
    const-string p0, "SPblobBNR, Success backup spblob dir"

    .line 84
    invoke-static {p0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    .line 87
    goto :goto_1

    .line 88
    :cond_1
    const-string p0, "SPblobBNR, Failed backup spblob dir"

    .line 90
    invoke-static {p0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    .line 93
    goto :goto_1

    .line 94
    :cond_2
    const-string/jumbo p0, "migrate backup SPBLOB! Maybe 1st boot!!"

    .line 97
    invoke-static {p0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    .line 100
    goto :goto_1

    .line 101
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 104
    move-result-wide v0

    .line 105
    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->getBackupLskfBasedProtectorId(I)J

    .line 108
    move-result-wide v5

    .line 109
    invoke-static {v3, v0, v1, v5, v6}, Lcom/samsung/android/lock/SPBnRManager;->setProtectorIdForBackup(IJJ)V

    .line 112
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 114
    monitor-enter v0

    .line 115
    :try_start_0
    invoke-static {}, Lcom/samsung/android/lock/SPBnRManager;->checkIntegrity()Z

    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_4

    .line 121
    const-string p0, "LockSettingsService"

    .line 123
    const-string v1, "!@ SPblobBNR, checkIntegrity pass."

    .line 125
    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    goto :goto_0

    .line 129
    :catchall_0
    move-exception p0

    .line 130
    goto :goto_2

    .line 131
    :cond_4
    const-string/jumbo v1, "locksettings_spblob_backup"

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 137
    move-result-wide v5

    .line 138
    invoke-virtual {p0, v1, v5, v6, v3}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 141
    const-string p0, "SPblobBNR, File corruption detected. Backed up or restored."

    .line 143
    invoke-static {p0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    .line 146
    invoke-static {v3}, Lcom/samsung/android/lock/SPBnRManager;->getPWFilelist(I)Ljava/lang/String;

    .line 149
    move-result-object p0

    .line 150
    invoke-static {p0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    .line 153
    invoke-static {v3}, Lcom/samsung/android/lock/SPBnRManager;->getBackupPWFilelist(I)Ljava/lang/String;

    .line 156
    move-result-object p0

    .line 157
    invoke-static {p0, v4}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;Z)V

    .line 160
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :goto_1
    sput-boolean v4, Lcom/android/server/locksettings/LockSettingsService;->mIsSpblobMigrated:Z

    .line 163
    return-void

    .line 164
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    throw p0
.end method

.method public final migrateUserToSpWithBoundCeKeyLocked(I)V
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    .line 4
    move-result v0

    .line 5
    const-string v1, "LockSettingsService"

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object p0

    .line 13
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 17
    const-string p1, "User %d is secured; no migration needed"

    .line 19
    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    return-void

    .line 23
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 26
    move-result-wide v4

    .line 27
    const-wide/16 v2, 0x0

    .line 29
    cmp-long v0, v4, v2

    .line 31
    if-nez v0, :cond_1

    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object v0

    .line 37
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    const-string v2, "Migrating unsecured user %d to SP-based credential"

    .line 43
    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->initializeSyntheticPassword(I)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object v0

    .line 54
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 57
    move-result-object v0

    .line 58
    const-string v2, "Existing unsecured user %d has a synthetic password; re-encrypting CE key with it"

    .line 60
    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 65
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 68
    move-result-object v3

    .line 69
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    .line 72
    move-result-object v6

    .line 73
    const/4 v8, 0x0

    .line 74
    move v7, p1

    .line 75
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    .line 78
    move-result-object v0

    .line 79
    iget-object v0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 81
    if-nez v0, :cond_2

    .line 83
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    move-result-object p0

    .line 87
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 90
    move-result-object p0

    .line 91
    const-string p1, "Failed to unwrap synthetic password for unsecured user %d"

    .line 93
    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    return-void

    .line 97
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsService;->setCeStorageProtection(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    .line 100
    :goto_0
    return-void
.end method

.method public final migrateUserToSpWithBoundKeysLocked(I)V
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    .line 4
    move-result v0

    .line 5
    const-string v1, "LockSettingsService"

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object p0

    .line 13
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 17
    const-string p1, "User %d is secured; no migration needed"

    .line 19
    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    return-void

    .line 23
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 26
    move-result-wide v4

    .line 27
    const-wide/16 v2, 0x0

    .line 29
    cmp-long v0, v4, v2

    .line 31
    if-nez v0, :cond_1

    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object v0

    .line 37
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    const-string v2, "Migrating unsecured user %d to SP-based credential"

    .line 43
    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->initializeSyntheticPassword(I)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 49
    return-void

    .line 50
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object v0

    .line 54
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 57
    move-result-object v0

    .line 58
    const-string v2, "Existing unsecured user %d has a synthetic password"

    .line 60
    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 65
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 68
    move-result-object v3

    .line 69
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    .line 72
    move-result-object v6

    .line 73
    const/4 v8, 0x0

    .line 74
    move v7, p1

    .line 75
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    .line 78
    move-result-object v0

    .line 79
    iget-object v0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 81
    if-nez v0, :cond_2

    .line 83
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    move-result-object p0

    .line 87
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 90
    move-result-object p0

    .line 91
    const-string p1, "Failed to unwrap synthetic password for unsecured user %d"

    .line 93
    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    return-void

    .line 97
    :cond_2
    const/4 v2, 0x0

    .line 98
    const/4 v3, 0x0

    .line 99
    const-string/jumbo v4, "migrated_all_users_to_sp_and_bound_ce"

    .line 102
    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 105
    move-result-object v2

    .line 106
    if-nez v2, :cond_3

    .line 108
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    move-result-object v2

    .line 112
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 115
    move-result-object v2

    .line 116
    const-string v3, "Encrypting CE key of user %d with synthetic password"

    .line 118
    invoke-static {v1, v3, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsService;->setCeStorageProtection(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    .line 124
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    move-result-object v2

    .line 128
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 131
    move-result-object v2

    .line 132
    const-string v3, "Initializing Keystore super keys for user %d"

    .line 134
    invoke-static {v1, v3, v2}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    const/4 v1, 0x1

    .line 138
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->initKeystoreSuperKeys(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Z)V

    .line 141
    return-void
.end method

.method public final notifyPasswordChangedForEnterpriseUser(Lcom/android/internal/widget/LockscreenCredential;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onCredentialVerified(Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Landroid/app/admin/PasswordMetrics;I)V
    .locals 7

    .line 1
    if-eqz p2, :cond_0

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserPasswordMetrics:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v0, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    monitor-exit p0

    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1

    .line 14
    :cond_0
    :goto_0
    invoke-virtual {p0, p3, p1}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystore(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    .line 17
    invoke-virtual {p0, p3, p1}, Lcom/android/server/locksettings/LockSettingsService;->unlockCeStorage(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    .line 20
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->unlockUser(I)V

    .line 23
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 25
    monitor-enter p2

    .line 26
    :try_start_1
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->disableEscrowTokenOnNonManagedDevicesIfNeeded(I)V

    .line 29
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 31
    invoke-virtual {v0, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getPendingTokensForUser(I)Ljava/util/Set;

    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object v0

    .line 39
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Ljava/lang/Long;

    .line 51
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 54
    move-result-wide v2

    .line 55
    const-string v4, "LockSettingsService"

    .line 57
    const-string v5, "Activating escrow token %016x for user %d"

    .line 59
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    move-result-object v6

    .line 63
    filled-new-array {v1, v6}, [Ljava/lang/Object;

    .line 66
    move-result-object v1

    .line 67
    invoke-static {v4, v5, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 72
    invoke-virtual {v1, p3, v2, v3, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createTokenBasedProtector(IJLcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)Z

    .line 75
    goto :goto_1

    .line 76
    :catchall_1
    move-exception p0

    .line 77
    goto :goto_3

    .line 78
    :cond_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 79
    iget-boolean p2, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mSecureFolderAuthToken:Z

    .line 81
    const/4 v0, 0x0

    .line 82
    if-eqz p2, :cond_2

    .line 84
    const-string/jumbo p2, "onCredentialVerified : unlockSecureFolderWithToken is true."

    .line 87
    const/4 v1, 0x0

    .line 88
    invoke-static {v1, p2}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0, p3, p1, v0}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordKnown(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Z)V

    .line 94
    return-void

    .line 95
    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    .line 98
    move-result p2

    .line 99
    if-eqz p2, :cond_5

    .line 101
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    .line 104
    move-result p2

    .line 105
    if-eqz p2, :cond_4

    .line 107
    :try_start_2
    const-string/jumbo p2, "password_policy"

    .line 110
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 113
    move-result-object p2

    .line 114
    invoke-static {p2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    .line 117
    move-result-object p2

    .line 118
    if-eqz p2, :cond_3

    .line 120
    invoke-interface {p2, p3}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isChangeRequestedAsUser(I)I

    .line 123
    move-result p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 124
    if-lez p2, :cond_3

    .line 126
    const-string p2, "LockSettingsService"

    .line 128
    const-string v1, "Password change requested so avoid setDeviceLockedForUser false"

    .line 130
    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    goto :goto_2

    .line 134
    :catch_0
    move-exception p2

    .line 135
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 138
    :cond_3
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 140
    const-class v1, Landroid/app/trust/TrustManager;

    .line 142
    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 145
    move-result-object p2

    .line 146
    check-cast p2, Landroid/app/trust/TrustManager;

    .line 148
    invoke-virtual {p2, p3, v0}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    .line 151
    goto :goto_2

    .line 152
    :cond_4
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    .line 154
    invoke-virtual {p2, v0, p3}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->requireStrongAuth(II)V

    .line 157
    :cond_5
    :goto_2
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    .line 159
    iget-object p2, p2, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    .line 161
    const/4 v1, 0x5

    .line 162
    invoke-virtual {p2, v1, p3, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 165
    move-result-object p2

    .line 166
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 169
    invoke-virtual {p0, p3, p1, v0}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordKnown(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Z)V

    .line 172
    return-void

    .line 173
    :goto_3
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 174
    throw p0
.end method

.method public final onPostPasswordChanged(Lcom/android/internal/widget/LockscreenCredential;I)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "ppp_enroll_timestamp"

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    move-result-wide v2

    .line 14
    invoke-static {v0, v1, v2, v3, p2}, Landroid/provider/Settings$Secure;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    .line 17
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 23
    goto/16 :goto_2

    .line 25
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isPattern()Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 31
    goto/16 :goto_2

    .line 33
    :cond_1
    const-string/jumbo v0, "lockscreen.passwordhistory"

    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 41
    const-string v3, ""

    .line 43
    if-nez v2, :cond_2

    .line 45
    move-object v2, v3

    .line 46
    :cond_2
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 48
    invoke-virtual {v4}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v4, v1, p2}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;I)I

    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_3

    .line 58
    goto :goto_1

    .line 59
    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    move-result-object v3

    .line 63
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 66
    move-result-object v3

    .line 67
    const-string v4, "LockSettingsService"

    .line 69
    const-string v5, "Adding new password to password history for user %d"

    .line 71
    invoke-static {v4, v5, v3}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->getHashFactor(Lcom/android/internal/widget/LockscreenCredential;I)[B

    .line 77
    move-result-object v3

    .line 78
    const-string/jumbo v5, "lockscreen.password_salt"

    .line 81
    const-wide/16 v6, 0x0

    .line 83
    invoke-virtual {p0, v5, v6, v7, p2}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    .line 86
    move-result-wide v8

    .line 87
    cmp-long v6, v8, v6

    .line 89
    if-nez v6, :cond_4

    .line 91
    sget-object v6, Lcom/android/server/locksettings/SecureRandomUtils;->RNG:Ljava/security/SecureRandom;

    .line 93
    invoke-virtual {v6}, Ljava/security/SecureRandom;->nextLong()J

    .line 96
    move-result-wide v8

    .line 97
    invoke-virtual {p0, v5, v8, v9, p2}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 100
    :cond_4
    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 103
    move-result-object v5

    .line 104
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    .line 107
    move-result-object v5

    .line 108
    invoke-virtual {p1, v5, v3}, Lcom/android/internal/widget/LockscreenCredential;->passwordToHistoryHash([B[B)Ljava/lang/String;

    .line 111
    move-result-object v3

    .line 112
    if-nez v3, :cond_5

    .line 114
    const-string p1, "Failed to compute password hash; password history won\'t be updated"

    .line 116
    invoke-static {v4, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    goto :goto_2

    .line 120
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 123
    move-result p1

    .line 124
    if-eqz p1, :cond_6

    .line 126
    goto :goto_1

    .line 127
    :cond_6
    const-string p1, ","

    .line 129
    invoke-virtual {v2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 132
    move-result-object v2

    .line 133
    new-instance v4, Ljava/util/StringJoiner;

    .line 135
    invoke-direct {v4, p1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 138
    invoke-virtual {v4, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 141
    const/4 p1, 0x0

    .line 142
    :goto_0
    add-int/lit8 v3, v1, -0x1

    .line 144
    if-ge p1, v3, :cond_7

    .line 146
    array-length v3, v2

    .line 147
    if-ge p1, v3, :cond_7

    .line 149
    aget-object v3, v2, p1

    .line 151
    invoke-virtual {v4, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 154
    add-int/lit8 p1, p1, 0x1

    .line 156
    goto :goto_0

    .line 157
    :cond_7
    invoke-virtual {v4}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    .line 160
    move-result-object v3

    .line 161
    :goto_1
    invoke-virtual {p0, v0, v3, p2}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 164
    :goto_2
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 166
    const-class v0, Landroid/app/trust/TrustManager;

    .line 168
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 171
    move-result-object p1

    .line 172
    check-cast p1, Landroid/app/trust/TrustManager;

    .line 174
    invoke-virtual {p1, p2}, Landroid/app/trust/TrustManager;->reportEnabledTrustAgentsChanged(I)V

    .line 177
    invoke-static {}, Landroid/security/Flags;->frpEnforcement()Z

    .line 180
    move-result p1

    .line 181
    if-nez p1, :cond_8

    .line 183
    goto :goto_3

    .line 184
    :cond_8
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 186
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    .line 192
    move-result-object p1

    .line 193
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerInternal;->getMainUserId()I

    .line 196
    move-result p1

    .line 197
    if-eq p2, p1, :cond_9

    .line 199
    goto :goto_3

    .line 200
    :cond_9
    new-instance p1, Landroid/content/Intent;

    .line 202
    const-string v0, "android.intent.action.MAIN_USER_LOCKSCREEN_KNOWLEDGE_FACTOR_CHANGED"

    .line 204
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 210
    move-result-object p2

    .line 211
    const-string v0, "android.permission.CONFIGURE_FACTORY_RESET_PROTECTION"

    .line 213
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/locksettings/LockSettingsService;->sendBroadcast(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 216
    :goto_3
    return-void
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    move-result v1

    .line 6
    const/16 v2, 0x7d0

    .line 8
    if-eq v1, v2, :cond_1

    .line 10
    if-nez v1, :cond_0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 15
    const-string v1, "Caller must be shell"

    .line 17
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 20
    throw v0

    .line 21
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 24
    move-result v1

    .line 25
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 28
    move-result v2

    .line 29
    invoke-static {p4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_2

    .line 35
    const-string v3, ""

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    const/4 v3, 0x0

    .line 39
    aget-object v3, p4, v3

    .line 41
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object v4

    .line 45
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object v5

    .line 49
    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    .line 52
    move-result-object v3

    .line 53
    const-string v4, "LockSettingsService"

    .line 55
    const-string v5, "Executing shell command \'%s\'; callingPid=%d, callingUid=%d"

    .line 57
    invoke-static {v4, v5, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 63
    move-result-wide v9

    .line 64
    :try_start_0
    new-instance v3, Lcom/android/server/locksettings/LockSettingsShellCommand;

    .line 66
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    .line 68
    iget-object v5, v0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 70
    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 73
    iget-object v5, v0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 75
    invoke-direct {v3, v4, v5, v1, v2}, Lcom/android/server/locksettings/LockSettingsShellCommand;-><init>(Lcom/android/internal/widget/LockPatternUtils;Landroid/content/Context;II)V

    .line 78
    iget-object v1, v0, Lcom/android/server/locksettings/LockSettingsService;->mShellCommandCallback:Landroid/os/IRemoteCallback;

    .line 80
    iput-object v1, v3, Lcom/android/server/locksettings/LockSettingsShellCommand;->mCallback:Landroid/os/IRemoteCallback;

    .line 82
    move-object v1, v3

    .line 83
    move-object v2, p0

    .line 84
    move-object v3, p1

    .line 85
    move-object v4, p2

    .line 86
    move-object v5, p3

    .line 87
    move-object v6, p4

    .line 88
    move-object/from16 v7, p5

    .line 90
    move-object/from16 v8, p6

    .line 92
    invoke-virtual/range {v1 .. v8}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 98
    return-void

    .line 99
    :catchall_0
    move-exception v0

    .line 100
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 103
    throw v0
.end method

.method public final onSyntheticPasswordKnown(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isGsiRunning()Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 12
    const-string p0, "LockSettingsService"

    .line 14
    const-string p1, "Running in GSI; skipping calls to AuthSecret and RebootEscrow"

    .line 16
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

    .line 22
    iget-byte v1, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mVersion:B

    .line 24
    iget-object v2, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->mSyntheticPassword:[B

    .line 26
    iget-boolean v3, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mRebootEscrowWanted:Z

    .line 28
    if-nez v3, :cond_1

    .line 30
    goto/16 :goto_2

    .line 32
    :cond_1
    iget-object v3, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    .line 34
    invoke-virtual {v3}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->createRebootEscrowProviderIfNeeded()Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    .line 37
    move-result-object v3

    .line 38
    if-nez v3, :cond_2

    .line 40
    const-string v0, "RebootEscrowManager"

    .line 42
    const-string v1, "Not storing escrow data, RebootEscrowProvider is unavailable"

    .line 44
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    goto/16 :goto_2

    .line 49
    :cond_2
    iget-object v3, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyGenerationLock:Ljava/lang/Object;

    .line 51
    monitor-enter v3

    .line 52
    :try_start_0
    iget-object v4, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mPendingRebootEscrowKey:Lcom/android/server/locksettings/RebootEscrowKey;

    .line 54
    const/4 v5, 0x0

    .line 55
    if-eqz v4, :cond_3

    .line 57
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto/16 :goto_4

    .line 62
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/android/server/locksettings/RebootEscrowKey;->generate()Lcom/android/server/locksettings/RebootEscrowKey;

    .line 65
    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    :try_start_2
    iput-object v4, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mPendingRebootEscrowKey:Lcom/android/server/locksettings/RebootEscrowKey;

    .line 68
    monitor-exit v3

    .line 69
    goto :goto_0

    .line 70
    :catch_0
    const-string v4, "RebootEscrowManager"

    .line 72
    const-string v6, "Could not generate reboot escrow key"

    .line 74
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    move-object v4, v5

    .line 79
    :goto_0
    if-nez v4, :cond_4

    .line 81
    const-string v0, "RebootEscrowManager"

    .line 83
    const-string v1, "Could not generate escrow key"

    .line 85
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    goto/16 :goto_2

    .line 90
    :cond_4
    iget-object v3, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mKeyStoreManager:Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

    .line 92
    iget-object v6, v3, Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;->mKeyStoreLock:Ljava/lang/Object;

    .line 94
    monitor-enter v6

    .line 95
    :try_start_3
    invoke-static {}, Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;->getKeyStoreEncryptionKeyLocked()Ljavax/crypto/SecretKey;

    .line 98
    move-result-object v3

    .line 99
    if-eqz v3, :cond_5

    .line 101
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 102
    move-object v5, v3

    .line 103
    goto :goto_1

    .line 104
    :catchall_1
    move-exception p0

    .line 105
    goto/16 :goto_3

    .line 107
    :cond_5
    :try_start_4
    const-string v3, "AES"

    .line 109
    const-string v7, "AndroidKeyStore"

    .line 111
    invoke-static {v3, v7}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    .line 114
    move-result-object v3

    .line 115
    new-instance v7, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 117
    const-string/jumbo v8, "reboot_escrow_key_store_encryption_key"

    .line 120
    const/4 v9, 0x3

    .line 121
    invoke-direct {v7, v8, v9}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    .line 124
    const/16 v8, 0x100

    .line 126
    invoke-virtual {v7, v8}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 129
    move-result-object v7

    .line 130
    const-string v8, "GCM"

    .line 132
    filled-new-array {v8}, [Ljava/lang/String;

    .line 135
    move-result-object v8

    .line 136
    invoke-virtual {v7, v8}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 139
    move-result-object v7

    .line 140
    const-string v8, "NoPadding"

    .line 142
    filled-new-array {v8}, [Ljava/lang/String;

    .line 145
    move-result-object v8

    .line 146
    invoke-virtual {v7, v8}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 149
    move-result-object v7

    .line 150
    const/16 v8, 0x78

    .line 152
    invoke-virtual {v7, v8}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setNamespace(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 155
    invoke-virtual {v7}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    .line 158
    move-result-object v7

    .line 159
    invoke-virtual {v3, v7}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 162
    invoke-virtual {v3}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    .line 165
    move-result-object v5
    :try_end_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 166
    :try_start_5
    monitor-exit v6

    .line 167
    goto :goto_1

    .line 168
    :catch_1
    move-exception v3

    .line 169
    const-string v7, "RebootEscrowKeyStoreManager"

    .line 171
    const-string v8, "Unable to generate key from keystore."

    .line 173
    invoke-static {v7, v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 177
    :goto_1
    if-nez v5, :cond_6

    .line 179
    const-string v0, "RebootEscrowManager"

    .line 181
    const-string v1, "Failed to generate encryption key from keystore."

    .line 183
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    goto :goto_2

    .line 187
    :cond_6
    :try_start_6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v3, v4, Lcom/android/server/locksettings/RebootEscrowKey;->mKey:Ljavax/crypto/SecretKey;

    .line 192
    invoke-static {v2, v3}, Lcom/android/server/locksettings/AesEncryptionUtil;->encrypt([BLjavax/crypto/SecretKey;)[B

    .line 195
    move-result-object v2

    .line 196
    invoke-static {v2, v5}, Lcom/android/server/locksettings/AesEncryptionUtil;->encrypt([BLjavax/crypto/SecretKey;)[B

    .line 199
    move-result-object v2

    .line 200
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 202
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 205
    new-instance v4, Ljava/io/DataOutputStream;

    .line 207
    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 210
    const/4 v5, 0x2

    .line 211
    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 214
    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 217
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 220
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 223
    move-result-object v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 224
    iget-object v2, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 226
    invoke-virtual {v2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getRebootEscrowFile(I)Ljava/io/File;

    .line 229
    move-result-object v3

    .line 230
    const/4 v4, 0x1

    .line 231
    invoke-virtual {v2, v3, v1, v4}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/io/File;[BZ)V

    .line 234
    iget-object v1, v0, Lcom/android/server/locksettings/RebootEscrowManager;->mEventLog:Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;

    .line 236
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    new-instance v2, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

    .line 241
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 244
    move-result-object v3

    .line 245
    const/4 v5, 0x6

    .line 246
    invoke-direct {v2, v5, v3}, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;-><init>(ILjava/lang/Integer;)V

    .line 249
    iget v3, v1, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mNextIndex:I

    .line 251
    iget-object v5, v1, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mEntries:[Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEvent;

    .line 253
    aput-object v2, v5, v3

    .line 255
    add-int/2addr v3, v4

    .line 256
    array-length v2, v5

    .line 257
    rem-int/2addr v3, v2

    .line 258
    iput v3, v1, Lcom/android/server/locksettings/RebootEscrowManager$RebootEscrowEventLog;->mNextIndex:I

    .line 260
    invoke-virtual {v0, v4}, Lcom/android/server/locksettings/RebootEscrowManager;->setRebootEscrowReady(Z)V

    .line 263
    goto :goto_2

    .line 264
    :catch_2
    move-exception v1

    .line 265
    const/4 v2, 0x0

    .line 266
    invoke-virtual {v0, v2}, Lcom/android/server/locksettings/RebootEscrowManager;->setRebootEscrowReady(Z)V

    .line 269
    const-string v0, "RebootEscrowManager"

    .line 271
    const-string v2, "Could not escrow reboot data"

    .line 273
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    :goto_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->callToAuthSecretIfNeeded(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Z)V

    .line 279
    return-void

    .line 280
    :goto_3
    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 281
    throw p0

    .line 282
    :goto_4
    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 283
    throw p0
.end method

.method public onUserStopped(I)V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/UserHandle;

    .line 3
    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 6
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v1

    .line 14
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    const-string v2, "LockSettingsService"

    .line 20
    const-string v3, "Hiding encryption notification for user %d"

    .line 22
    invoke-static {v2, v3, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 27
    const/4 v2, 0x0

    .line 28
    const/16 v3, 0x9

    .line 30
    invoke-virtual {v1, v2, v3, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 33
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 39
    invoke-static {}, Landroid/multiuser/Flags;->enableBiometricsToUnlockPrivateSpace()Z

    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_0

    .line 45
    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 53
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserProperties(Landroid/os/UserHandle;)Landroid/content/pm/UserProperties;

    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Landroid/content/pm/UserProperties;->getAllowStoppingUserWithDelayedLocking()Z

    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_0

    .line 69
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 72
    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getDefaultFlags(Landroid/content/Context;)I

    .line 75
    move-result v0

    .line 76
    invoke-virtual {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsService;->requireStrongAuth(II)V

    .line 79
    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserPasswordMetrics:Landroid/util/SparseArray;

    .line 82
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 85
    monitor-exit p0

    .line 86
    return-void

    .line 87
    :catchall_0
    move-exception p1

    .line 88
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    throw p1
.end method

.method public final passwordToHash(I[B)[B
    .locals 5

    .line 1
    const-string/jumbo v0, "lockscreen.password_salt"

    .line 4
    const-wide/16 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    .line 9
    move-result-wide v3

    .line 10
    cmp-long v1, v3, v1

    .line 12
    if-nez v1, :cond_0

    .line 14
    sget-object v1, Lcom/android/server/locksettings/SecureRandomUtils;->RNG:Ljava/security/SecureRandom;

    .line 16
    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    .line 19
    move-result-wide v3

    .line 20
    invoke-virtual {p0, v0, v3, v4, p1}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 23
    :cond_0
    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 30
    move-result-object p0

    .line 31
    invoke-static {p2, p0}, Lcom/android/internal/widget/LockscreenCredential;->legacyPasswordToHash([B[B)Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    if-nez p0, :cond_1

    .line 37
    const/4 p0, 0x0

    .line 38
    return-object p0

    .line 39
    :cond_1
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public final recoverKeyChainSnapshot(Ljava/lang/String;[BLjava/util/List;)Ljava/util/Map;
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 6
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 9
    move-result v0

    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 13
    move-result v1

    .line 14
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRecoverySessionStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;

    .line 16
    iget-object v3, v2, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->mSessionsByUid:Landroid/util/SparseArray;

    .line 18
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Ljava/util/ArrayList;

    .line 24
    const/4 v4, 0x0

    .line 25
    if-nez v3, :cond_0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object v3

    .line 32
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v5

    .line 36
    if-eqz v5, :cond_2

    .line 38
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v5

    .line 42
    check-cast v5, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;

    .line 44
    iget-object v6, v5, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->mSessionId:Ljava/lang/String;

    .line 46
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result v6

    .line 50
    if-eqz v6, :cond_1

    .line 52
    move-object v4, v5

    .line 53
    :cond_2
    :goto_0
    if-eqz v4, :cond_3

    .line 55
    :try_start_0
    invoke-static {v4, p2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->decryptRecoveryKey(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;[B)[B

    .line 58
    move-result-object p1

    .line 59
    invoke-static {p1, p3}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->recoverApplicationKeys([BLjava/util/List;)Ljava/util/Map;

    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->importKeyMaterials(IILjava/util/Map;)Ljava/util/Map;

    .line 66
    move-result-object p0
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-virtual {v4}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->destroy()V

    .line 70
    invoke-virtual {v2, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->remove(I)V

    .line 73
    return-object p0

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    goto :goto_1

    .line 76
    :catch_0
    move-exception p0

    .line 77
    :try_start_1
    new-instance p1, Landroid/os/ServiceSpecificException;

    .line 79
    invoke-virtual {p0}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    .line 82
    move-result-object p0

    .line 83
    const/16 p2, 0x16

    .line 85
    invoke-direct {p1, p2, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 88
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    :goto_1
    invoke-virtual {v4}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage$Entry;->destroy()V

    .line 92
    invoke-virtual {v2, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySessionStorage;->remove(I)V

    .line 95
    throw p0

    .line 96
    :cond_3
    new-instance p0, Landroid/os/ServiceSpecificException;

    .line 98
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 100
    const-string p2, "Application uid="

    .line 102
    const-string p3, " does not have pending session \'"

    .line 104
    const-string v0, "\'"

    .line 106
    invoke-static {v1, p2, p3, p1, v0}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    move-result-object p1

    .line 110
    const/16 p2, 0x18

    .line 112
    invoke-direct {p0, p2, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 115
    throw p0
.end method

.method public final refreshStoredPinLength(I)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 3
    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 5
    const-string v2, "LockSettingsHave"

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getUserPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;

    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_5

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 23
    move-result-wide v6

    .line 24
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 26
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isAutoPinConfirmationFeatureAvailable()Z

    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v3, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 35
    const-string/jumbo v4, "pwd"

    .line 38
    invoke-virtual {v3, p1, v4, v6, v7}, Lcom/android/server/locksettings/LockSettingsStorage;->readSyntheticPasswordState(ILjava/lang/String;J)[B

    .line 41
    move-result-object v3

    .line 42
    if-nez v3, :cond_1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-static {v3}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    .line 48
    move-result-object v2

    .line 49
    iget v3, v1, Landroid/app/admin/PasswordMetrics;->length:I

    .line 51
    iget v1, v1, Landroid/app/admin/PasswordMetrics;->credType:I

    .line 53
    const/4 v4, 0x3

    .line 54
    if-ne v1, v4, :cond_2

    .line 56
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 58
    invoke-virtual {v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->isAutoPinConfirmSettingEnabled(I)Z

    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_2

    .line 64
    const/4 v1, 0x6

    .line 65
    if-ge v3, v1, :cond_3

    .line 67
    :cond_2
    const/4 v3, -0x1

    .line 68
    :cond_3
    iget v1, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->pinLength:I

    .line 70
    if-eq v1, v3, :cond_4

    .line 72
    iput v3, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->pinLength:I

    .line 74
    const-string/jumbo v4, "pwd"

    .line 77
    invoke-virtual {v2}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->toBytes()[B

    .line 80
    move-result-object v5

    .line 81
    move-object v3, p0

    .line 82
    move v8, p1

    .line 83
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->syncState(I)V

    .line 89
    :cond_4
    const/4 v2, 0x1

    .line 90
    :goto_0
    monitor-exit v0

    .line 91
    return v2

    .line 92
    :catchall_0
    move-exception p0

    .line 93
    goto :goto_1

    .line 94
    :cond_5
    const-string p0, "LockSettingsService"

    .line 96
    const-string p1, "PasswordMetrics is not available"

    .line 98
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    monitor-exit v0

    .line 102
    return v2

    .line 103
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    throw p0
.end method

.method public final registerRemoteLockCallback(ILcom/android/internal/widget/IRemoteLockMonitorCallback;)V
    .locals 3

    .line 1
    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 9
    const-string v0, "android.permission.SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS"

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 20
    const-string/jumbo p1, "registerRemoteLockCallback requires SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS or android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 23
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 26
    throw p0

    .line 27
    :cond_1
    :goto_0
    const-string/jumbo v0, "registerRemoteLockCallback!!"

    .line 30
    const-string v1, "LockSettingsService"

    .line 32
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRemoteCallback:Landroid/os/IRemoteCallback;

    .line 46
    if-eqz v0, :cond_3

    .line 48
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mPassword:[B

    .line 50
    if-eqz v0, :cond_3

    .line 52
    iget v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mLockTypeForPasswordCheck:I

    .line 54
    if-ne v2, p1, :cond_3

    .line 56
    if-eqz p2, :cond_2

    .line 58
    :try_start_0
    invoke-interface {p2, v0}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->checkRemoteLockPassword([B)I

    .line 61
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_1

    .line 63
    :catch_0
    move-exception p0

    .line 64
    const-string/jumbo p1, "failed checkRemoteLockPassword callback!! after register"

    .line 67
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 73
    return-void

    .line 74
    :cond_2
    const/4 p1, -0x1

    .line 75
    :goto_1
    const-string/jumbo p2, "result"

    .line 78
    invoke-static {p1, p2}, Lcom/android/server/SystemUpdateManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/Bundle;

    .line 81
    move-result-object p1

    .line 82
    :try_start_1
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mRemoteCallback:Landroid/os/IRemoteCallback;

    .line 84
    invoke-interface {p2, p1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    goto :goto_2

    .line 88
    :catch_1
    move-exception p1

    .line 89
    const-string/jumbo p2, "failed sendResult callback!! after register"

    .line 92
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 98
    :goto_2
    const/4 p1, 0x0

    .line 99
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mRemoteCallback:Landroid/os/IRemoteCallback;

    .line 101
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mPassword:[B

    .line 103
    :cond_3
    return-void
.end method

.method public final registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    .line 6
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    .line 8
    const/4 v0, 0x2

    .line 9
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 16
    return-void
.end method

.method public final registerWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkManageWeakEscrowTokenMethodUsage()V

    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 10
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mListeners:Landroid/os/RemoteCallbackList;

    .line 12
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 15
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19
    return p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 24
    throw p0
.end method

.method public final removeCachedUnifiedChallenge(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUnifiedProfilePasswordCache:Lcom/android/server/locksettings/UnifiedProfilePasswordCache;

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->removePassword(I)V

    .line 9
    return-void
.end method

.method public final removeEscrowToken(JI)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 7
    move-result-wide v1

    .line 8
    cmp-long v1, p1, v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v1, :cond_0

    .line 13
    const-string p0, "LockSettingsService"

    .line 15
    const-string p1, "Escrow token handle equals LSKF-based protector ID"

    .line 17
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    monitor-exit v0

    .line 21
    return v2

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 26
    iget-object v3, v1, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    .line 28
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 35
    move-result v3

    .line 36
    const/4 v4, 0x1

    .line 37
    if-nez v3, :cond_1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object v1, v1, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    .line 42
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Landroid/util/ArrayMap;

    .line 52
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    move-result-object v1

    .line 60
    if-eqz v1, :cond_2

    .line 62
    monitor-exit v0

    .line 63
    return v4

    .line 64
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 66
    const-string/jumbo v3, "spblob"

    .line 69
    invoke-virtual {v1, p3, v3, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(ILjava/lang/String;J)Z

    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_3

    .line 75
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 77
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyTokenBasedProtector(IJ)V

    .line 80
    monitor-exit v0

    .line 81
    return v4

    .line 82
    :cond_3
    monitor-exit v0

    .line 83
    return v2

    .line 84
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    throw p0
.end method

.method public final removeGatekeeperPasswordHandle(J)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    .line 9
    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method

.method public final removeKey(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 6
    const-string v0, "alias is null"

    .line 8
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 14
    move-result v0

    .line 15
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 18
    move-result v1

    .line 19
    iget-object v2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 21
    iget-object v3, v2, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    .line 23
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 26
    move-result-object v3

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 30
    move-result-object v4

    .line 31
    filled-new-array {v4, p1}, [Ljava/lang/String;

    .line 34
    move-result-object v4

    .line 35
    const-string/jumbo v5, "keys"

    .line 38
    const-string/jumbo v6, "uid = ? AND alias = ?"

    .line 41
    invoke-virtual {v3, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 44
    move-result v3

    .line 45
    if-lez v3, :cond_0

    .line 47
    invoke-virtual {v2, v1, v0}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setShouldCreateSnapshot(II)J

    .line 50
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mApplicationKeyStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;

    .line 52
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/ApplicationKeyStorage;->deleteEntry(IILjava/lang/String;)V

    .line 55
    :cond_0
    return-void
.end method

.method public final removeKeystoreProfileKey(I)V
    .locals 5

    .line 1
    const-string v0, "LockSettingsService"

    .line 3
    const-string/jumbo v1, "profile_key_name_encrypt_"

    .line 6
    invoke-static {p1, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    const-string/jumbo v2, "profile_key_name_decrypt_"

    .line 13
    invoke-static {p1, v2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v2

    .line 17
    :try_start_0
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Ljava/security/KeyStore;

    .line 19
    invoke-virtual {v3, v1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_0

    .line 25
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Ljava/security/KeyStore;

    .line 27
    invoke-virtual {v3, v2}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_1

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :goto_0
    const-string v3, "Removing keystore profile key for user %d"

    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object v4

    .line 42
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 45
    move-result-object v4

    .line 46
    invoke-static {v0, v3, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Ljava/security/KeyStore;

    .line 51
    invoke-virtual {v3, v1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 54
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Ljava/security/KeyStore;

    .line 56
    invoke-virtual {p0, v2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_2

    .line 60
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    move-result-object p1

    .line 64
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 67
    move-result-object p1

    .line 68
    const-string v1, "Error removing keystore profile key for user %d"

    .line 70
    invoke-static {v0, p0, v1, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    :cond_1
    :goto_2
    return-void
.end method

.method public final removeStateForReusedUserIdIfNecessary(II)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 6
    const-string/jumbo v1, "serial-number"

    .line 9
    const/4 v2, -0x1

    .line 10
    invoke-virtual {v0, v2, p1, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->getInt(IILjava/lang/String;)I

    .line 13
    move-result v0

    .line 14
    if-eq v0, p2, :cond_2

    .line 16
    if-eq v0, v2, :cond_1

    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v2

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object v0

    .line 26
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object v3

    .line 30
    filled-new-array {v2, v0, v3}, [Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 34
    const-string v2, "LockSettingsService"

    .line 36
    const-string v3, "Removing stale state for reused userId %d (serial %d => %d)"

    .line 38
    invoke-static {v2, v3, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeUserState(I)V

    .line 44
    :cond_1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p0, v1, p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 56
    :cond_2
    return-void
.end method

.method public final removeUserState(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 3
    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda9;

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p1, v2, p0}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda9;-><init>(IILjava/lang/Object;)V

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 14
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 17
    move-result-object v1

    .line 18
    iget-object v2, v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 20
    const-string/jumbo v3, "spblob"

    .line 23
    invoke-virtual {v2, p1, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->listSyntheticPasswordProtectorsForUser(ILjava/lang/String;)Ljava/util/List;

    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 32
    move-result-object v2

    .line 33
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_0

    .line 39
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Ljava/lang/Long;

    .line 45
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 48
    move-result-wide v3

    .line 49
    invoke-virtual {v0, p1, v3, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyWeaverSlot(IJ)V

    .line 52
    invoke-static {v3, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getProtectorKeyAlias(J)Ljava/lang/String;

    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v0, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyProtectorKey(Ljava/lang/String;)V

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUserId(I)I

    .line 63
    move-result v0

    .line 64
    invoke-interface {v1, v0}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    goto :goto_1

    .line 68
    :catch_0
    const-string v0, "SyntheticPasswordManager"

    .line 70
    const-string v1, "Failed to clear SID from gatekeeper"

    .line 72
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :goto_1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    .line 77
    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    .line 79
    const/4 v1, 0x4

    .line 80
    const/4 v2, 0x0

    .line 81
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 88
    invoke-static {p1}, Landroid/security/AndroidKeyStoreMaintenance;->onUserRemoved(I)I

    .line 91
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUnifiedProfilePasswordCache:Lcom/android/server/locksettings/UnifiedProfilePasswordCache;

    .line 93
    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->removePassword(I)V

    .line 96
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 99
    move-result-object v0

    .line 100
    invoke-interface {v0, p1}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 103
    goto :goto_2

    .line 104
    :catch_1
    move-exception v0

    .line 105
    const-string v1, "LockSettingsService"

    .line 107
    const-string v2, "Failed to clear SID"

    .line 109
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeKeystoreProfileKey(I)V

    .line 115
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->removeUser(I)V

    .line 120
    return-void
.end method

.method public final removeWeakEscrowToken(JI)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkManageWeakEscrowTokenMethodUsage()V

    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->removeEscrowToken(JI)Z

    .line 11
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    throw p0
.end method

.method public final reportSuccessfulBiometricUnlock(ZI)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 3
    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    .line 5
    const-string v2, "LockSettingsBiometric"

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    .line 12
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEBUG:Z

    .line 14
    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    const-string/jumbo v1, "reportSuccessfulBiometricUnlock for isStrongBiometric="

    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    const-string v1, ", userId="

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    const-string v1, "LockSettingsStrongAuth"

    .line 44
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    const/4 v0, 0x0

    .line 48
    if-eqz p1, :cond_1

    .line 50
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    .line 52
    const/16 p1, 0x8

    .line 54
    invoke-virtual {p0, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    .line 64
    const/4 p1, 0x7

    .line 65
    invoke-virtual {p0, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 72
    :goto_0
    return-void
.end method

.method public final requestRemoteLockInfo(I)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 3
    move/from16 v2, p1

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 8
    const/4 v3, 0x0

    .line 9
    move v4, v3

    .line 10
    :goto_0
    const/4 v0, 0x4

    .line 11
    if-ge v4, v0, :cond_2

    .line 13
    new-instance v5, Landroid/os/Bundle;

    .line 15
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 18
    new-instance v6, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string/jumbo v7, "locked"

    .line 29
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v6

    .line 36
    invoke-virtual {v1, v6, v3, v2}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    .line 39
    move-result v6

    .line 40
    if-eqz v6, :cond_1

    .line 42
    new-instance v7, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    const-string/jumbo v8, "message"

    .line 53
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v7

    .line 60
    const/4 v8, 0x0

    .line 61
    invoke-virtual {v1, v7, v8, v2}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 64
    move-result-object v7

    .line 65
    new-instance v9, Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    const-string/jumbo v10, "phonenumber"

    .line 76
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object v9

    .line 83
    invoke-virtual {v1, v9, v8, v2}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 86
    move-result-object v9

    .line 87
    new-instance v10, Ljava/lang/StringBuilder;

    .line 89
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    const-string/jumbo v11, "enableemergencycall"

    .line 98
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object v10

    .line 105
    invoke-virtual {v1, v10, v3, v2}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    .line 108
    move-result v10

    .line 109
    new-instance v11, Ljava/lang/StringBuilder;

    .line 111
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    const-string/jumbo v12, "clientname"

    .line 120
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object v11

    .line 127
    invoke-virtual {v1, v11, v8, v2}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 130
    move-result-object v11

    .line 131
    new-instance v12, Ljava/lang/StringBuilder;

    .line 133
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    const-string/jumbo v13, "emailaddress"

    .line 142
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object v12

    .line 149
    invoke-virtual {v1, v12, v8, v2}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 152
    move-result-object v12

    .line 153
    const-string v13, "allowfailcount"

    .line 155
    invoke-static {v4, v13}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 158
    move-result-object v13

    .line 159
    const-wide/16 v14, 0x0

    .line 161
    move-object/from16 v16, v9

    .line 163
    invoke-virtual {v1, v13, v14, v15, v2}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    .line 166
    move-result-wide v8

    .line 167
    long-to-int v8, v8

    .line 168
    const-string/jumbo v9, "locktime"

    .line 171
    invoke-static {v4, v9}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 174
    move-result-object v9

    .line 175
    move v13, v8

    .line 176
    invoke-virtual {v1, v9, v14, v15, v2}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    .line 179
    move-result-wide v8

    .line 180
    const-string/jumbo v0, "permanentblockcount"

    .line 183
    invoke-static {v4, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v1, v0, v14, v15, v2}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    .line 190
    move-result-wide v14

    .line 191
    long-to-int v0, v14

    .line 192
    new-instance v14, Ljava/lang/StringBuilder;

    .line 194
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    const-string/jumbo v15, "skippin"

    .line 203
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    move-result-object v14

    .line 210
    invoke-virtual {v1, v14, v3, v2}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    .line 213
    move-result v14

    .line 214
    new-instance v15, Ljava/lang/StringBuilder;

    .line 216
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 222
    const-string/jumbo v3, "skipsupport"

    .line 225
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    move-result-object v3

    .line 232
    const/4 v15, 0x0

    .line 233
    invoke-virtual {v1, v3, v15, v2}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    .line 236
    move-result v3

    .line 237
    new-instance v15, Ljava/lang/StringBuilder;

    .line 239
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    move/from16 v17, v3

    .line 247
    const-string v3, "appname"

    .line 249
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    move-result-object v3

    .line 256
    const/4 v15, 0x0

    .line 257
    invoke-virtual {v1, v3, v15, v2}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 260
    move-result-object v3

    .line 261
    const-string/jumbo v15, "customer_app_name"

    .line 264
    invoke-virtual {v5, v15, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 267
    new-instance v3, Ljava/lang/StringBuilder;

    .line 269
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    const-string/jumbo v15, "packagename"

    .line 278
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    move-result-object v3

    .line 285
    const/4 v15, 0x0

    .line 286
    invoke-virtual {v1, v3, v15, v2}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 289
    move-result-object v3

    .line 290
    const-string/jumbo v15, "customer_package_name"

    .line 293
    invoke-virtual {v5, v15, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 296
    new-instance v3, Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 298
    invoke-direct {v3, v4, v6}, Lcom/android/internal/widget/RemoteLockInfo$Builder;-><init>(IZ)V

    .line 301
    invoke-virtual {v3, v7}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 304
    move-result-object v3

    .line 305
    move-object/from16 v6, v16

    .line 307
    invoke-virtual {v3, v6}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setPhoneNumber(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 310
    move-result-object v3

    .line 311
    invoke-virtual {v3, v10}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setEnableEmergencyCall(Z)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 314
    move-result-object v3

    .line 315
    invoke-virtual {v3, v11}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setClientName(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 318
    move-result-object v3

    .line 319
    invoke-virtual {v3, v12}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setEmailAddress(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 322
    move-result-object v3

    .line 323
    invoke-virtual {v3, v13}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setAllowFailCount(I)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 326
    move-result-object v3

    .line 327
    invoke-virtual {v3, v8, v9}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setLockTimeOut(J)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 330
    move-result-object v3

    .line 331
    invoke-virtual {v3, v0}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setBlockCount(I)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 334
    move-result-object v0

    .line 335
    invoke-virtual {v0, v14}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setSkipPinContainer(Z)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 338
    move-result-object v0

    .line 339
    move/from16 v3, v17

    .line 341
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setSkipSupportContainer(Z)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 344
    move-result-object v0

    .line 345
    invoke-virtual {v0, v5}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setBundle(Landroid/os/Bundle;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    .line 348
    move-result-object v0

    .line 349
    invoke-virtual {v0}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->build()Lcom/android/internal/widget/RemoteLockInfo;

    .line 352
    move-result-object v3

    .line 353
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    .line 355
    const/4 v5, 0x4

    .line 356
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 359
    move-result-object v5

    .line 360
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    move-result-object v0

    .line 364
    check-cast v0, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    .line 366
    const-string/jumbo v5, "failed changeRemoteLockState callback!"

    .line 369
    const-string v6, "LockSettingsService"

    .line 371
    if-eqz v0, :cond_0

    .line 373
    :try_start_0
    invoke-interface {v0, v3}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    goto :goto_1

    .line 377
    :catch_0
    move-exception v0

    .line 378
    move-object v7, v0

    .line 379
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    .line 385
    :cond_0
    :goto_1
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    .line 387
    const/4 v7, 0x5

    .line 388
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 391
    move-result-object v7

    .line 392
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    move-result-object v0

    .line 396
    check-cast v0, Lcom/android/internal/widget/IRemoteLockMonitorCallback;

    .line 398
    if-eqz v0, :cond_1

    .line 400
    :try_start_1
    invoke-interface {v0, v3}, Lcom/android/internal/widget/IRemoteLockMonitorCallback;->changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 403
    goto :goto_2

    .line 404
    :catch_1
    move-exception v0

    .line 405
    move-object v3, v0

    .line 406
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 412
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 414
    const/4 v3, 0x0

    .line 415
    goto/16 :goto_0

    .line 417
    :cond_2
    return-void
.end method

.method public final requireStrongAuth(II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->requireStrongAuth(II)V

    .line 9
    return-void
.end method

.method public final resetKeyStore(I)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v0

    .line 8
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    const-string v1, "Resetting keystore for user %d"

    .line 14
    const-string v2, "LockSettingsService"

    .line 16
    invoke-static {v2, v1, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    .line 26
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 31
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    .line 34
    move-result-object v3

    .line 35
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    move-result-object v3

    .line 39
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_1

    .line 45
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Landroid/content/pm/UserInfo;

    .line 51
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    .line 53
    invoke-virtual {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_0

    .line 59
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    .line 61
    invoke-virtual {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    .line 64
    move-result v5

    .line 65
    if-nez v5, :cond_0

    .line 67
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 69
    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    .line 71
    invoke-virtual {v5, v6}, Lcom/android/server/locksettings/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/io/File;

    .line 74
    move-result-object v6

    .line 75
    invoke-virtual {v5, v6}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/io/File;)Z

    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_0

    .line 81
    :try_start_0
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    .line 83
    invoke-virtual {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    .line 86
    move-result-object v5

    .line 87
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 92
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    move-result-object v4

    .line 96
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    goto :goto_0

    .line 100
    :catch_0
    move-exception v4

    .line 101
    const-string v5, "Failed to decrypt child profile key"

    .line 103
    invoke-static {v2, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    goto :goto_0

    .line 107
    :cond_1
    const/4 v2, -0x1

    .line 108
    const/4 v3, 0x0

    .line 109
    :try_start_1
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 111
    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    .line 114
    move-result-object v4

    .line 115
    array-length v5, v4

    .line 116
    move v6, v3

    .line 117
    :goto_1
    if-ge v6, v5, :cond_3

    .line 119
    aget v7, v4, v6

    .line 121
    sget-object v8, Lcom/android/server/locksettings/LockSettingsService;->SYSTEM_CREDENTIAL_UIDS:[I

    .line 123
    array-length v9, v8

    .line 124
    move v10, v3

    .line 125
    :goto_2
    if-ge v10, v9, :cond_2

    .line 127
    aget v11, v8, v10

    .line 129
    invoke-static {v7, v11}, Landroid/os/UserHandle;->getUid(II)I

    .line 132
    move-result v11

    .line 133
    int-to-long v11, v11

    .line 134
    invoke-static {v3, v11, v12}, Landroid/security/AndroidKeyStoreMaintenance;->clearNamespace(IJ)I

    .line 137
    add-int/lit8 v10, v10, 0x1

    .line 139
    goto :goto_2

    .line 140
    :catchall_0
    move-exception v4

    .line 141
    goto :goto_4

    .line 142
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 144
    goto :goto_1

    .line 145
    :cond_3
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 147
    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 150
    move-result-object v4

    .line 151
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isPrimary()Z

    .line 154
    move-result v4

    .line 155
    if-eqz v4, :cond_4

    .line 157
    const/4 v4, 0x2

    .line 158
    const-wide/16 v5, 0x66

    .line 160
    invoke-static {v4, v5, v6}, Landroid/security/AndroidKeyStoreMaintenance;->clearNamespace(IJ)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    :cond_4
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 166
    move-result v4

    .line 167
    if-ge v3, v4, :cond_7

    .line 169
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 172
    move-result-object v4

    .line 173
    check-cast v4, Ljava/lang/Integer;

    .line 175
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 178
    move-result v4

    .line 179
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 182
    move-result-object v5

    .line 183
    check-cast v5, Lcom/android/internal/widget/LockscreenCredential;

    .line 185
    if-eq v4, v2, :cond_5

    .line 187
    if-eqz v5, :cond_5

    .line 189
    invoke-virtual {p0, v4, p1, v5}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockToParent(IILcom/android/internal/widget/LockscreenCredential;)V

    .line 192
    :cond_5
    if-eqz v5, :cond_6

    .line 194
    invoke-virtual {v5}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 197
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 199
    goto :goto_3

    .line 200
    :cond_7
    return-void

    .line 201
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 204
    move-result v5

    .line 205
    if-ge v3, v5, :cond_a

    .line 207
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 210
    move-result-object v5

    .line 211
    check-cast v5, Ljava/lang/Integer;

    .line 213
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 216
    move-result v5

    .line 217
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 220
    move-result-object v6

    .line 221
    check-cast v6, Lcom/android/internal/widget/LockscreenCredential;

    .line 223
    if-eq v5, v2, :cond_8

    .line 225
    if-eqz v6, :cond_8

    .line 227
    invoke-virtual {p0, v5, p1, v6}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockToParent(IILcom/android/internal/widget/LockscreenCredential;)V

    .line 230
    :cond_8
    if-eqz v6, :cond_9

    .line 232
    invoke-virtual {v6}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 235
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 237
    goto :goto_4

    .line 238
    :cond_a
    throw v4
.end method

.method public final scheduleNonStrongBiometricIdleTimeout(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 3
    const-string v1, "android.permission.MANAGE_BIOMETRIC"

    .line 5
    const-string v2, "LockSettingsBiometric"

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    .line 12
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->DEBUG:Z

    .line 14
    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    const-string/jumbo v1, "scheduleNonStrongBiometricIdleTimeout for userId="

    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    const-string v1, "LockSettingsStrongAuth"

    .line 36
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    .line 41
    const/16 v0, 0x9

    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 51
    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 7
    return-void
.end method

.method public final sendCredentialsOnChangeIfRequired(IZLcom/android/internal/widget/LockscreenCredential;)V
    .locals 17

    .line 1
    if-eqz p2, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_0
    move-object v12, v0

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :goto_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/locksettings/LockSettingsService;->getProfilesWithSameLockScreen(I)Ljava/util/Set;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/util/ArraySet;

    .line 24
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object v13

    .line 28
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 34
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/lang/Integer;

    .line 40
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 43
    move-result v5

    .line 44
    move-object/from16 v14, p0

    .line 46
    iget-object v0, v14, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 48
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    .line 51
    move-result v6

    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    const-string v15, "RecoverableKeyStoreMgr"

    .line 57
    :try_start_0
    iget-object v11, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 59
    iget-object v1, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mContext:Landroid/content/Context;

    .line 61
    iget-object v2, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 63
    iget-object v3, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mSnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    .line 65
    iget-object v4, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mListenersStorage:Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

    .line 67
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;

    .line 69
    invoke-static {v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getInstance(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;)Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    .line 72
    move-result-object v9

    .line 73
    new-instance v10, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 75
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v16, Landroid/security/Scrypt;

    .line 80
    invoke-direct/range {v16 .. v16}, Landroid/security/Scrypt;-><init>()V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException; {:try_start_0 .. :try_end_0} :catch_3

    .line 83
    const/4 v8, 0x1

    .line 84
    move-object v1, v0

    .line 85
    move-object v7, v12

    .line 86
    move-object/from16 p2, v12

    .line 88
    move-object v12, v11

    .line 89
    move-object/from16 v11, v16

    .line 91
    :try_start_1
    invoke-direct/range {v1 .. v11}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;-><init>(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;II[BZLcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;Landroid/security/Scrypt;)V

    .line 94
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 96
    const-wide/16 v2, 0x7d0

    .line 98
    invoke-interface {v12, v0, v2, v3, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException; {:try_start_1 .. :try_end_1} :catch_0

    .line 101
    goto :goto_6

    .line 102
    :catch_0
    move-exception v0

    .line 103
    goto :goto_3

    .line 104
    :catch_1
    move-exception v0

    .line 105
    goto :goto_4

    .line 106
    :catch_2
    move-exception v0

    .line 107
    goto :goto_5

    .line 108
    :catch_3
    move-exception v0

    .line 109
    move-object/from16 p2, v12

    .line 111
    goto :goto_3

    .line 112
    :catch_4
    move-exception v0

    .line 113
    move-object/from16 p2, v12

    .line 115
    goto :goto_4

    .line 116
    :catch_5
    move-exception v0

    .line 117
    move-object/from16 p2, v12

    .line 119
    goto :goto_5

    .line 120
    :goto_3
    const-string v1, "InsecureUserException during lock screen secret update"

    .line 122
    invoke-static {v15, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    goto :goto_6

    .line 126
    :goto_4
    const-string v1, "Key store error encountered during recoverable key sync"

    .line 128
    invoke-static {v15, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    goto :goto_6

    .line 132
    :goto_5
    const-string v1, "Should never happen - algorithm unavailable for KeySync"

    .line 134
    invoke-static {v15, v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    :goto_6
    move-object/from16 v12, p2

    .line 139
    goto :goto_2

    .line 140
    :cond_2
    return-void
.end method

.method public final sendCredentialsOnUnlockIfRequired(Lcom/android/internal/widget/LockscreenCredential;I)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 3
    move/from16 v0, p2

    .line 5
    invoke-static/range {p2 .. p2}, Lcom/android/internal/widget/LockPatternUtils;->isSpecialUserId(I)Z

    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 18
    return-void

    .line 19
    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithUnifiedLock(I)Z

    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_2

    .line 25
    return-void

    .line 26
    :cond_2
    invoke-virtual {v1, v0}, Lcom/android/server/locksettings/LockSettingsService;->getProfilesWithSameLockScreen(I)Ljava/util/Set;

    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/util/ArraySet;

    .line 32
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object v2

    .line 36
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_3

    .line 42
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Ljava/lang/Integer;

    .line 48
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 51
    move-result v7

    .line 52
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 54
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    .line 57
    move-result v8

    .line 58
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    .line 61
    move-result-object v9

    .line 62
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    const-string v14, "RecoverableKeyStoreMgr"

    .line 67
    :try_start_0
    iget-object v15, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 69
    iget-object v3, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mContext:Landroid/content/Context;

    .line 71
    iget-object v4, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 73
    iget-object v5, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mSnapshotStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;

    .line 75
    iget-object v6, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mListenersStorage:Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

    .line 77
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;

    .line 79
    invoke-static {v3, v4}, Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;->getInstance(Landroid/content/Context;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;)Lcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;

    .line 82
    move-result-object v11

    .line 83
    new-instance v12, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 85
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v13, Landroid/security/Scrypt;

    .line 90
    invoke-direct {v13}, Landroid/security/Scrypt;-><init>()V

    .line 93
    const/4 v10, 0x0

    .line 94
    move-object v3, v0

    .line 95
    invoke-direct/range {v3 .. v13}, Lcom/android/server/locksettings/recoverablekeystore/KeySyncTask;-><init>(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverySnapshotStorage;Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;II[BZLcom/android/server/locksettings/recoverablekeystore/PlatformKeyManager;Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;Landroid/security/Scrypt;)V

    .line 98
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 100
    const-wide/16 v4, 0x7d0

    .line 102
    invoke-interface {v15, v0, v4, v5, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/server/locksettings/recoverablekeystore/InsecureUserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    goto :goto_1

    .line 108
    :catch_1
    move-exception v0

    .line 109
    goto :goto_2

    .line 110
    :catch_2
    move-exception v0

    .line 111
    goto :goto_3

    .line 112
    :goto_1
    const-string v3, "Impossible - insecure user, but user just entered lock screen"

    .line 114
    invoke-static {v14, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    goto :goto_0

    .line 118
    :goto_2
    const-string v3, "Key store error encountered during recoverable key sync"

    .line 120
    invoke-static {v14, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    goto :goto_0

    .line 124
    :goto_3
    const-string v3, "Should never happen - algorithm unavailable for KeySync"

    .line 126
    invoke-static {v14, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    goto :goto_0

    .line 130
    :cond_3
    return-void
.end method

.method public final sendLockTypeChangedInfo(I)V
    .locals 1

    .line 1
    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 9
    const-string v0, "android.permission.SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS"

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 20
    const-string/jumbo p1, "sendLockTypeChangedInfo requires SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS or android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 23
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 26
    throw p0

    .line 27
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->sendLockTypeChangedInfo(I)V

    .line 32
    return-void
.end method

.method public final setAppLockBackupPin(Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 6
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash(I[B)[B

    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    const-string p1, "applockbackuppin.key"

    .line 21
    invoke-static {p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    .line 24
    move-result-object p1

    .line 25
    const/4 p2, 0x1

    .line 26
    invoke-virtual {v0, p1, p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/io/File;[BZ)V

    .line 29
    return-void
.end method

.method public final setAppLockFingerprintPassword(Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 6
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash(I[B)[B

    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    const-string p1, "applockfingerprintpassword.key"

    .line 21
    invoke-static {p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    .line 24
    move-result-object p1

    .line 25
    const/4 p2, 0x1

    .line 26
    invoke-virtual {v0, p1, p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/io/File;[BZ)V

    .line 29
    return-void
.end method

.method public final setAppLockPassword(Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 6
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash(I[B)[B

    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    const-string p1, "applockpassword.key"

    .line 21
    invoke-static {p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    .line 24
    move-result-object p1

    .line 25
    const/4 p2, 0x1

    .line 26
    invoke-virtual {v0, p1, p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/io/File;[BZ)V

    .line 29
    return-void
.end method

.method public final setAppLockPattern(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 6
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->byteArrayToPattern([B)Ljava/util/List;

    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToByteArray(Ljava/util/List;)[B

    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    const-string v0, "applockpattern.key"

    .line 25
    invoke-static {p2, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    .line 28
    move-result-object p2

    .line 29
    const/4 v0, 0x1

    .line 30
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/io/File;[BZ)V

    .line 33
    return-void
.end method

.method public final setAppLockPin(Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 6
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash(I[B)[B

    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    const-string p1, "applockpin.key"

    .line 21
    invoke-static {p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    .line 24
    move-result-object p1

    .line 25
    const/4 p2, 0x1

    .line 26
    invoke-virtual {v0, p1, p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/io/File;[BZ)V

    .line 29
    return-void
.end method

.method public final setBackupLskfBasedProtectorId(IJ)V
    .locals 9

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    move-result-object v0

    .line 5
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "!@ setBackupLskfBasedProtectorId : %016x"

    .line 11
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    const-string v1, "LockSettingsService"

    .line 17
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getBackupLskfBasedProtectorId(I)J

    .line 23
    move-result-wide v2

    .line 24
    cmp-long v0, v2, p2

    .line 26
    if-nez v0, :cond_0

    .line 28
    return-void

    .line 29
    :cond_0
    const-string v0, "backup-protector-id"

    .line 31
    invoke-virtual {p0, v0, p2, p3, p1}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 34
    const-string v0, "backup-protector-ts"

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 39
    move-result-wide v2

    .line 40
    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 43
    const-wide/16 v2, 0x0

    .line 45
    cmp-long v0, v2, p2

    .line 47
    const-string v4, "backup-expiration-ts"

    .line 49
    if-nez v0, :cond_1

    .line 51
    invoke-virtual {p0, v4, v2, v3, p1}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 58
    move-result-wide v5

    .line 59
    const-wide/32 v7, 0xf731400

    .line 62
    add-long/2addr v5, v7

    .line 63
    invoke-virtual {p0, v4, v5, v6, p1}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 66
    :goto_0
    const-string/jumbo v0, "prev.attempts.count"

    .line 69
    const/4 v4, 0x0

    .line 70
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 73
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    move-result-object v0

    .line 77
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 80
    move-result-object p2

    .line 81
    filled-new-array {v0, p2}, [Ljava/lang/Object;

    .line 84
    move-result-object p2

    .line 85
    const-string p3, "LockSettingsDB, setBackupLskfBasedProtectorId User %d [%016x]"

    .line 87
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    move-result-object p2

    .line 91
    invoke-static {p2}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    .line 94
    const-string/jumbo p2, "locksettings_db_backup"

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 100
    move-result-wide v2

    .line 101
    invoke-virtual {p0, p2, v2, v3, v4}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 104
    if-eqz p1, :cond_2

    .line 106
    const-string p0, "SPblobBNR, Backups are only supported for system users"

    .line 108
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    goto :goto_1

    .line 112
    :cond_2
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 114
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpBackup:Lcom/android/server/locksettings/LockSettingsService$9;

    .line 116
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 119
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 121
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpBackup:Lcom/android/server/locksettings/LockSettingsService$9;

    .line 123
    const-wide/16 p2, 0x1f4

    .line 125
    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 128
    :goto_1
    return-void
.end method

.method public final setBoolean(Ljava/lang/String;ZI)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    if-eqz p2, :cond_0

    .line 14
    const-string p2, "1"

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string p2, "0"

    .line 19
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 22
    return-void
.end method

.method public final setCarrierLockEnabled(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setCeStorageProtection(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V
    .locals 4

    .line 1
    const-string v0, "Failed to protect CE key for user "

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-object v1, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_FBE_KEY:[B

    .line 8
    invoke-virtual {p2, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveSubkey([B)[B

    .line 11
    move-result-object p2

    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    move-result-wide v1

    .line 16
    :try_start_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    .line 18
    invoke-interface {p0, p1, p2}, Landroid/os/storage/IStorageManager;->setCeStorageProtection(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    :try_start_1
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    invoke-direct {p2, p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    throw p0
.end method

.method public final setCurrentLskfBasedProtectorId(IJ)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 4
    move-result-wide v0

    .line 5
    const-string/jumbo v2, "sp-handle"

    .line 8
    invoke-virtual {p0, v2, p2, p3, p1}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 11
    const-string/jumbo v2, "prev-sp-handle"

    .line 14
    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 17
    const-string/jumbo v0, "sp-handle-ts"

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    move-result-wide v1

    .line 24
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v0

    .line 31
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 34
    move-result-object p2

    .line 35
    filled-new-array {v0, p2}, [Ljava/lang/Object;

    .line 38
    move-result-object p2

    .line 39
    const-string p3, "LockSettingsDB, setCurrentLskfBasedProtectorId User %d [%016x]"

    .line 41
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    move-result-object p2

    .line 45
    invoke-static {p2}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 51
    move-result-wide p2

    .line 52
    const/4 v0, 0x0

    .line 53
    const-string/jumbo v1, "locksettings_db_backup"

    .line 56
    invoke-virtual {p0, v1, p2, p3, v0}, Lcom/android/server/locksettings/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 59
    if-eqz p1, :cond_0

    .line 61
    const-string p0, "LockSettingsService"

    .line 63
    const-string p1, "SPblobBNR, Backups are only supported for system users"

    .line 65
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 71
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpBackup:Lcom/android/server/locksettings/LockSettingsService$9;

    .line 73
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 76
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 78
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpBackup:Lcom/android/server/locksettings/LockSettingsService$9;

    .line 80
    const-wide/16 p2, 0x1f4

    .line 82
    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 85
    :goto_0
    return-void
.end method

.method public setKeystorePassword([BI)V
    .locals 1

    .line 1
    invoke-static {p2, p1}, Landroid/security/AndroidKeyStoreMaintenance;->onUserPasswordChanged(I[B)I

    .line 4
    move-result p0

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v0, "setKeystore, user "

    .line 10
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string p2, ", ret = "

    .line 18
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    invoke-static {p0}, Lcom/samsung/android/lock/LsLog;->enroll(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public final setKnoxGuard(ILcom/android/internal/widget/RemoteLockInfo;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->applyRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)Z

    .line 7
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    return p0

    .line 9
    :catch_0
    const-string p0, "LockSettingsService"

    .line 11
    const-string/jumbo p1, "failed applyRemoteLock!"

    .line 14
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public final setLockCarrierPassword([BI)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 6
    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash(I[B)[B

    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    const-string/jumbo p1, "sktpassword.key"

    .line 16
    invoke-static {p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    .line 19
    move-result-object p1

    .line 20
    const/4 p2, 0x1

    .line 21
    invoke-virtual {v0, p1, p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/io/File;[BZ)V

    .line 24
    return-void
.end method

.method public final setLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithIgnoreNotifyIfNeeded(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public final setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z
    .locals 17

    .line 1
    move-object/from16 v8, p0

    .line 3
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    const/16 v0, -0x26ab

    .line 11
    const/4 v9, 0x1

    .line 12
    const/4 v1, 0x0

    .line 13
    move/from16 v2, p3

    .line 15
    if-ne v2, v0, :cond_0

    .line 17
    const-string v0, "LockSettingsService"

    .line 19
    const-string v2, "!@ set credential with prev!!!"

    .line 21
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    move v7, v1

    .line 25
    move v2, v9

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v7, v2

    .line 28
    move v2, v1

    .line 29
    :goto_0
    invoke-static {}, Lcom/samsung/android/lock/SPBnRManager;->resetMode()V

    .line 32
    iget-object v6, v8, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 34
    monitor-enter v6

    .line 35
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    .line 38
    move-result v0

    .line 39
    const/4 v3, 0x0

    .line 40
    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {v8, v7}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithUnifiedLock(I)Z

    .line 45
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    if-eqz v0, :cond_1

    .line 48
    :try_start_1
    invoke-virtual {v8, v7}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    .line 51
    move-result-object v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    goto :goto_2

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    move-object v11, v6

    .line 55
    goto/16 :goto_7

    .line 57
    :catch_0
    move-exception v0

    .line 58
    :try_start_2
    const-string v4, "LockSettingsService"

    .line 60
    const-string v5, "Failed to decrypt child profile key"

    .line 62
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    const-string v4, "Failed to decrypt child profile key"

    .line 67
    invoke-static {v0, v3, v4}, Lcom/android/server/knox/dar/sdp/SDPLog;->e(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    goto :goto_1

    .line 71
    :catch_1
    move-exception v0

    .line 72
    move-object v4, v0

    .line 73
    const-string v0, "LockSettingsService"

    .line 75
    const-string v5, "Child profile key not found"

    .line 77
    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v0, "Child profile key not found"

    .line 82
    invoke-static {v4, v3, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->e(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_1
    :goto_1
    move-object/from16 v0, p2

    .line 87
    :goto_2
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->isEnablePrevCredential()Z

    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_2

    .line 93
    if-eqz v2, :cond_2

    .line 95
    invoke-virtual {v8, v7}, Lcom/android/server/locksettings/LockSettingsService;->getBackupLskfBasedProtectorId(I)J

    .line 98
    move-result-wide v4

    .line 99
    iget-object v10, v8, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 104
    move-result-object v11

    .line 105
    const/16 v16, 0x0

    .line 107
    move-wide v12, v4

    .line 108
    move-object v14, v0

    .line 109
    move v15, v7

    .line 110
    invoke-virtual/range {v10 .. v16}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    .line 113
    move-result-object v10

    .line 114
    goto :goto_3

    .line 115
    :cond_2
    invoke-virtual {v8, v7}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 118
    move-result-wide v4

    .line 119
    iget-object v10, v8, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 124
    move-result-object v11

    .line 125
    const/16 v16, 0x0

    .line 127
    move-wide v12, v4

    .line 128
    move-object v14, v0

    .line 129
    move v15, v7

    .line 130
    invoke-virtual/range {v10 .. v16}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    .line 133
    move-result-object v10

    .line 134
    :goto_3
    iget-object v11, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 136
    iget-object v10, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 138
    if-nez v10, :cond_6

    .line 140
    const-string v0, "Untrusted credential reset not acceptable"

    .line 142
    invoke-static {v3, v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    if-eqz v11, :cond_5

    .line 147
    invoke-virtual {v11}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    .line 150
    move-result v0

    .line 151
    const/4 v2, -0x1

    .line 152
    if-ne v0, v2, :cond_3

    .line 154
    goto :goto_4

    .line 155
    :cond_3
    invoke-virtual {v11}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    .line 158
    move-result v0

    .line 159
    if-ne v0, v9, :cond_4

    .line 161
    const-string v0, "LockSettingsService"

    .line 163
    const-string v2, "Failed to enroll: rate limit exceeded."

    .line 165
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const-string v0, "Failed to enroll: rate limit exceeded."

    .line 170
    invoke-static {v0, v9}, Lcom/samsung/android/lock/LsLog;->enroll(Ljava/lang/String;Z)V

    .line 173
    monitor-exit v6

    .line 174
    return v1

    .line 175
    :cond_4
    const-string/jumbo v0, "credential change failed. sp is null"

    .line 178
    invoke-static {v0, v9}, Lcom/samsung/android/lock/LsLog;->enroll(Ljava/lang/String;Z)V

    .line 181
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 183
    const-string/jumbo v1, "password change failed"

    .line 186
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 189
    throw v0

    .line 190
    :cond_5
    :goto_4
    const-string v0, "LockSettingsService"

    .line 192
    const-string v2, "Failed to enroll: incorrect credential."

    .line 194
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const-string v0, "Failed to enroll: incorrect credential."

    .line 199
    invoke-static {v0, v9}, Lcom/samsung/android/lock/LsLog;->enroll(Ljava/lang/String;Z)V

    .line 202
    monitor-exit v6

    .line 203
    return v1

    .line 204
    :cond_6
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->isEnablePrevCredential()Z

    .line 207
    move-result v3

    .line 208
    if-eqz v3, :cond_7

    .line 210
    if-nez v2, :cond_7

    .line 212
    if-nez v7, :cond_7

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->expirePreviousData()V

    .line 217
    :cond_7
    invoke-virtual {v8, v7, v10, v1}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordKnown(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Z)V

    .line 220
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->isEnablePrevCredential()Z

    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_8

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->isSupportWeaver()Z

    .line 229
    move-result v1

    .line 230
    if-nez v1, :cond_8

    .line 232
    if-nez v7, :cond_8

    .line 234
    invoke-virtual {v0}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    .line 237
    move-result v1

    .line 238
    if-nez v1, :cond_8

    .line 240
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    .line 243
    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 244
    if-nez v1, :cond_8

    .line 246
    move-object/from16 v1, p0

    .line 248
    move-object/from16 v2, p1

    .line 250
    move-object v3, v0

    .line 251
    move-object v11, v6

    .line 252
    move-object v6, v10

    .line 253
    move v12, v7

    .line 254
    :try_start_3
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithSpLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;JLcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)J

    .line 257
    :goto_5
    move-object/from16 v1, p1

    .line 259
    move/from16 v2, p4

    .line 261
    goto :goto_6

    .line 262
    :catchall_1
    move-exception v0

    .line 263
    goto :goto_7

    .line 264
    :cond_8
    move-object v11, v6

    .line 265
    move v12, v7

    .line 266
    const/4 v3, 0x0

    .line 267
    const-wide/16 v4, 0x0

    .line 269
    move-object/from16 v1, p0

    .line 271
    move-object/from16 v2, p1

    .line 273
    move-object v6, v10

    .line 274
    move v7, v12

    .line 275
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithSpLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;JLcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)J

    .line 278
    goto :goto_5

    .line 279
    :goto_6
    invoke-virtual {v8, v12, v2, v1}, Lcom/android/server/locksettings/LockSettingsService;->sendCredentialsOnChangeIfRequired(IZLcom/android/internal/widget/LockscreenCredential;)V

    .line 282
    iget-object v0, v8, Lcom/android/server/locksettings/LockSettingsService;->mDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;

    .line 284
    invoke-virtual {v0, v12}, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->saveEscrowDataIfNeededLocked(I)V

    .line 287
    monitor-exit v11

    .line 288
    return v9

    .line 289
    :goto_7
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 290
    throw v0
.end method

.method public final setLockCredentialWithIgnoreNotifyIfNeeded(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z
    .locals 9

    .line 1
    iget-boolean p4, p0, Lcom/android/server/locksettings/LockSettingsService;->mHasSecureLockScreen:Z

    .line 3
    if-nez p4, :cond_1

    .line 5
    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    .line 10
    move-result p4

    .line 11
    const/4 v0, -0x1

    .line 12
    if-ne p4, v0, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 17
    const-string p1, "This operation requires secure lock screen feature"

    .line 19
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 22
    throw p0

    .line 23
    :cond_1
    :goto_0
    const-string p4, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 25
    invoke-virtual {p0, p4}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    .line 28
    move-result p4

    .line 29
    if-nez p4, :cond_3

    .line 31
    const-string p4, "android.permission.SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS"

    .line 33
    invoke-virtual {p0, p4}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    .line 36
    move-result p4

    .line 37
    if-nez p4, :cond_3

    .line 39
    const-string p4, "android.permission.SET_INITIAL_LOCK"

    .line 41
    invoke-virtual {p0, p4}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    .line 44
    move-result p4

    .line 45
    if-eqz p4, :cond_2

    .line 47
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    .line 50
    move-result p4

    .line 51
    if-eqz p4, :cond_2

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 56
    const-string/jumbo p1, "setLockCredential requires SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS or android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 59
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 62
    throw p0

    .line 63
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->validateBasicRequirements()V

    .line 66
    const/4 p4, 0x0

    .line 67
    const/16 v0, -0x26ab

    .line 69
    const/4 v1, 0x1

    .line 70
    if-ne p3, v0, :cond_4

    .line 72
    move p3, p4

    .line 73
    move v2, v1

    .line 74
    goto :goto_2

    .line 75
    :cond_4
    move v2, p4

    .line 76
    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 79
    move-result-wide v3

    .line 80
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->enforceFrpNotActive()V

    .line 83
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 85
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 88
    move-result-object v5

    .line 89
    const-string/jumbo v6, "n_digits_pin_enabled"

    .line 92
    invoke-static {v5, v6, p4, p3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 95
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    .line 98
    move-result v5

    .line 99
    if-nez v5, :cond_5

    .line 101
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithUnifiedLock(I)Z

    .line 104
    move-result v5

    .line 105
    if-eqz v5, :cond_5

    .line 107
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 109
    invoke-virtual {v5, p3}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 112
    move-result-object v5

    .line 113
    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    .line 115
    invoke-virtual {p0, p2, v5, p4}, Lcom/android/server/locksettings/LockSettingsService;->verifyCredential(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 118
    invoke-virtual {p2}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 121
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    .line 124
    move-result-object p2

    .line 125
    goto :goto_3

    .line 126
    :catchall_0
    move-exception p0

    .line 127
    goto/16 :goto_6

    .line 129
    :cond_5
    :goto_3
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 131
    invoke-virtual {v5, p3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 134
    move-result-object v5

    .line 135
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isSdpNotSupportedSecureFolder()Z

    .line 138
    move-result v5

    .line 139
    const/4 v6, 0x0

    .line 140
    if-eqz v5, :cond_6

    .line 142
    const-string v7, "User %d identified as sdp not-supported secure folder user"

    .line 144
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    move-result-object v8

    .line 148
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 151
    move-result-object v8

    .line 152
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 155
    move-result-object v7

    .line 156
    invoke-static {v6, v7}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_6
    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 162
    move-result v7

    .line 163
    if-nez v7, :cond_7

    .line 165
    if-eqz v5, :cond_8

    .line 167
    :cond_7
    const-string v5, "SEP-Lite User %d identified as SecureFolder user"

    .line 169
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    move-result-object v7

    .line 173
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 176
    move-result-object v7

    .line 177
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 180
    move-result-object v5

    .line 181
    invoke-static {v6, v5}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mDarLockSettings:Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;

    .line 186
    invoke-virtual {v5, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService$DarLockSettings;->setSecureFolderLockCredential(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 189
    move-result-object v5

    .line 190
    invoke-virtual {v5}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    .line 193
    move-result v5

    .line 194
    if-eq v5, v1, :cond_8

    .line 196
    const-string/jumbo p0, "sdp not supported : setSecureFolderLockCredential success"

    .line 199
    invoke-static {v6, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 205
    return v1

    .line 206
    :cond_8
    :try_start_1
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    .line 208
    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    if-eqz v2, :cond_9

    .line 211
    goto :goto_4

    .line 212
    :cond_9
    move v0, p3

    .line 213
    :goto_4
    :try_start_2
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    .line 216
    move-result p2

    .line 217
    if-nez p2, :cond_a

    .line 219
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 222
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 223
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 226
    return p4

    .line 227
    :catchall_1
    move-exception p0

    .line 228
    goto :goto_5

    .line 229
    :cond_a
    :try_start_3
    invoke-virtual {p0, p3, v1, v6}, Lcom/android/server/locksettings/LockSettingsService;->setSeparateProfileChallengeEnabledLocked(IZLcom/android/internal/widget/LockscreenCredential;)V

    .line 232
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 234
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda3;

    .line 236
    invoke-direct {v0, p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/locksettings/LockSettingsService;Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 239
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 242
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 243
    :try_start_4
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    .line 246
    move-result p2

    .line 247
    if-eqz p2, :cond_b

    .line 249
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 251
    const-class v0, Landroid/app/trust/TrustManager;

    .line 253
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 256
    move-result-object p2

    .line 257
    check-cast p2, Landroid/app/trust/TrustManager;

    .line 259
    invoke-virtual {p2, p3, p4}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    .line 262
    :cond_b
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 264
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda4;

    .line 266
    invoke-direct {v0, p3}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda4;-><init>(I)V

    .line 269
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 272
    invoke-virtual {p0, p1, p3}, Lcom/android/server/locksettings/LockSettingsService;->onPostPasswordChanged(Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 275
    invoke-static {p3, p4}, Lcom/samsung/android/lock/LsLog;->setFailureCount(II)V

    .line 278
    invoke-static {p3}, Lcom/samsung/android/lock/SPBnRManager;->getPWFilelist(I)Ljava/lang/String;

    .line 281
    move-result-object p0

    .line 282
    invoke-static {p0, v1}, Lcom/samsung/android/lock/LsLog;->enroll(Ljava/lang/String;Z)V

    .line 285
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 288
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 291
    return v1

    .line 292
    :goto_5
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 293
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 294
    :goto_6
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 297
    throw p0
.end method

.method public final setLockCredentialWithSpLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;JLcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)J
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v10, p5

    .line 5
    move/from16 v11, p6

    .line 7
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    .line 14
    move-result v2

    .line 15
    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->credentialTypeToString(I)Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    const-string v12, "LockSettingsService"

    .line 25
    const-string v2, "Changing lockscreen credential of user %d; newCredentialType=%s\n"

    .line 27
    invoke-static {v12, v2, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    invoke-virtual {v1, v11}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialTypeInternal(I)I

    .line 33
    move-result v13

    .line 34
    invoke-virtual {v1, v11}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 37
    move-result-wide v14

    .line 38
    iget-object v2, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 43
    move-result-object v3

    .line 44
    move-object/from16 v4, p2

    .line 46
    move-wide/from16 v5, p3

    .line 48
    move-object/from16 v7, p1

    .line 50
    move-object/from16 v8, p5

    .line 52
    move/from16 v9, p6

    .line 54
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/internal/widget/LockscreenCredential;JLcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)J

    .line 57
    move-result-wide v8

    .line 58
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    .line 61
    move-result v0

    .line 62
    const/16 v16, 0x0

    .line 64
    const-wide/16 v5, 0x0

    .line 66
    const/4 v7, 0x0

    .line 67
    if-nez v0, :cond_3

    .line 69
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 71
    const-string/jumbo v2, "handle"

    .line 74
    invoke-virtual {v0, v11, v2, v5, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(ILjava/lang/String;J)Z

    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_1

    .line 80
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    :try_start_0
    sget-object v3, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_GK_AUTH:[B

    .line 91
    invoke-virtual {v10, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveSubkey([B)[B

    .line 94
    move-result-object v3

    .line 95
    invoke-interface {v2, v11, v7, v7, v3}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    .line 98
    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    invoke-virtual {v2}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    .line 102
    move-result v3

    .line 103
    if-nez v3, :cond_0

    .line 105
    invoke-virtual {v2}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    .line 108
    move-result-object v4

    .line 109
    const-string/jumbo v3, "handle"

    .line 112
    const-wide/16 v17, 0x0

    .line 114
    move-object v2, v0

    .line 115
    move-wide/from16 v19, v14

    .line 117
    move-wide v14, v5

    .line 118
    move-wide/from16 v5, v17

    .line 120
    move/from16 v7, p6

    .line 122
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 125
    invoke-virtual {v0, v11}, Lcom/android/server/locksettings/SyntheticPasswordManager;->syncState(I)V

    .line 128
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 133
    move-result-object v2

    .line 134
    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 137
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsService;->FIX_UNLOCKED_DEVICE_REQUIRED_KEYS:Z

    .line 139
    if-nez v0, :cond_2

    .line 141
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_KEY_STORE_PASSWORD:[B

    .line 143
    invoke-virtual {v10, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveSubkey([B)[B

    .line 146
    move-result-object v0

    .line 147
    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->bytesToHex([B)[B

    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v1, v0, v11}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword([BI)V

    .line 154
    goto :goto_0

    .line 155
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 157
    const-string v1, "Fail to create new SID for user "

    .line 159
    const-string v3, " response: "

    .line 161
    invoke-static {v11, v1, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v2}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    .line 168
    move-result v2

    .line 169
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    move-result-object v1

    .line 176
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 179
    throw v0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 183
    const-string v2, "Failed to create new SID for user"

    .line 185
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 188
    throw v1

    .line 189
    :cond_1
    move-wide/from16 v19, v14

    .line 191
    move-wide v14, v5

    .line 192
    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 193
    const/4 v7, 0x0

    .line 194
    goto/16 :goto_6

    .line 196
    :cond_3
    move-wide/from16 v19, v14

    .line 198
    move-wide v14, v5

    .line 199
    invoke-virtual {v1, v11}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    .line 202
    move-result v0

    .line 203
    if-eqz v0, :cond_4

    .line 205
    const/4 v7, 0x0

    .line 206
    goto :goto_3

    .line 207
    :cond_4
    new-instance v7, Landroid/util/ArrayMap;

    .line 209
    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 212
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 214
    invoke-virtual {v0, v11}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    .line 217
    move-result-object v2

    .line 218
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 221
    move-result v3

    .line 222
    move/from16 v4, v16

    .line 224
    :goto_1
    if-ge v4, v3, :cond_7

    .line 226
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 229
    move-result-object v0

    .line 230
    check-cast v0, Landroid/content/pm/UserInfo;

    .line 232
    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    .line 234
    invoke-virtual {v1, v5}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    .line 237
    move-result v5

    .line 238
    if-nez v5, :cond_5

    .line 240
    goto :goto_2

    .line 241
    :cond_5
    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    .line 243
    invoke-virtual {v1, v5}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    .line 246
    move-result v0

    .line 247
    if-eqz v0, :cond_6

    .line 249
    goto :goto_2

    .line 250
    :cond_6
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 253
    move-result-object v0

    .line 254
    invoke-virtual {v1, v5}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    .line 257
    move-result-object v6

    .line 258
    invoke-virtual {v7, v0, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 261
    goto :goto_2

    .line 262
    :catch_1
    move-exception v0

    .line 263
    new-instance v6, Ljava/lang/StringBuilder;

    .line 265
    const-string/jumbo v14, "getDecryptedPasswordsForAllTiedProfiles failed for user "

    .line 268
    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    move-result-object v5

    .line 278
    invoke-static {v12, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 283
    const-wide/16 v14, 0x0

    .line 285
    goto :goto_1

    .line 286
    :cond_7
    :goto_3
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 288
    const-string/jumbo v2, "handle"

    .line 291
    const-wide/16 v3, 0x0

    .line 293
    invoke-virtual {v0, v11, v2, v3, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(ILjava/lang/String;J)V

    .line 296
    invoke-static {v11, v3, v4, v2}, Lcom/samsung/android/lock/SPBnRManager;->deleteBackup(IJLjava/lang/String;)Z

    .line 299
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 302
    move-result-object v0

    .line 303
    invoke-interface {v0, v11}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 306
    goto :goto_4

    .line 307
    :catch_2
    move-exception v0

    .line 308
    const-string v2, "LockSettingsService"

    .line 310
    const-string v3, "Failed to clear SID"

    .line 312
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 315
    :goto_4
    invoke-virtual {v1, v11, v10}, Lcom/android/server/locksettings/LockSettingsService;->unlockCeStorage(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    .line 318
    invoke-virtual {v1, v11, v10}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystore(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    .line 321
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsService;->FIX_UNLOCKED_DEVICE_REQUIRED_KEYS:Z

    .line 323
    if-eqz v0, :cond_8

    .line 325
    invoke-static/range {p6 .. p6}, Landroid/security/AndroidKeyStoreMaintenance;->onUserLskfRemoved(I)I

    .line 328
    const/4 v2, 0x0

    .line 329
    goto :goto_5

    .line 330
    :cond_8
    const/4 v2, 0x0

    .line 331
    invoke-virtual {v1, v2, v11}, Lcom/android/server/locksettings/LockSettingsService;->setKeystorePassword([BI)V

    .line 334
    :goto_5
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 336
    new-instance v3, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda9;

    .line 338
    const/4 v4, 0x0

    .line 339
    invoke-direct {v3, v11, v4, v1}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda9;-><init>(IILjava/lang/Object;)V

    .line 342
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 345
    :goto_6
    invoke-virtual {v1, v11, v8, v9}, Lcom/android/server/locksettings/LockSettingsService;->setCurrentLskfBasedProtectorId(IJ)V

    .line 348
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->invalidateCredentialTypeCache()V

    .line 351
    invoke-virtual {v1, v11}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    .line 354
    move-result v0

    .line 355
    if-eqz v0, :cond_9

    .line 357
    goto/16 :goto_9

    .line 359
    :cond_9
    invoke-virtual {v1, v11}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    .line 362
    move-result v0

    .line 363
    iget-object v3, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 365
    invoke-virtual {v3, v11}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    .line 368
    move-result-object v3

    .line 369
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 372
    move-result v4

    .line 373
    new-instance v5, Ljava/lang/StringBuilder;

    .line 375
    const-string v6, "Synchronize challenge along with user "

    .line 377
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 386
    move-result-object v5

    .line 387
    invoke-static {v5}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 390
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 393
    move-result-object v5

    .line 394
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 397
    move-result-object v6

    .line 398
    filled-new-array {v5, v6}, [Ljava/lang/Object;

    .line 401
    move-result-object v5

    .line 402
    const-string v6, "Feasible for profiles(%d) ? %b"

    .line 404
    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 407
    move-result-object v5

    .line 408
    invoke-static {v2, v5}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    move/from16 v5, v16

    .line 413
    :goto_7
    if-ge v5, v4, :cond_e

    .line 415
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 418
    move-result-object v6

    .line 419
    check-cast v6, Landroid/content/pm/UserInfo;

    .line 421
    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    .line 423
    invoke-virtual {v1, v6}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    .line 426
    move-result v10

    .line 427
    if-eqz v10, :cond_d

    .line 429
    invoke-virtual {v1, v6}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    .line 432
    move-result v10

    .line 433
    if-eqz v10, :cond_a

    .line 435
    goto :goto_8

    .line 436
    :cond_a
    if-eqz v0, :cond_b

    .line 438
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    .line 441
    move-result-object v10

    .line 442
    invoke-virtual {v1, v10, v6}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockIfNecessary(Lcom/android/internal/widget/LockscreenCredential;I)V

    .line 445
    goto :goto_8

    .line 446
    :cond_b
    const-string v10, "Profile("

    .line 448
    if-eqz v7, :cond_c

    .line 450
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 453
    move-result-object v14

    .line 454
    invoke-virtual {v7, v14}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 457
    move-result v14

    .line 458
    if-eqz v14, :cond_c

    .line 460
    new-instance v14, Ljava/lang/StringBuilder;

    .line 462
    invoke-direct {v14, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 465
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 468
    const-string v10, ") credential found! Clear profile credential."

    .line 470
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 476
    move-result-object v10

    .line 477
    invoke-static {v2, v10}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    .line 483
    move-result-object v10

    .line 484
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 487
    move-result-object v14

    .line 488
    invoke-virtual {v7, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    move-result-object v14

    .line 492
    check-cast v14, Lcom/android/internal/widget/LockscreenCredential;

    .line 494
    const/4 v15, 0x1

    .line 495
    invoke-virtual {v1, v10, v14, v6, v15}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    .line 498
    iget-object v10, v1, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 500
    invoke-virtual {v10, v6}, Lcom/android/server/locksettings/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/io/File;

    .line 503
    move-result-object v14

    .line 504
    invoke-virtual {v10, v14}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteFile(Ljava/io/File;)V

    .line 507
    invoke-virtual {v1, v6}, Lcom/android/server/locksettings/LockSettingsService;->removeKeystoreProfileKey(I)V

    .line 510
    goto :goto_8

    .line 511
    :cond_c
    new-instance v14, Ljava/lang/StringBuilder;

    .line 513
    invoke-direct {v14, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 516
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 519
    const-string v6, ") credential not found... Clear profile credential."

    .line 521
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 527
    move-result-object v6

    .line 528
    invoke-static {v2, v6}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const-string v6, "Attempt to clear tied challenge, but no password supplied."

    .line 533
    invoke-static {v12, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_d
    :goto_8
    add-int/lit8 v5, v5, 0x1

    .line 538
    goto :goto_7

    .line 539
    :cond_e
    :goto_9
    monitor-enter p0

    .line 540
    :try_start_3
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mUserPasswordMetrics:Landroid/util/SparseArray;

    .line 542
    invoke-static/range {p1 .. p1}, Landroid/app/admin/PasswordMetrics;->computeForCredential(Lcom/android/internal/widget/LockscreenCredential;)Landroid/app/admin/PasswordMetrics;

    .line 545
    move-result-object v2

    .line 546
    invoke-virtual {v0, v11, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 549
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 550
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mUnifiedProfilePasswordCache:Lcom/android/server/locksettings/UnifiedProfilePasswordCache;

    .line 552
    invoke-virtual {v0, v11}, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->removePassword(I)V

    .line 555
    const/4 v0, -0x1

    .line 556
    if-eq v13, v0, :cond_10

    .line 558
    iget-object v2, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 560
    iget-object v3, v2, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 562
    const-string/jumbo v4, "spblob"

    .line 565
    invoke-virtual {v3, v11, v4}, Lcom/android/server/locksettings/LockSettingsStorage;->listSyntheticPasswordProtectorsForUser(ILjava/lang/String;)Ljava/util/List;

    .line 568
    move-result-object v5

    .line 569
    check-cast v5, Ljava/util/ArrayList;

    .line 571
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 574
    move-result-object v5

    .line 575
    :cond_f
    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 578
    move-result v6

    .line 579
    if-eqz v6, :cond_10

    .line 581
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 584
    move-result-object v6

    .line 585
    check-cast v6, Ljava/lang/Long;

    .line 587
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 590
    move-result-wide v14

    .line 591
    invoke-virtual {v3, v11, v4, v14, v15}, Lcom/android/server/locksettings/LockSettingsStorage;->readSyntheticPasswordState(ILjava/lang/String;J)[B

    .line 594
    move-result-object v6

    .line 595
    invoke-static {v6}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;

    .line 598
    move-result-object v6

    .line 599
    iget-byte v6, v6, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mProtectorType:B

    .line 601
    const/4 v10, 0x2

    .line 602
    if-ne v6, v10, :cond_f

    .line 604
    invoke-virtual {v2, v11, v14, v15}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyTokenBasedProtector(IJ)V

    .line 607
    goto :goto_a

    .line 608
    :cond_10
    if-eqz v7, :cond_11

    .line 610
    invoke-virtual {v7}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 613
    move-result-object v2

    .line 614
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 617
    move-result-object v2

    .line 618
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 621
    move-result v3

    .line 622
    if-eqz v3, :cond_11

    .line 624
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 627
    move-result-object v3

    .line 628
    check-cast v3, Ljava/util/Map$Entry;

    .line 630
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 633
    move-result-object v3

    .line 634
    check-cast v3, Lcom/android/internal/widget/LockscreenCredential;

    .line 636
    invoke-virtual {v3}, Lcom/android/internal/widget/LockscreenCredential;->zeroize()V

    .line 639
    goto :goto_b

    .line 640
    :cond_11
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->isEnablePrevCredential()Z

    .line 643
    move-result v2

    .line 644
    if-eqz v2, :cond_12

    .line 646
    if-eq v13, v0, :cond_12

    .line 648
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    .line 651
    move-result v2

    .line 652
    if-eq v2, v0, :cond_12

    .line 654
    if-nez v11, :cond_12

    .line 656
    invoke-virtual {v1, v11}, Lcom/android/server/locksettings/LockSettingsService;->getBackupLskfBasedProtectorId(I)J

    .line 659
    move-result-wide v2

    .line 660
    const-wide/16 v4, 0x0

    .line 662
    cmp-long v0, v2, v4

    .line 664
    if-nez v0, :cond_12

    .line 666
    move-wide/from16 v2, v19

    .line 668
    invoke-virtual {v1, v11, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->setBackupLskfBasedProtectorId(IJ)V

    .line 671
    goto :goto_c

    .line 672
    :cond_12
    move-wide/from16 v2, v19

    .line 674
    iget-object v0, v1, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 676
    invoke-virtual {v0, v11, v2, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyLskfBasedProtector(IJ)V

    .line 679
    :goto_c
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 682
    move-result-object v0

    .line 683
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 686
    move-result-object v0

    .line 687
    const-string v1, "Successfully changed lockscreen credential of user %d"

    .line 689
    invoke-static {v12, v1, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 692
    return-wide v8

    .line 693
    :catchall_0
    move-exception v0

    .line 694
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 695
    throw v0
.end method

.method public final setLockCredentialWithTokenInternalLocked(Lcom/android/internal/widget/LockscreenCredential;J[BI)Z
    .locals 9

    .line 1
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    move-result-object v1

    .line 9
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    const-string v1, "Resetting lockscreen credential of user %d using escrow token %016x"

    .line 15
    const-string v2, "LockSettingsService"

    .line 17
    invoke-static {v2, v1, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 22
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 25
    move-result-object v7

    .line 26
    move v4, p5

    .line 27
    move-wide v5, p2

    .line 28
    move-object v8, p4

    .line 29
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockTokenBasedProtector(IJLandroid/service/gatekeeper/IGateKeeperService;[B)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    .line 32
    move-result-object p2

    .line 33
    iget-object p3, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 35
    const/4 p4, 0x0

    .line 36
    if-nez p3, :cond_0

    .line 38
    const-string p0, "Invalid escrow token supplied"

    .line 40
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return p4

    .line 44
    :cond_0
    iget-object p3, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 46
    invoke-virtual {p3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    .line 49
    move-result p3

    .line 50
    if-eqz p3, :cond_1

    .line 52
    const-string p0, "Obsolete token: synthetic password decrypted but it fails GK verification."

    .line 54
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return p4

    .line 58
    :cond_1
    iget-object p3, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 60
    invoke-virtual {p0, p5, p3, p4}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordKnown(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Z)V

    .line 63
    iget-object v5, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 65
    const/4 v2, 0x0

    .line 66
    const-wide/16 v3, 0x0

    .line 68
    move-object v0, p0

    .line 69
    move-object v1, p1

    .line 70
    move v6, p5

    .line 71
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialWithSpLocked(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;JLcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;I)J

    .line 74
    const/4 p0, 0x1

    .line 75
    return p0
.end method

.method public final setLockFMMPassword([BI)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 6
    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->passwordToHash(I[B)[B

    .line 9
    move-result-object p0

    .line 10
    const-string/jumbo p1, "fmmpassword.key"

    .line 13
    if-eqz p0, :cond_1

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    array-length v1, p0

    .line 19
    if-nez v1, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-static {p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    .line 25
    move-result-object p1

    .line 26
    const/4 p2, 0x1

    .line 27
    invoke-virtual {v0, p1, p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/io/File;[BZ)V

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    invoke-static {p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getLockCredentialFileForUser(ILjava/lang/String;)Ljava/io/File;

    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {v0, p0}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteFile(Ljava/io/File;)V

    .line 41
    :goto_1
    const/4 p0, 0x4

    .line 42
    invoke-virtual {v0, p0}, Lcom/android/server/locksettings/LockSettingsStorage;->sendLockTypeChangedInfo(I)V

    .line 45
    return-void
.end method

.method public final setLockModeChangedCallback(Landroid/os/IRemoteCallback;)V
    .locals 1

    .line 1
    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 9
    const-string v0, "android.permission.SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS"

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 20
    const-string/jumbo p1, "setLockModeChangedCallback requires SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS or android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 23
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 26
    throw p0

    .line 27
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 29
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mLockTypeCallback:Landroid/os/IRemoteCallback;

    .line 31
    return-void
.end method

.method public final setLong(Ljava/lang/String;JI)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {v0, p1, p2, p4}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 19
    if-eqz p4, :cond_0

    .line 21
    invoke-static {p4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 24
    move-result p2

    .line 25
    if-eqz p2, :cond_0

    .line 27
    invoke-static {p4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 30
    move-result p2

    .line 31
    if-nez p2, :cond_0

    .line 33
    const-string/jumbo p2, "lockscreen.samsung_biometric"

    .line 36
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_0

    .line 42
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 44
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getPersonaService()Ljava/util/Optional;

    .line 47
    move-result-object p0

    .line 48
    new-instance p1, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda10;

    .line 50
    const/4 p2, 0x0

    .line 51
    invoke-direct {p1, p4, p2}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda10;-><init>(II)V

    .line 54
    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 57
    :cond_0
    return-void
.end method

.method public final setRecoverySecretTypes([I)V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 6
    const-string/jumbo v0, "secretTypes is null"

    .line 9
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 15
    move-result v0

    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 19
    move-result v1

    .line 20
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 22
    invoke-virtual {p0, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getRecoverySecretTypes(II)[I

    .line 25
    move-result-object v2

    .line 26
    invoke-static {p1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    .line 29
    move-result v3

    .line 30
    const-string v4, "RecoverableKeyStoreMgr"

    .line 32
    if-eqz v3, :cond_0

    .line 34
    const-string p0, "Not updating secret types - same as old value."

    .line 36
    invoke-static {v4, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v3, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    .line 42
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 45
    move-result-object v3

    .line 46
    new-instance v5, Landroid/content/ContentValues;

    .line 48
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 51
    new-instance v6, Ljava/util/StringJoiner;

    .line 53
    const-string v7, ","

    .line 55
    invoke-direct {v6, v7}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 58
    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    .line 61
    move-result-object p1

    .line 62
    new-instance v7, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb$$ExternalSyntheticLambda0;

    .line 64
    invoke-direct {v7, v6}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb$$ExternalSyntheticLambda0;-><init>(Ljava/util/StringJoiner;)V

    .line 67
    invoke-interface {p1, v7}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 70
    invoke-virtual {v6}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    const-string/jumbo v6, "secret_types"

    .line 77
    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureRecoveryServiceMetadataEntryExists(II)V

    .line 83
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 86
    move-result-object p1

    .line 87
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 90
    move-result-object v6

    .line 91
    filled-new-array {p1, v6}, [Ljava/lang/String;

    .line 94
    move-result-object p1

    .line 95
    const-string/jumbo v6, "recovery_service_metadata"

    .line 98
    const-string/jumbo v7, "user_id = ? AND uid = ?"

    .line 101
    invoke-virtual {v3, v6, v5, v7, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 104
    move-result p1

    .line 105
    int-to-long v5, p1

    .line 106
    const-wide/16 v7, 0x0

    .line 108
    cmp-long p1, v5, v7

    .line 110
    if-ltz p1, :cond_3

    .line 112
    array-length p1, v2

    .line 113
    if-nez p1, :cond_1

    .line 115
    const-string p0, "Initialized secret types."

    .line 117
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    goto :goto_0

    .line 121
    :cond_1
    const-string p1, "Updated secret types. Snapshot pending."

    .line 123
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string/jumbo p1, "snapshot_version"

    .line 129
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getLong(IILjava/lang/String;)Ljava/lang/Long;

    .line 132
    move-result-object p1

    .line 133
    if-eqz p1, :cond_2

    .line 135
    invoke-virtual {p0, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setShouldCreateSnapshot(II)J

    .line 138
    const-string p0, "Updated secret types. Snapshot must be updated"

    .line 140
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    goto :goto_0

    .line 144
    :cond_2
    const-string p0, "Updated secret types. Snapshot didn\'t exist"

    .line 146
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :goto_0
    return-void

    .line 150
    :cond_3
    new-instance p0, Landroid/os/ServiceSpecificException;

    .line 152
    const/16 p1, 0x16

    .line 154
    const-string v0, "Database error trying to set secret types."

    .line 156
    invoke-direct {p0, p1, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 159
    throw p0
.end method

.method public final setRecoveryStatus(Ljava/lang/String;I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 6
    const-string v0, "alias is null"

    .line 8
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 14
    move-result v0

    .line 15
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 17
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    .line 19
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 22
    move-result-object p0

    .line 23
    new-instance v1, Landroid/content/ContentValues;

    .line 25
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 28
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object p2

    .line 32
    const-string/jumbo v2, "recovery_status"

    .line 35
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 38
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 41
    move-result-object p2

    .line 42
    filled-new-array {p2, p1}, [Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    const-string/jumbo p2, "keys"

    .line 49
    const-string/jumbo v0, "uid = ? AND alias = ?"

    .line 52
    invoke-virtual {p0, p2, v1, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 55
    move-result p0

    .line 56
    int-to-long p0, p0

    .line 57
    const-wide/16 v0, 0x0

    .line 59
    cmp-long p0, p0, v0

    .line 61
    if-ltz p0, :cond_0

    .line 63
    return-void

    .line 64
    :cond_0
    new-instance p0, Landroid/os/ServiceSpecificException;

    .line 66
    const/16 p1, 0x16

    .line 68
    const-string p2, "Failed to set the key recovery status in the local DB."

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 73
    throw p0
.end method

.method public final setRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 4
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsService;->applyRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    goto :goto_0

    .line 8
    :catch_0
    const-string p0, "LockSettingsService"

    .line 10
    const-string/jumbo p1, "failed applyRemoteLock!"

    .line 13
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :goto_0
    return-void
.end method

.method public final setSecurityDebugLevel(I)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "!@ setSecurityDebugLevel = "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    const-string v1, "LockSettingsService"

    .line 17
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-static {p1}, Lcom/samsung/android/lock/LsLog;->setSecurityDebugLevel(I)V

    .line 23
    const/4 v0, 0x1

    .line 24
    if-lt p1, v0, :cond_c

    .line 26
    const-string/jumbo p1, "lock state (0)"

    .line 29
    invoke-static {p1}, Lcom/samsung/android/lock/LsLog;->summary(Ljava/lang/String;)V

    .line 32
    const/4 p1, 0x0

    .line 33
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 36
    move-result-wide v2

    .line 37
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    move-result-object v2

    .line 41
    const-string/jumbo v3, "prev-sp-handle"

    .line 44
    const-wide/16 v4, 0x0

    .line 46
    invoke-virtual {p0, v3, v4, v5, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    .line 49
    move-result-wide v6

    .line 50
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 53
    move-result-object v3

    .line 54
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 57
    move-result-object v2

    .line 58
    const-string v3, "SP ID: %016x (prev: %016x)"

    .line 60
    invoke-static {v3, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    move-result-object v2

    .line 64
    invoke-static {v2}, Lcom/samsung/android/lock/LsLog;->summary(Ljava/lang/String;)V

    .line 67
    const-string/jumbo v2, "sp-handle-ts"

    .line 70
    invoke-virtual {p0, v2, v4, v5, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    .line 73
    move-result-wide v2

    .line 74
    invoke-static {v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->timestampToString(J)Ljava/lang/String;

    .line 77
    move-result-object v2

    .line 78
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 81
    move-result-object v2

    .line 82
    const-string v3, "LSKF last changed: %s "

    .line 84
    invoke-static {v3, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 87
    move-result-object v2

    .line 88
    invoke-static {v2}, Lcom/samsung/android/lock/LsLog;->summary(Ljava/lang/String;)V

    .line 91
    const-string v2, "backup-protector-id"

    .line 93
    invoke-virtual {p0, v2, v4, v5, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    .line 96
    move-result-wide v2

    .line 97
    cmp-long v6, v2, v4

    .line 99
    if-nez v6, :cond_0

    .line 101
    const-string v2, "N-1 : None"

    .line 103
    invoke-static {v2}, Lcom/samsung/android/lock/LsLog;->summary(Ljava/lang/String;)V

    .line 106
    goto :goto_0

    .line 107
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 110
    move-result-object v2

    .line 111
    const-string v3, "backup-expiration-ts"

    .line 113
    invoke-virtual {p0, v3, v4, v5, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    .line 116
    move-result-wide v6

    .line 117
    invoke-static {v6, v7}, Lcom/android/server/locksettings/LockSettingsService;->timestampToString(J)Ljava/lang/String;

    .line 120
    move-result-object v3

    .line 121
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 124
    move-result-object v2

    .line 125
    const-string v3, "N-1 ID: %016x (expire : %s)"

    .line 127
    invoke-static {v3, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 130
    move-result-object v2

    .line 131
    invoke-static {v2}, Lcom/samsung/android/lock/LsLog;->summary(Ljava/lang/String;)V

    .line 134
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 136
    const-string v3, "LockType: "

    .line 138
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    .line 143
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialTypeInternal(I)I

    .line 149
    move-result v6

    .line 150
    const/4 v7, -0x1

    .line 151
    if-ne v6, v7, :cond_2

    .line 153
    const-string/jumbo v0, "lockscreen.disabled"

    .line 156
    invoke-virtual {p0, v0, p1, p1}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_1

    .line 162
    const-string v0, "NONE"

    .line 164
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    goto :goto_1

    .line 168
    :cond_1
    const-string v0, "SWIPE"

    .line 170
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    goto :goto_1

    .line 174
    :cond_2
    invoke-static {v6}, Lcom/android/internal/widget/LockPatternUtils;->credentialTypeToString(I)Ljava/lang/String;

    .line 177
    move-result-object v7

    .line 178
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    if-ne v6, v0, :cond_3

    .line 183
    const-string/jumbo v0, "lock_pattern_visible_pattern"

    .line 186
    const/4 v6, 0x0

    .line 187
    invoke-virtual {p0, v0, v6, p1}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 190
    move-result-object v0

    .line 191
    if-eqz v0, :cond_5

    .line 193
    const-string v6, ":V="

    .line 195
    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 198
    move-result-object v0

    .line 199
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    goto :goto_1

    .line 203
    :cond_3
    const/4 v0, 0x3

    .line 204
    if-ne v6, v0, :cond_5

    .line 206
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 208
    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->isAutoPinConfirmSettingEnabled(I)Z

    .line 211
    move-result v0

    .line 212
    if-eqz v0, :cond_4

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    .line 216
    const-string v6, ":A="

    .line 218
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getPinLength(I)I

    .line 224
    move-result v6

    .line 225
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    move-result-object v0

    .line 232
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    goto :goto_1

    .line 236
    :cond_4
    const-string v0, ":A=F"

    .line 238
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    :cond_5
    :goto_1
    const-string/jumbo v0, "lockscreen.samsung_biometric"

    .line 244
    invoke-virtual {p0, v0, v4, v5, p1}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    .line 247
    move-result-wide v4

    .line 248
    long-to-int v0, v4

    .line 249
    and-int/lit8 v4, v0, 0x1

    .line 251
    if-eqz v4, :cond_6

    .line 253
    const-string v4, ", Fingerprint"

    .line 255
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :cond_6
    and-int/lit16 v0, v0, 0x100

    .line 260
    if-eqz v0, :cond_7

    .line 262
    const-string v0, ", Face"

    .line 264
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_7
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->haveFMMPassword(I)Z

    .line 270
    move-result v0

    .line 271
    if-eqz v0, :cond_8

    .line 273
    const-string v0, ", FMM"

    .line 275
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    goto :goto_2

    .line 279
    :catch_0
    move-exception v0

    .line 280
    goto :goto_3

    .line 281
    :cond_8
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCarrierLock(I)Z

    .line 284
    move-result v0

    .line 285
    if-eqz v0, :cond_9

    .line 287
    const-string v0, ", CarrierLock"

    .line 289
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    goto :goto_4

    .line 293
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 295
    const-string v5, "!@ RemoteException occurs! "

    .line 297
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 300
    invoke-static {v0, v4, v1}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 303
    :cond_9
    :goto_4
    move v0, p1

    .line 304
    :goto_5
    const/4 v1, 0x4

    .line 305
    if-ge v0, v1, :cond_b

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    .line 309
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 315
    const-string/jumbo v4, "locked"

    .line 318
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    move-result-object v1

    .line 325
    invoke-virtual {p0, v1, p1, p1}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    .line 328
    move-result v1

    .line 329
    if-eqz v1, :cond_a

    .line 331
    const-string v1, ", "

    .line 333
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->RemoteLockType:[Ljava/lang/String;

    .line 338
    aget-object v1, v1, v0

    .line 340
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    :cond_a
    add-int/lit8 v0, v0, 0x1

    .line 345
    goto :goto_5

    .line 346
    :cond_b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    move-result-object v0

    .line 350
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    move-result-object v0

    .line 357
    invoke-static {v0}, Lcom/samsung/android/lock/LsLog;->summary(Ljava/lang/String;)V

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    .line 362
    const-string v1, "FailureCount: "

    .line 364
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 367
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 369
    invoke-virtual {v1}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    .line 372
    move-result-object v1

    .line 373
    invoke-virtual {v1, p1}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts(I)I

    .line 376
    move-result v1

    .line 377
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 380
    const-string v1, "/"

    .line 382
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-static {p1}, Lcom/samsung/android/lock/LsLog;->getFailureCount(I)I

    .line 388
    move-result p1

    .line 389
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 395
    move-result-object p1

    .line 396
    invoke-static {p1}, Lcom/samsung/android/lock/LsLog;->summary(Ljava/lang/String;)V

    .line 399
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 401
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mResetDebugLevel:Lcom/android/server/locksettings/LockSettingsService$9;

    .line 403
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 406
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 408
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mResetDebugLevel:Lcom/android/server/locksettings/LockSettingsService$9;

    .line 410
    const-wide/32 v0, 0xea60

    .line 413
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 416
    :cond_c
    return-void
.end method

.method public final setSeparateProfileChallengeEnabled(IZLcom/android/internal/widget/LockscreenCredential;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 4
    iget-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHasSecureLockScreen:Z

    .line 6
    if-nez v0, :cond_1

    .line 8
    if-eqz p3, :cond_1

    .line 10
    invoke-virtual {p3}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    .line 13
    move-result v0

    .line 14
    const/4 v1, -0x1

    .line 15
    if-ne v0, v1, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 20
    const-string p1, "This operation requires secure lock screen feature."

    .line 22
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p0

    .line 26
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    if-eqz p2, :cond_2

    .line 33
    const-string v1, "Enable"

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    const-string v1, "Disable"

    .line 38
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, " separate challenge for user "

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 56
    const-string/jumbo v1, "userId"

    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    move-result-object v2

    .line 63
    const-string/jumbo v3, "enabled"

    .line 66
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 69
    move-result-object v4

    .line 70
    const-string/jumbo v5, "profileUserPassword"

    .line 73
    move-object v6, p3

    .line 74
    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    .line 77
    move-result-object v0

    .line 78
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSeparateChallengeLock:Ljava/lang/Object;

    .line 83
    monitor-enter v0

    .line 84
    if-eqz p3, :cond_3

    .line 86
    goto :goto_2

    .line 87
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    .line 90
    move-result-object p3

    .line 91
    :goto_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsService;->setSeparateProfileChallengeEnabledLocked(IZLcom/android/internal/widget/LockscreenCredential;)V

    .line 94
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 97
    new-instance p2, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda4;

    .line 99
    invoke-direct {p2, p1}, Lcom/android/server/locksettings/LockSettingsService$$ExternalSyntheticLambda4;-><init>(I)V

    .line 102
    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    return-void

    .line 106
    :catchall_0
    move-exception p0

    .line 107
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    throw p0
.end method

.method public final setSeparateProfileChallengeEnabledLocked(IZLcom/android/internal/widget/LockscreenCredential;)V
    .locals 4

    .line 1
    const-string/jumbo v0, "lockscreen.profilechallenge"

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 12
    xor-int/lit8 v2, p2, 0x1

    .line 14
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v3}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/sec/enterprise/PasswordPolicy;

    .line 21
    move-result-object v3

    .line 22
    if-eqz v3, :cond_0

    .line 24
    invoke-virtual {v3, v2, p1}, Landroid/sec/enterprise/PasswordPolicy;->notifyPasswordPolicyOneLockChanged(ZI)V

    .line 27
    :cond_0
    if-eqz p2, :cond_1

    .line 29
    :try_start_0
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 31
    invoke-virtual {p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/io/File;

    .line 34
    move-result-object p3

    .line 35
    invoke-virtual {p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteFile(Ljava/io/File;)V

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->removeKeystoreProfileKey(I)V

    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p2

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {p0, p3, p1}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockIfNecessary(Lcom/android/internal/widget/LockscreenCredential;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 48
    :goto_1
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 51
    throw p2
.end method

.method public final setServerParams([B)V
    .locals 10

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 6
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 9
    move-result v0

    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 13
    move-result v1

    .line 14
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 16
    const-string/jumbo v2, "server_params"

    .line 19
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getBytes(IILjava/lang/String;)[B

    .line 22
    move-result-object v3

    .line 23
    invoke-static {p1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 26
    move-result v4

    .line 27
    const-string v5, "RecoverableKeyStoreMgr"

    .line 29
    if-eqz v4, :cond_0

    .line 31
    const-string p0, "Not updating server params - same as old value."

    .line 33
    invoke-static {v5, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v4, p0, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->mKeyStoreDbHelper:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;

    .line 39
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 42
    move-result-object v4

    .line 43
    new-instance v6, Landroid/content/ContentValues;

    .line 45
    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 48
    invoke-virtual {v6, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 58
    move-result-object v2

    .line 59
    filled-new-array {p1, v2}, [Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p0, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->ensureRecoveryServiceMetadataEntryExists(II)V

    .line 66
    const-string/jumbo v2, "recovery_service_metadata"

    .line 69
    const-string/jumbo v7, "user_id = ? AND uid = ?"

    .line 72
    invoke-virtual {v4, v2, v6, v7, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 75
    move-result p1

    .line 76
    int-to-long v6, p1

    .line 77
    const-wide/16 v8, 0x0

    .line 79
    cmp-long p1, v6, v8

    .line 81
    if-ltz p1, :cond_3

    .line 83
    if-nez v3, :cond_1

    .line 85
    const-string p0, "Initialized server params."

    .line 87
    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    goto :goto_0

    .line 91
    :cond_1
    const-string/jumbo p1, "snapshot_version"

    .line 94
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getLong(IILjava/lang/String;)Ljava/lang/Long;

    .line 97
    move-result-object p1

    .line 98
    if-eqz p1, :cond_2

    .line 100
    invoke-virtual {p0, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setShouldCreateSnapshot(II)J

    .line 103
    const-string p0, "Updated server params. Snapshot must be updated"

    .line 105
    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    goto :goto_0

    .line 109
    :cond_2
    const-string p0, "Updated server params. Snapshot didn\'t exist"

    .line 111
    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :goto_0
    return-void

    .line 115
    :cond_3
    new-instance p0, Landroid/os/ServiceSpecificException;

    .line 117
    const/16 p1, 0x16

    .line 119
    const-string v0, "Database failure trying to set server params."

    .line 121
    invoke-direct {p0, p1, v0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 124
    throw p0
.end method

.method public final setShellCommandCallback(Landroid/os/IRemoteCallback;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 4
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mShellCommandCallback:Landroid/os/IRemoteCallback;

    .line 6
    return-void
.end method

.method public final setSnapshotCreatedPendingIntent(Landroid/app/PendingIntent;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 9
    move-result v0

    .line 10
    iget-object p0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mListenersStorage:Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;

    .line 12
    const-string v1, "Registered listener for agent with uid "

    .line 14
    monitor-enter p0

    .line 15
    :try_start_0
    const-string v2, "RecoverySnapshotLstnrs"

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;->mAgentIntents:Landroid/util/SparseArray;

    .line 34
    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;->mAgentsWithPendingSnapshots:Landroid/util/ArraySet;

    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_0

    .line 49
    const-string v1, "RecoverySnapshotLstnrs"

    .line 51
    const-string v2, "Snapshot already created for agent. Immediately triggering intent."

    .line 53
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {p0, v0, p1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverySnapshotListenersStorage;->tryToSendIntent(ILandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    goto :goto_1

    .line 62
    :cond_0
    :goto_0
    monitor-exit p0

    .line 63
    return-void

    .line 64
    :goto_1
    monitor-exit p0

    .line 65
    throw p1
.end method

.method public final setString(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    return-void
.end method

.method public final startRecoverySessionWithCertPath(Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/recovery/RecoveryCertPath;[B[BLjava/util/List;)[B
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 3
    const-string p0, "RecoverableKeyStoreMgr"

    .line 5
    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkRecoverKeyStorePermission()V

    .line 8
    iget-object v1, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mTestCertHelper:Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-static {p2}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getDefaultCertificateAliasIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p2

    .line 17
    const-string/jumbo v1, "invalid session"

    .line 20
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    const-string/jumbo v1, "verifierCertPath is null"

    .line 26
    invoke-static {p3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    const-string/jumbo v1, "vaultParams is null"

    .line 32
    invoke-static {p4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    const-string/jumbo v1, "vaultChallenge is null"

    .line 38
    invoke-static {p5, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    const-string/jumbo v1, "secrets is null"

    .line 44
    invoke-static {p6, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    const/16 v1, 0x19

    .line 49
    :try_start_0
    invoke-virtual {p3}, Landroid/security/keystore/recovery/RecoveryCertPath;->getCertPath()Ljava/security/cert/CertPath;

    .line 52
    move-result-object p3
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 53
    :try_start_1
    invoke-static {p2}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getValidationDate(Ljava/lang/String;)Ljava/util/Date;

    .line 56
    move-result-object v2

    .line 57
    invoke-static {p2}, Lcom/android/server/locksettings/recoverablekeystore/TestOnlyInsecureCertificateHelper;->getRootCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    .line 60
    move-result-object p2

    .line 61
    invoke-static {v2, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/certificate/CertUtils;->validateCertPath(Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/CertPath;)V
    :try_end_1
    .catch Lcom/android/server/locksettings/recoverablekeystore/certificate/CertValidationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 64
    invoke-virtual {p3}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    .line 67
    move-result-object p2

    .line 68
    const/4 p3, 0x0

    .line 69
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    move-result-object p2

    .line 73
    check-cast p2, Ljava/security/cert/Certificate;

    .line 75
    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 78
    move-result-object p2

    .line 79
    invoke-interface {p2}, Ljava/security/PublicKey;->getEncoded()[B

    .line 82
    move-result-object v2

    .line 83
    if-eqz v2, :cond_0

    .line 85
    move-object v1, p1

    .line 86
    move-object v3, p4

    .line 87
    move-object v4, p5

    .line 88
    move-object v5, p6

    .line 89
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->startRecoverySession(Ljava/lang/String;[B[B[BLjava/util/List;)[B

    .line 92
    move-result-object p0

    .line 93
    return-object p0

    .line 94
    :cond_0
    const-string p1, "Failed to encode verifierPublicKey"

    .line 96
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance p0, Landroid/os/ServiceSpecificException;

    .line 101
    invoke-direct {p0, v1, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 104
    throw p0

    .line 105
    :catch_0
    move-exception p1

    .line 106
    const-string p2, "Failed to validate the given cert path"

    .line 108
    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    new-instance p0, Landroid/os/ServiceSpecificException;

    .line 113
    const/16 p2, 0x1c

    .line 115
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 118
    move-result-object p1

    .line 119
    invoke-direct {p0, p2, p1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 122
    throw p0

    .line 123
    :catch_1
    move-exception p0

    .line 124
    new-instance p1, Landroid/os/ServiceSpecificException;

    .line 126
    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    .line 129
    move-result-object p0

    .line 130
    invoke-direct {p1, v1, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 133
    throw p1
.end method

.method public final startRemoteLockscreenValidation()Landroid/app/RemoteLockscreenValidationSession;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 3
    iget-object v1, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRemoteLockscreenValidationSessionStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage;

    .line 5
    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkVerifyRemoteLockscreenPermission()V

    .line 10
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 13
    move-result v2

    .line 14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 17
    move-result-wide v3

    .line 18
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialType(I)I

    .line 21
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 25
    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->lockPatternUtilsToKeyguardType(I)I

    .line 28
    move-result p0

    .line 29
    invoke-virtual {v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage;->startSession(I)Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage$LockscreenVerificationSession;

    .line 32
    move-result-object v1

    .line 33
    iget-object v1, v1, Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage$LockscreenVerificationSession;->mKeyPair:Ljava/security/KeyPair;

    .line 35
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    .line 38
    move-result-object v1

    .line 39
    invoke-static {v1}, Lcom/android/security/SecureBox;->encodePublicKey(Ljava/security/PublicKey;)[B

    .line 42
    move-result-object v1

    .line 43
    iget-object v0, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 45
    invoke-virtual {v0, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getBadRemoteGuessCounter(I)I

    .line 48
    move-result v0

    .line 49
    rsub-int/lit8 v0, v0, 0x5

    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 55
    move-result v0

    .line 56
    new-instance v2, Landroid/app/RemoteLockscreenValidationSession$Builder;

    .line 58
    invoke-direct {v2}, Landroid/app/RemoteLockscreenValidationSession$Builder;-><init>()V

    .line 61
    invoke-virtual {v2, p0}, Landroid/app/RemoteLockscreenValidationSession$Builder;->setLockType(I)Landroid/app/RemoteLockscreenValidationSession$Builder;

    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0, v0}, Landroid/app/RemoteLockscreenValidationSession$Builder;->setRemainingAttempts(I)Landroid/app/RemoteLockscreenValidationSession$Builder;

    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p0, v1}, Landroid/app/RemoteLockscreenValidationSession$Builder;->setSourcePublicKey([B)Landroid/app/RemoteLockscreenValidationSession$Builder;

    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {p0}, Landroid/app/RemoteLockscreenValidationSession$Builder;->build()Landroid/app/RemoteLockscreenValidationSession;

    .line 76
    move-result-object p0

    .line 77
    return-object p0

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 82
    throw p0

    .line 83
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 85
    const-string v0, "Under development"

    .line 87
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 90
    throw p0
.end method

.method public final systemReady()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 9
    move-result-object v0

    .line 10
    const-string v1, "android.software.secure_lock_screen"

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 15
    move-result v0

    .line 16
    iput-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHasSecureLockScreen:Z

    .line 18
    const-string v0, "LockSettingsService"

    .line 20
    const-string v1, "!@ migrateOldData"

    .line 22
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-static {}, Lcom/samsung/android/lock/LsLog;->prepare()V

    .line 28
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 30
    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts(I)I

    .line 38
    move-result v0

    .line 39
    invoke-static {v1, v0}, Lcom/samsung/android/lock/LsLog;->setFailureCount(II)V

    .line 42
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->migrateLockSettingsDB()V

    .line 45
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->migrateSpblob()V

    .line 48
    const-string/jumbo v0, "migrated_keystore_namespace"

    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/locksettings/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    const/4 v3, 0x1

    .line 57
    if-nez v0, :cond_3

    .line 59
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 61
    monitor-enter v0

    .line 62
    :try_start_0
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 64
    invoke-virtual {v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->migrateKeyNamespace()Z

    .line 67
    move-result v4

    .line 68
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 71
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 74
    move-result-object v0

    .line 75
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 78
    move-result v5

    .line 79
    move v6, v1

    .line 80
    move v7, v3

    .line 81
    :goto_0
    if-ge v6, v5, :cond_1

    .line 83
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    move-result-object v8

    .line 87
    check-cast v8, Landroid/content/pm/UserInfo;

    .line 89
    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    .line 91
    invoke-virtual {p0, v9}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    .line 94
    move-result v9

    .line 95
    if-eqz v9, :cond_0

    .line 97
    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    .line 99
    invoke-virtual {p0, v9}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    .line 102
    move-result v9

    .line 103
    if-nez v9, :cond_0

    .line 105
    new-instance v9, Ljava/lang/StringBuilder;

    .line 107
    const-string/jumbo v10, "profile_key_name_encrypt_"

    .line 110
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    iget v10, v8, Landroid/content/pm/UserInfo;->id:I

    .line 115
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    move-result-object v9

    .line 122
    invoke-static {v9}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->migrateLockSettingsKey(Ljava/lang/String;)Z

    .line 125
    move-result v9

    .line 126
    and-int/2addr v7, v9

    .line 127
    new-instance v9, Ljava/lang/StringBuilder;

    .line 129
    const-string/jumbo v10, "profile_key_name_decrypt_"

    .line 132
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    iget v8, v8, Landroid/content/pm/UserInfo;->id:I

    .line 137
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    move-result-object v8

    .line 144
    invoke-static {v8}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->migrateLockSettingsKey(Ljava/lang/String;)Z

    .line 147
    move-result v8

    .line 148
    and-int/2addr v7, v8

    .line 149
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 151
    goto :goto_0

    .line 152
    :cond_1
    and-int v0, v4, v7

    .line 154
    if-eqz v0, :cond_2

    .line 156
    const-string/jumbo v0, "migrated_keystore_namespace"

    .line 159
    const-string/jumbo v4, "true"

    .line 162
    invoke-virtual {p0, v0, v4, v1}, Lcom/android/server/locksettings/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 165
    const-string v0, "LockSettingsService"

    .line 167
    const-string v4, "Migrated keys to LSS namespace"

    .line 169
    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    goto :goto_1

    .line 173
    :cond_2
    const-string v0, "LockSettingsService"

    .line 175
    const-string v4, "Failed to migrate keys to LSS namespace"

    .line 177
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    goto :goto_1

    .line 181
    :catchall_0
    move-exception p0

    .line 182
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    throw p0

    .line 184
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 186
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    sget-object v4, Landroid/hardware/authsecret/IAuthSecret;->DESCRIPTOR:Ljava/lang/String;

    .line 191
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const-string v5, "/default"

    .line 196
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    move-result-object v0

    .line 203
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 206
    move-result-object v0

    .line 207
    if-nez v0, :cond_4

    .line 209
    move-object v4, v2

    .line 210
    goto :goto_2

    .line 211
    :cond_4
    invoke-interface {v0, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 214
    move-result-object v4

    .line 215
    if-eqz v4, :cond_5

    .line 217
    instance-of v5, v4, Landroid/hardware/authsecret/IAuthSecret;

    .line 219
    if-eqz v5, :cond_5

    .line 221
    check-cast v4, Landroid/hardware/authsecret/IAuthSecret;

    .line 223
    goto :goto_2

    .line 224
    :cond_5
    new-instance v4, Landroid/hardware/authsecret/IAuthSecret$Stub$Proxy;

    .line 226
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object v0, v4, Landroid/hardware/authsecret/IAuthSecret$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 231
    :goto_2
    iput-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecretService:Landroid/hardware/authsecret/IAuthSecret;

    .line 233
    const-string v0, "LockSettingsService"

    .line 235
    if-eqz v4, :cond_6

    .line 237
    const-string v4, "Device implements AIDL AuthSecret HAL"

    .line 239
    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    goto :goto_3

    .line 243
    :cond_6
    :try_start_2
    invoke-static {}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy;->getService()Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy;

    .line 246
    move-result-object v4

    .line 247
    new-instance v5, Lcom/android/server/locksettings/AuthSecretHidlAdapter;

    .line 249
    invoke-direct {v5, v4}, Lcom/android/server/locksettings/AuthSecretHidlAdapter;-><init>(Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy;)V

    .line 252
    iput-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mAuthSecretService:Landroid/hardware/authsecret/IAuthSecret;

    .line 254
    const-string v4, "Device implements HIDL AuthSecret HAL"

    .line 256
    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 259
    goto :goto_3

    .line 260
    :catch_0
    move-exception v4

    .line 261
    const-string v5, "Failed to get AuthSecret HAL(hidl)"

    .line 263
    invoke-static {v0, v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    goto :goto_3

    .line 267
    :catch_1
    const-string v4, "Device doesn\'t implement AuthSecret HAL"

    .line 269
    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :goto_3
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mDeviceProvisionedObserver:Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;

    .line 274
    iget-object v4, v0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 276
    iget-object v4, v4, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 278
    invoke-static {v4}, Lcom/android/internal/widget/LockPatternUtils;->frpCredentialEnabled(Landroid/content/Context;)Z

    .line 281
    move-result v4

    .line 282
    if-eqz v4, :cond_7

    .line 284
    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->updateRegistration()V

    .line 287
    goto :goto_4

    .line 288
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->isProvisioned()Z

    .line 291
    move-result v4

    .line 292
    if-nez v4, :cond_8

    .line 294
    const-string v4, "LockSettingsService"

    .line 296
    const-string v5, "FRP credential disabled, reporting device setup complete to Gatekeeper immediately"

    .line 298
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :try_start_3
    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 303
    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 306
    move-result-object v0

    .line 307
    invoke-interface {v0}, Landroid/service/gatekeeper/IGateKeeperService;->reportDeviceSetupComplete()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 310
    goto :goto_4

    .line 311
    :catch_2
    move-exception v0

    .line 312
    const-string v4, "LockSettingsService"

    .line 314
    const-string v5, "Failure reporting to IGateKeeperService"

    .line 316
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    :cond_8
    :goto_4
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->invalidateCredentialTypeCache()V

    .line 322
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 324
    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->prefetchUser(I)V

    .line 327
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mBiometricDeferredQueue:Lcom/android/server/locksettings/BiometricDeferredQueue;

    .line 329
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 331
    iget-object v5, v4, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    .line 333
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 336
    move-result-object v5

    .line 337
    const-string v6, "android.hardware.fingerprint"

    .line 339
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 342
    move-result v5

    .line 343
    if-eqz v5, :cond_9

    .line 345
    iget-object v4, v4, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    .line 347
    const-string/jumbo v5, "fingerprint"

    .line 350
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 353
    move-result-object v4

    .line 354
    check-cast v4, Landroid/hardware/fingerprint/FingerprintManager;

    .line 356
    goto :goto_5

    .line 357
    :cond_9
    move-object v4, v2

    .line 358
    :goto_5
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 360
    iget-object v6, v5, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    .line 362
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 365
    move-result-object v6

    .line 366
    const-string v7, "android.hardware.biometrics.face"

    .line 368
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 371
    move-result v6

    .line 372
    if-eqz v6, :cond_a

    .line 374
    iget-object v2, v5, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    .line 376
    const-string/jumbo v5, "face"

    .line 379
    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 382
    move-result-object v2

    .line 383
    check-cast v2, Landroid/hardware/face/FaceManager;

    .line 385
    :cond_a
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mInjector:Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 387
    iget-object v5, v5, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    .line 389
    const-string/jumbo v6, "biometric"

    .line 392
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 395
    move-result-object v5

    .line 396
    check-cast v5, Landroid/hardware/biometrics/BiometricManager;

    .line 398
    iput-object v4, v0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 400
    iput-object v2, v0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 402
    iput-object v5, v0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    .line 404
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    .line 407
    move-result v0

    .line 408
    if-eqz v0, :cond_b

    .line 410
    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    .line 413
    move-result v0

    .line 414
    if-eqz v0, :cond_b

    .line 416
    invoke-static {}, Landroid/multiuser/Flags;->enableBiometricsToUnlockPrivateSpace()Z

    .line 419
    move-result v0

    .line 420
    if-eqz v0, :cond_b

    .line 422
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManagerInternal:Landroid/os/storage/StorageManagerInternal;

    .line 424
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mCeStorageLockEventListener:Lcom/android/server/locksettings/LockSettingsService$4;

    .line 426
    invoke-virtual {v0, v2}, Landroid/os/storage/StorageManagerInternal;->registerStorageLockEventListener(Landroid/os/storage/ICeStorageLockEventListener;)V

    .line 429
    :cond_b
    const-string/jumbo v0, "ro.product.first_api_level"

    .line 432
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 435
    move-result v0

    .line 436
    const/16 v2, 0x22

    .line 438
    if-ge v0, v2, :cond_f

    .line 440
    const-string/jumbo v0, "migrated_mdfpp_pwd_data"

    .line 443
    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/locksettings/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    .line 446
    move-result v2

    .line 447
    if-eqz v2, :cond_c

    .line 449
    const-string v4, "No"

    .line 451
    goto :goto_6

    .line 452
    :cond_c
    const-string v4, "YES"

    .line 454
    :goto_6
    const-string v5, "Need pwdData migration ? "

    .line 456
    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 459
    move-result-object v4

    .line 460
    const-string v5, "LockSettingsService"

    .line 462
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    xor-int/2addr v2, v3

    .line 466
    if-eqz v2, :cond_f

    .line 468
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 470
    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 473
    move-result-object v2

    .line 474
    move v4, v1

    .line 475
    :goto_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 478
    move-result v5

    .line 479
    if-ge v4, v5, :cond_d

    .line 481
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 484
    move-result-object v5

    .line 485
    check-cast v5, Landroid/content/pm/UserInfo;

    .line 487
    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    .line 489
    invoke-virtual {p0, v5}, Lcom/android/server/locksettings/LockSettingsService;->migrateMdfppPwdData(I)V

    .line 492
    add-int/lit8 v4, v4, 0x1

    .line 494
    goto :goto_7

    .line 495
    :cond_d
    new-instance v2, Lcom/samsung/android/knox/dar/VirtualLockUtils;

    .line 497
    invoke-direct {v2}, Lcom/samsung/android/knox/dar/VirtualLockUtils;-><init>()V

    .line 500
    invoke-virtual {v2}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->getVirtualUsers()[I

    .line 503
    move-result-object v2

    .line 504
    array-length v4, v2

    .line 505
    move v5, v1

    .line 506
    :goto_8
    if-ge v5, v4, :cond_e

    .line 508
    aget v6, v2, v5

    .line 510
    invoke-virtual {p0, v6}, Lcom/android/server/locksettings/LockSettingsService;->migrateMdfppPwdData(I)V

    .line 513
    add-int/lit8 v5, v5, 0x1

    .line 515
    goto :goto_8

    .line 516
    :cond_e
    invoke-virtual {p0, v0, v3, v1}, Lcom/android/server/locksettings/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 519
    :cond_f
    return-void
.end method

.method public final tieProfileLockIfNecessary(Lcom/android/internal/widget/LockscreenCredential;I)V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "Tie lock if necessary for user "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 18
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v0

    .line 22
    const-string/jumbo v1, "profileUserPassword"

    .line 25
    const-string/jumbo v2, "profileUserId"

    .line 28
    filled-new-array {v2, v0, v1, p1}, [Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 35
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_0

    .line 41
    return-void

    .line 42
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 48
    return-void

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 51
    invoke-virtual {v0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/io/File;

    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/io/File;)Z

    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_2

    .line 61
    return-void

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 64
    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 67
    move-result-object v0

    .line 68
    if-nez v0, :cond_3

    .line 70
    return-void

    .line 71
    :cond_3
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    .line 73
    invoke-virtual {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    .line 76
    move-result v1

    .line 77
    const/4 v2, 0x1

    .line 78
    const-string v3, "LockSettingsService"

    .line 80
    if-nez v1, :cond_4

    .line 82
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    .line 85
    move-result v1

    .line 86
    if-nez v1, :cond_4

    .line 88
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    move-result-object v0

    .line 92
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 95
    move-result-object v0

    .line 96
    const-string v1, "Clearing password for profile user %d to match parent"

    .line 98
    invoke-static {v3, v1, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {p0, v0, p1, p2, v2}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    .line 108
    return-void

    .line 109
    :cond_4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 112
    move-result-object v1

    .line 113
    iget v4, v0, Landroid/content/pm/UserInfo;->id:I

    .line 115
    invoke-interface {v1, v4}, Landroid/service/gatekeeper/IGateKeeperService;->getSecureUserId(I)J

    .line 118
    move-result-wide v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    const-wide/16 v5, 0x0

    .line 121
    cmp-long v1, v3, v5

    .line 123
    if-nez v1, :cond_5

    .line 125
    return-void

    .line 126
    :cond_5
    const/16 v1, 0x28

    .line 128
    invoke-static {v1}, Lcom/android/server/locksettings/SecureRandomUtils;->randomBytes(I)[B

    .line 131
    move-result-object v1

    .line 132
    invoke-static {v1}, Llibcore/util/HexEncoding;->encode([B)[C

    .line 135
    move-result-object v5

    .line 136
    array-length v6, v5

    .line 137
    new-array v6, v6, [B

    .line 139
    const/4 v7, 0x0

    .line 140
    move v8, v7

    .line 141
    :goto_0
    array-length v9, v5

    .line 142
    if-ge v8, v9, :cond_6

    .line 144
    aget-char v9, v5, v8

    .line 146
    int-to-byte v9, v9

    .line 147
    aput-byte v9, v6, v8

    .line 149
    add-int/lit8 v8, v8, 0x1

    .line 151
    goto :goto_0

    .line 152
    :cond_6
    invoke-static {v6}, Lcom/android/internal/widget/LockscreenCredential;->createUnifiedProfilePassword([B)Lcom/android/internal/widget/LockscreenCredential;

    .line 155
    move-result-object v8

    .line 156
    invoke-static {v5, v7}, Ljava/util/Arrays;->fill([CC)V

    .line 159
    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([BB)V

    .line 162
    invoke-static {v1, v7}, Ljava/util/Arrays;->fill([BB)V

    .line 165
    :try_start_1
    invoke-virtual {p0, v8, p1, p2, v2}, Lcom/android/server/locksettings/LockSettingsService;->setLockCredentialInternal(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/LockscreenCredential;IZ)Z

    .line 168
    iget p1, v0, Landroid/content/pm/UserInfo;->id:I

    .line 170
    invoke-virtual {p0, p2, p1, v8}, Lcom/android/server/locksettings/LockSettingsService;->tieProfileLockToParent(IILcom/android/internal/widget/LockscreenCredential;)V

    .line 173
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUnifiedProfilePasswordCache:Lcom/android/server/locksettings/UnifiedProfilePasswordCache;

    .line 175
    invoke-virtual {p1, p2, v8, v3, v4}, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->storePassword(ILcom/android/internal/widget/LockscreenCredential;J)V

    .line 178
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithUnifiedLock(I)Z

    .line 181
    move-result p1

    .line 182
    if-eqz p1, :cond_7

    .line 184
    const/4 p1, 0x0

    .line 185
    invoke-virtual {p0, v8, p2, p1, v7}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    goto :goto_1

    .line 189
    :catchall_0
    move-exception p0

    .line 190
    goto :goto_2

    .line 191
    :cond_7
    :goto_1
    invoke-virtual {v8}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    .line 194
    return-void

    .line 195
    :goto_2
    if-eqz v8, :cond_8

    .line 197
    :try_start_2
    invoke-virtual {v8}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 200
    goto :goto_3

    .line 201
    :catchall_1
    move-exception p1

    .line 202
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 205
    :cond_8
    :goto_3
    throw p0

    .line 206
    :catch_0
    move-exception p0

    .line 207
    const-string p1, "Failed to talk to GateKeeper service"

    .line 209
    invoke-static {v3, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    return-void
.end method

.method public tieProfileLockToParent(IILcom/android/internal/widget/LockscreenCredential;)V
    .locals 10

    .line 1
    const-string v0, "NoPadding"

    .line 3
    const-string v1, "GCM"

    .line 5
    const-string/jumbo v2, "profile_key_name_encrypt_"

    .line 8
    const-string/jumbo v3, "profile_key_name_decrypt_"

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v4

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v5

    .line 19
    filled-new-array {v4, v5}, [Ljava/lang/Object;

    .line 22
    move-result-object v4

    .line 23
    const-string v5, "LockSettingsService"

    .line 25
    const-string v6, "Tying lock for profile user %d to parent user %d"

    .line 27
    invoke-static {v5, v6, v4}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 33
    move-result-object v4

    .line 34
    invoke-interface {v4, p2}, Landroid/service/gatekeeper/IGateKeeperService;->getSecureUserId(I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 37
    :try_start_1
    const-string p2, "AES"

    .line 39
    invoke-static {p2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    .line 42
    move-result-object p2

    .line 43
    new-instance v4, Ljava/security/SecureRandom;

    .line 45
    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    .line 48
    invoke-virtual {p2, v4}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    .line 51
    invoke-virtual {p2}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    .line 54
    move-result-object p2
    :try_end_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0

    .line 55
    :try_start_2
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Ljava/security/KeyStore;

    .line 57
    new-instance v5, Ljava/lang/StringBuilder;

    .line 59
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v5

    .line 69
    new-instance v6, Ljava/security/KeyStore$SecretKeyEntry;

    .line 71
    invoke-direct {v6, p2}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    .line 74
    new-instance v7, Landroid/security/keystore/KeyProtection$Builder;

    .line 76
    const/4 v8, 0x1

    .line 77
    invoke-direct {v7, v8}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    .line 80
    filled-new-array {v1}, [Ljava/lang/String;

    .line 83
    move-result-object v9

    .line 84
    invoke-virtual {v7, v9}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    .line 87
    move-result-object v7

    .line 88
    filled-new-array {v0}, [Ljava/lang/String;

    .line 91
    move-result-object v9

    .line 92
    invoke-virtual {v7, v9}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    .line 95
    move-result-object v7

    .line 96
    invoke-virtual {v7}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    .line 99
    move-result-object v7

    .line 100
    invoke-virtual {v4, v5, v6, v7}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 103
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Ljava/security/KeyStore;

    .line 105
    new-instance v5, Ljava/lang/StringBuilder;

    .line 107
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    move-result-object v3

    .line 117
    new-instance v5, Ljava/security/KeyStore$SecretKeyEntry;

    .line 119
    invoke-direct {v5, p2}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    .line 122
    new-instance p2, Landroid/security/keystore/KeyProtection$Builder;

    .line 124
    const/4 v6, 0x2

    .line 125
    invoke-direct {p2, v6}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    .line 128
    filled-new-array {v1}, [Ljava/lang/String;

    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {p2, v1}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    .line 135
    move-result-object p2

    .line 136
    filled-new-array {v0}, [Ljava/lang/String;

    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {p2, v0}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    .line 143
    move-result-object p2

    .line 144
    invoke-virtual {p2}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    .line 147
    move-result-object p2

    .line 148
    invoke-virtual {v4, v3, v5, p2}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 151
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Ljava/security/KeyStore;

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    .line 155
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    move-result-object v0

    .line 165
    const/4 v1, 0x0

    .line 166
    invoke-virtual {p2, v0, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    .line 169
    move-result-object p2

    .line 170
    check-cast p2, Ljavax/crypto/SecretKey;

    .line 172
    const-string v0, "AES/GCM/NoPadding"

    .line 174
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {v0, v8, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 181
    invoke-virtual {p3}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    .line 184
    move-result-object p2

    .line 185
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 188
    move-result-object p2

    .line 189
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    .line 192
    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    :try_start_3
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Ljava/security/KeyStore;

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    .line 197
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    move-result-object v1

    .line 207
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_0

    .line 210
    array-length v0, p3

    .line 211
    const/16 v1, 0xc

    .line 213
    if-ne v0, v1, :cond_0

    .line 215
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 217
    filled-new-array {p3, p2}, [[B

    .line 220
    move-result-object p2

    .line 221
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->concat([[B)[B

    .line 224
    move-result-object p2

    .line 225
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/io/File;

    .line 228
    move-result-object p1

    .line 229
    invoke-virtual {p0, p1, p2, v8}, Lcom/android/server/locksettings/LockSettingsStorage;->writeFile(Ljava/io/File;[BZ)V

    .line 232
    return-void

    .line 233
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 235
    new-instance p1, Ljava/lang/StringBuilder;

    .line 237
    const-string p2, "Invalid iv length: "

    .line 239
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    array-length p2, p3

    .line 243
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    move-result-object p1

    .line 250
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 253
    throw p0

    .line 254
    :catch_0
    move-exception p0

    .line 255
    goto :goto_0

    .line 256
    :catchall_0
    move-exception p2

    .line 257
    :try_start_4
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStore:Ljava/security/KeyStore;

    .line 259
    new-instance p3, Ljava/lang/StringBuilder;

    .line 261
    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    move-result-object p1

    .line 271
    invoke-virtual {p0, p1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 274
    throw p2
    :try_end_4
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_4} :catch_0

    .line 275
    :goto_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 277
    const-string p2, "Failed to encrypt key"

    .line 279
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 282
    throw p1

    .line 283
    :catch_1
    move-exception p0

    .line 284
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 286
    const-string p2, "Failed to talk to GateKeeper service"

    .line 288
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 291
    throw p1
.end method

.method public final tryUnlockWithCachedUnifiedChallenge(I)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUnifiedProfilePasswordCache:Lcom/android/server/locksettings/UnifiedProfilePasswordCache;

    .line 6
    iget-object v1, v0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, v0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mEncryptedPasswords:Landroid/util/SparseArray;

    .line 11
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v2

    .line 15
    check-cast v2, [B

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x0

    .line 19
    if-nez v2, :cond_0

    .line 21
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :goto_0
    move-object v2, v3

    .line 23
    goto :goto_1

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto/16 :goto_3

    .line 27
    :cond_0
    :try_start_1
    iget-object v0, v0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;->mKeyStore:Ljava/security/KeyStore;

    .line 29
    new-instance v5, Ljava/lang/StringBuilder;

    .line 31
    const-string/jumbo v6, "com.android.server.locksettings.unified_profile_cache_v2_"

    .line 34
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v5

    .line 44
    invoke-virtual {v0, v5, v3}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    .line 47
    move-result-object v0
    :try_end_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    if-nez v0, :cond_1

    .line 50
    :try_start_2
    monitor-exit v1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/16 v5, 0xc

    .line 54
    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 57
    move-result-object v6

    .line 58
    array-length v7, v2

    .line 59
    invoke-static {v2, v5, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 62
    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    :try_start_3
    const-string v5, "AES/GCM/NoPadding"

    .line 65
    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 68
    move-result-object v5

    .line 69
    new-instance v7, Ljavax/crypto/spec/GCMParameterSpec;

    .line 71
    const/16 v8, 0x80

    .line 73
    invoke-direct {v7, v8, v6}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 76
    const/4 v6, 0x2

    .line 77
    invoke-virtual {v5, v6, v0, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 80
    invoke-virtual {v5, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 83
    move-result-object v0
    :try_end_3
    .catch Landroid/security/keystore/UserNotAuthenticatedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 84
    :try_start_4
    invoke-static {v0}, Lcom/android/internal/widget/LockscreenCredential;->createUnifiedProfilePassword([B)Lcom/android/internal/widget/LockscreenCredential;

    .line 87
    move-result-object v2

    .line 88
    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 91
    monitor-exit v1

    .line 92
    goto :goto_1

    .line 93
    :catch_0
    move-exception v0

    .line 94
    const-string v2, "UnifiedProfilePasswordCache"

    .line 96
    const-string v5, "Cannot decrypt"

    .line 98
    invoke-static {v2, v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    monitor-exit v1

    .line 102
    goto :goto_0

    .line 103
    :catch_1
    const-string v0, "UnifiedProfilePasswordCache"

    .line 105
    const-string v2, "Device not unlocked for more than 7 days"

    .line 107
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    monitor-exit v1

    .line 111
    goto :goto_0

    .line 112
    :catch_2
    move-exception v0

    .line 113
    const-string v2, "UnifiedProfilePasswordCache"

    .line 115
    const-string v5, "Cannot get key"

    .line 117
    invoke-static {v2, v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 121
    goto :goto_0

    .line 122
    :goto_1
    if-nez v2, :cond_3

    .line 124
    if-eqz v2, :cond_2

    .line 126
    invoke-virtual {v2}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    .line 129
    :cond_2
    return v4

    .line 130
    :cond_3
    :try_start_5
    invoke-virtual {p0, v2, p1, v3, v4}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 133
    move-result-object p0

    .line 134
    invoke-virtual {p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    .line 137
    move-result p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 138
    if-nez p0, :cond_4

    .line 140
    const/4 v4, 0x1

    .line 141
    :cond_4
    invoke-virtual {v2}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    .line 144
    return v4

    .line 145
    :catchall_1
    move-exception p0

    .line 146
    :try_start_6
    invoke-virtual {v2}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 149
    goto :goto_2

    .line 150
    :catchall_2
    move-exception p1

    .line 151
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 154
    :goto_2
    throw p0

    .line 155
    :goto_3
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 156
    throw p0
.end method

.method public final unlockCeStorage(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isCeStorageUnlocked(I)Z

    .line 4
    move-result v0

    .line 5
    const-string v1, "LockSettingsService"

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object p0

    .line 13
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 17
    const-string p1, "CE storage for user %d is already unlocked"

    .line 19
    invoke-static {v1, p1, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    return-void

    .line 23
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 29
    const-string/jumbo v0, "secured"

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const-string/jumbo v0, "unsecured"

    .line 36
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    sget-object v2, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_FBE_KEY:[B

    .line 41
    invoke-virtual {p2, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveSubkey([B)[B

    .line 44
    move-result-object p2

    .line 45
    const/4 v2, 0x0

    .line 46
    :try_start_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorageManager:Landroid/os/storage/IStorageManager;

    .line 48
    invoke-interface {p0, p1, p2}, Landroid/os/storage/IStorageManager;->unlockCeStorage(I[B)V

    .line 51
    const-string p0, "!@Unlocked CE storage for %s user %d"

    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object v3

    .line 57
    filled-new-array {v0, v3}, [Ljava/lang/Object;

    .line 60
    move-result-object v3

    .line 61
    invoke-static {v1, p0, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :goto_1
    invoke-static {p2, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 67
    goto :goto_2

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    goto :goto_3

    .line 70
    :catch_0
    move-exception p0

    .line 71
    :try_start_1
    const-string v3, "Failed to unlock CE storage for %s user %d"

    .line 73
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    move-result-object p1

    .line 77
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 80
    move-result-object p1

    .line 81
    invoke-static {v1, p0, v3, p1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    goto :goto_1

    .line 85
    :goto_2
    return-void

    .line 86
    :goto_3
    invoke-static {p2, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 89
    throw p0
.end method

.method public final unlockKeystore(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mKeyStoreAuthorization:Landroid/security/KeyStoreAuthorization;

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_KEY_STORE_PASSWORD:[B

    .line 8
    invoke-virtual {p2, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveSubkey([B)[B

    .line 11
    move-result-object p2

    .line 12
    invoke-static {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->bytesToHex([B)[B

    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p0, p1, p2}, Landroid/security/KeyStoreAuthorization;->onDeviceUnlocked(I[B)I

    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_0

    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    .line 24
    const-string/jumbo v0, "unlockKeystore fail, user "

    .line 27
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    const-string p1, ", ret = "

    .line 35
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 45
    const/4 p1, 0x1

    .line 46
    invoke-static {p0, p1}, Lcom/samsung/android/lock/LsLog;->keyErr(Ljava/lang/String;Z)V

    .line 49
    :cond_0
    return-void
.end method

.method public final unlockUser(I)V
    .locals 8

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object v0

    .line 5
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "!@BOOT: Unlocking user %d"

    .line 11
    const-string v2, "LockSettingsService"

    .line 13
    invoke-static {v2, v1, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 18
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    .line 21
    move-result v0

    .line 22
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    .line 24
    const/4 v3, 0x1

    .line 25
    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 28
    new-instance v3, Lcom/android/server/locksettings/LockSettingsService$5;

    .line 30
    invoke-direct {v3, v1}, Lcom/android/server/locksettings/LockSettingsService$5;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 33
    :try_start_0
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mActivityManager:Landroid/app/IActivityManager;

    .line 35
    invoke-interface {v4, p1, v3}, Landroid/app/IActivityManager;->unlockUser2(ILandroid/os/IProgressListener;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    .line 38
    :try_start_1
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 40
    const-wide/16 v4, 0xf

    .line 42
    invoke-virtual {v1, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 45
    goto :goto_0

    .line 46
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 53
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_1

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 67
    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/io/File;

    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/io/File;)Z

    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_0

    .line 77
    goto :goto_1

    .line 78
    :cond_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mBiometricDeferredQueue:Lcom/android/server/locksettings/BiometricDeferredQueue;

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    new-instance p1, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda1;

    .line 85
    invoke-direct {p1, p0}, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/locksettings/BiometricDeferredQueue;)V

    .line 88
    iget-object p0, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mHandler:Landroid/os/Handler;

    .line 90
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
    :goto_1
    return-void

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 96
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    .line 99
    move-result-object v1

    .line 100
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 103
    move-result-object v1

    .line 104
    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    move-result v3

    .line 108
    if-eqz v3, :cond_9

    .line 110
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    move-result-object v3

    .line 114
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 116
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    .line 118
    if-ne v4, p1, :cond_3

    .line 120
    goto :goto_2

    .line 121
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/server/locksettings/LockSettingsService;->isCredentialSharableWithParent(I)Z

    .line 124
    move-result v4

    .line 125
    if-nez v4, :cond_4

    .line 127
    goto :goto_2

    .line 128
    :cond_4
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    .line 130
    invoke-virtual {p0, v4}, Lcom/android/server/locksettings/LockSettingsService;->getSeparateProfileChallengeEnabledInternal(I)Z

    .line 133
    move-result v5

    .line 134
    if-nez v5, :cond_7

    .line 136
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 138
    invoke-virtual {v5, v4}, Lcom/android/server/locksettings/LockSettingsStorage;->getChildProfileLockFile(I)Ljava/io/File;

    .line 141
    move-result-object v4

    .line 142
    invoke-virtual {v5, v4}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/io/File;)Z

    .line 145
    move-result v4

    .line 146
    if-eqz v4, :cond_7

    .line 148
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 150
    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    .line 152
    invoke-virtual {v4, v5}, Landroid/os/UserManager;->isUserRunning(I)Z

    .line 155
    move-result v4

    .line 156
    if-eqz v4, :cond_6

    .line 158
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    .line 160
    :try_start_2
    invoke-virtual {p0, v4}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    .line 163
    move-result-object v5

    .line 164
    const/4 v6, 0x0

    .line 165
    const/4 v7, 0x0

    .line 166
    invoke-virtual {p0, v5, v4, v6, v7}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    :try_end_2
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 169
    goto :goto_3

    .line 170
    :catch_1
    move-exception v4

    .line 171
    instance-of v5, v4, Ljava/io/FileNotFoundException;

    .line 173
    if-eqz v5, :cond_5

    .line 175
    const-string v4, "Child profile key not found"

    .line 177
    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    goto :goto_3

    .line 181
    :cond_5
    const-string v5, "Failed to decrypt child profile key"

    .line 183
    invoke-static {v2, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    goto :goto_3

    .line 187
    :cond_6
    :try_start_3
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    .line 189
    invoke-virtual {p0, v4}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 192
    goto :goto_3

    .line 193
    :catch_2
    move-exception v4

    .line 194
    const-string v5, "Cache unified profile password failed"

    .line 196
    invoke-static {v2, v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    :cond_7
    :goto_3
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    .line 202
    move-result v4

    .line 203
    if-eqz v4, :cond_8

    .line 205
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    .line 208
    move-result v4

    .line 209
    if-eqz v4, :cond_8

    .line 211
    invoke-virtual {p0, v3}, Lcom/android/server/locksettings/LockSettingsService;->UnlockSecureFolderIfAutoDataDecryption(Landroid/content/pm/UserInfo;)V

    .line 214
    :cond_8
    if-nez v0, :cond_2

    .line 216
    invoke-static {}, Lcom/android/internal/widget/ILockSettings$Stub;->clearCallingIdentity()J

    .line 219
    move-result-wide v4

    .line 220
    :try_start_4
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 222
    const-string/jumbo v6, "parent unlocked"

    .line 225
    invoke-virtual {p0, v3, v6}, Lcom/android/server/locksettings/LockSettingsService;->maybeShowEncryptionNotificationForUser(ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 228
    invoke-static {v4, v5}, Lcom/android/internal/widget/ILockSettings$Stub;->restoreCallingIdentity(J)V

    .line 231
    goto :goto_2

    .line 232
    :catchall_0
    move-exception p0

    .line 233
    invoke-static {v4, v5}, Lcom/android/internal/widget/ILockSettings$Stub;->restoreCallingIdentity(J)V

    .line 236
    throw p0

    .line 237
    :cond_9
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mBiometricDeferredQueue:Lcom/android/server/locksettings/BiometricDeferredQueue;

    .line 239
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    new-instance p1, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda1;

    .line 244
    invoke-direct {p1, p0}, Lcom/android/server/locksettings/BiometricDeferredQueue$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/locksettings/BiometricDeferredQueue;)V

    .line 247
    iget-object p0, p0, Lcom/android/server/locksettings/BiometricDeferredQueue;->mHandler:Landroid/os/Handler;

    .line 249
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 252
    return-void

    .line 253
    :catch_3
    move-exception p0

    .line 254
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 257
    move-result-object p0

    .line 258
    throw p0
.end method

.method public final unlockUserKeyIfUnsecured(I)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isCeStorageUnlocked(I)Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 13
    const-string p0, "LockSettingsService"

    .line 15
    const-string v1, "CE storage for user %d is already unlocked"

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object p1

    .line 21
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 25
    invoke-static {p0, v1, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 38
    const-string p0, "LockSettingsService"

    .line 40
    const-string v1, "Not unlocking CE storage for user %d yet because user is secured"

    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object p1

    .line 46
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 49
    move-result-object p1

    .line 50
    invoke-static {p0, v1, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    monitor-exit v0

    .line 54
    return-void

    .line 55
    :cond_1
    const-string v1, "LockSettingsService"

    .line 57
    const-string v2, "Unwrapping synthetic password for unsecured user %d"

    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    move-result-object v3

    .line 63
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 66
    move-result-object v3

    .line 67
    invoke-static {v1, v2, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 72
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 75
    move-result-object v5

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->getCurrentLskfBasedProtectorId(I)J

    .line 79
    move-result-wide v6

    .line 80
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    .line 83
    move-result-object v8

    .line 84
    const/4 v10, 0x0

    .line 85
    move v9, p1

    .line 86
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockLskfBasedProtector(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    .line 89
    move-result-object v1

    .line 90
    iget-object v2, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 92
    if-nez v2, :cond_2

    .line 94
    const-string p0, "LockSettingsService"

    .line 96
    const-string v1, "Failed to unwrap synthetic password for unsecured user %d"

    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    move-result-object p1

    .line 102
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 105
    move-result-object p1

    .line 106
    invoke-static {p0, v1, p1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    monitor-exit v0

    .line 110
    return-void

    .line 111
    :cond_2
    const/4 v3, 0x0

    .line 112
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/locksettings/LockSettingsService;->onSyntheticPasswordKnown(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;Z)V

    .line 115
    sget-boolean v2, Lcom/android/server/locksettings/LockSettingsService;->FIX_UNLOCKED_DEVICE_REQUIRED_KEYS:Z

    .line 117
    if-eqz v2, :cond_3

    .line 119
    iget-object v2, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 121
    invoke-virtual {p0, p1, v2}, Lcom/android/server/locksettings/LockSettingsService;->unlockKeystore(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    .line 124
    :cond_3
    iget-object v1, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 126
    invoke-virtual {p0, p1, v1}, Lcom/android/server/locksettings/LockSettingsService;->unlockCeStorage(ILcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;)V

    .line 129
    monitor-exit v0

    .line 130
    return-void

    .line 131
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    throw p0
.end method

.method public final unregisterRemoteLockCallback(ILcom/android/internal/widget/IRemoteLockMonitorCallback;)V
    .locals 1

    .line 1
    const-string p2, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 3
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    .line 6
    move-result p2

    .line 7
    if-nez p2, :cond_1

    .line 9
    const-string p2, "android.permission.SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS"

    .line 11
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 20
    const-string/jumbo p1, "registerRemoteLockCallback requires SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS or android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 23
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 26
    throw p0

    .line 27
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 36
    move-result p2

    .line 37
    if-eqz p2, :cond_2

    .line 39
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mCallbacks:Ljava/util/HashMap;

    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    const-string p1, " hasn\'t been registered!!"

    .line 59
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 66
    const-string p1, "LockSettingsService"

    .line 68
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :goto_1
    return-void
.end method

.method public final unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    .line 6
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    .line 8
    const/4 v0, 0x3

    .line 9
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 16
    return-void
.end method

.method public final unregisterWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkManageWeakEscrowTokenMethodUsage()V

    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 10
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mListeners:Landroid/os/RemoteCallbackList;

    .line 12
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 15
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19
    return p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 24
    throw p0
.end method

.method public final updateCarrierLock(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 4
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    const-string p1, "LockSettingsStorage"

    .line 11
    const-string/jumbo v0, "updateCarrierLock!!"

    .line 14
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStorage;->getCarrierLockFromFile()Z

    .line 20
    move-result p1

    .line 21
    const/4 v0, 0x1

    .line 22
    if-eqz p1, :cond_0

    .line 24
    iput v0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x2

    .line 28
    iput p1, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    .line 30
    :goto_0
    iget p0, p0, Lcom/android/server/locksettings/LockSettingsStorage;->mSKTLockState:I

    .line 32
    if-ne p0, v0, :cond_1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/4 v0, 0x0

    .line 36
    :goto_1
    return v0
.end method

.method public final updateExpireTimeForPrev(Z)J
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->getBackupLskfBasedProtectorId(I)J

    .line 5
    move-result-wide v1

    .line 6
    const-wide/16 v3, 0x0

    .line 8
    cmp-long v1, v3, v1

    .line 10
    if-nez v1, :cond_0

    .line 12
    return-wide v3

    .line 13
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    move-result-wide v1

    .line 17
    const-string v5, "backup-expiration-ts"

    .line 19
    invoke-virtual {p0, v5, v3, v4, v0}, Lcom/android/server/locksettings/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    .line 22
    move-result-wide v5

    .line 23
    if-eqz p1, :cond_1

    .line 25
    cmp-long p1, v1, v5

    .line 27
    if-ltz p1, :cond_1

    .line 29
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->expirePreviousData()V

    .line 32
    return-wide v3

    .line 33
    :cond_1
    return-wide v5
.end method

.method public final updateSdpMdfppForSystem(IJ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final userPresent(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkWritePermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStrongAuth:Lcom/android/server/locksettings/LockSettingsStrongAuth;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->requireStrongAuth(II)V

    .line 10
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->isEnablePrevCredential()Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 16
    if-nez p1, :cond_0

    .line 18
    const/4 p1, 0x1

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->updateExpireTimeForPrev(Z)J

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 24
    invoke-static {p0}, Lcom/samsung/android/lock/LsLog;->tryUpload(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public final validateRemoteLockscreen([B)Landroid/app/RemoteLockscreenValidationResult;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mRecoverableKeyStoreManager:Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->checkVerifyRemoteLockscreenPermission()V

    .line 7
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 10
    move-result v1

    .line 11
    iget-object v2, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mRemoteLockscreenValidationSessionStorage:Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage;

    .line 13
    invoke-virtual {v2, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage;->get(I)Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage$LockscreenVerificationSession;

    .line 16
    move-result-object v2

    .line 17
    iget-object v3, v0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 19
    invoke-virtual {v3, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->getBadRemoteGuessCounter(I)I

    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x5

    .line 24
    rsub-int/lit8 v3, v3, 0x5

    .line 26
    if-gtz v3, :cond_0

    .line 28
    new-instance p0, Landroid/app/RemoteLockscreenValidationResult$Builder;

    .line 30
    invoke-direct {p0}, Landroid/app/RemoteLockscreenValidationResult$Builder;-><init>()V

    .line 33
    const/4 p1, 0x4

    .line 34
    invoke-virtual {p0, p1}, Landroid/app/RemoteLockscreenValidationResult$Builder;->setResultCode(I)Landroid/app/RemoteLockscreenValidationResult$Builder;

    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Landroid/app/RemoteLockscreenValidationResult$Builder;->build()Landroid/app/RemoteLockscreenValidationResult;

    .line 41
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit v0

    .line 43
    goto/16 :goto_2

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto/16 :goto_8

    .line 48
    :cond_0
    if-nez v2, :cond_1

    .line 50
    :try_start_1
    new-instance p0, Landroid/app/RemoteLockscreenValidationResult$Builder;

    .line 52
    invoke-direct {p0}, Landroid/app/RemoteLockscreenValidationResult$Builder;-><init>()V

    .line 55
    invoke-virtual {p0, v4}, Landroid/app/RemoteLockscreenValidationResult$Builder;->setResultCode(I)Landroid/app/RemoteLockscreenValidationResult$Builder;

    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p0}, Landroid/app/RemoteLockscreenValidationResult$Builder;->build()Landroid/app/RemoteLockscreenValidationResult;

    .line 62
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    monitor-exit v0

    .line 64
    goto :goto_2

    .line 65
    :cond_1
    :try_start_2
    iget-object v2, v2, Lcom/android/server/locksettings/recoverablekeystore/storage/RemoteLockscreenValidationSessionStorage$LockscreenVerificationSession;->mKeyPair:Ljava/security/KeyPair;

    .line 67
    invoke-virtual {v2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    .line 70
    move-result-object v2

    .line 71
    sget-object v3, Lcom/android/internal/widget/LockPatternUtils;->ENCRYPTED_REMOTE_CREDENTIALS_HEADER:[B

    .line 73
    const/4 v4, 0x0

    .line 74
    invoke-static {v2, v4, v3, p1}, Lcom/android/security/SecureBox;->decrypt(Ljava/security/PrivateKey;[B[B[B)[B

    .line 77
    move-result-object p1
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/AEADBadTagException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 81
    move-result-wide v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 82
    :try_start_4
    invoke-virtual {p0, v1}, Lcom/android/server/locksettings/LockSettingsService;->getCredentialType(I)I

    .line 85
    move-result v4

    .line 86
    invoke-static {v4}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->lockPatternUtilsToKeyguardType(I)I

    .line 89
    move-result v4

    .line 90
    if-eqz v4, :cond_4

    .line 92
    const/4 v5, 0x1

    .line 93
    if-eq v4, v5, :cond_3

    .line 95
    const/4 v5, 0x2

    .line 96
    if-ne v4, v5, :cond_2

    .line 98
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->byteArrayToPattern([B)Ljava/util/List;

    .line 101
    move-result-object v4

    .line 102
    invoke-static {v4}, Lcom/android/internal/widget/LockscreenCredential;->createPattern(Ljava/util/List;)Lcom/android/internal/widget/LockscreenCredential;

    .line 105
    move-result-object v4

    .line 106
    goto :goto_0

    .line 107
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 109
    const-string p1, "Lockscreen is not set"

    .line 111
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 114
    throw p0

    .line 115
    :cond_3
    new-instance v4, Ljava/lang/String;

    .line 117
    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([B)V

    .line 120
    invoke-static {v4}, Lcom/android/internal/widget/LockscreenCredential;->createPin(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    .line 123
    move-result-object v4

    .line 124
    goto :goto_0

    .line 125
    :cond_4
    new-instance v4, Ljava/lang/String;

    .line 127
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 129
    invoke-direct {v4, p1, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 132
    invoke-static {v4}, Lcom/android/internal/widget/LockscreenCredential;->createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    .line 135
    move-result-object v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 136
    :goto_0
    const/4 v5, 0x0

    .line 137
    :try_start_5
    invoke-static {p1, v5}, Ljava/util/Arrays;->fill([BB)V

    .line 140
    invoke-virtual {p0, v4, v1, v5}, Lcom/android/server/locksettings/LockSettingsService;->verifyCredential(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 143
    move-result-object p0

    .line 144
    invoke-virtual {v0, p0, v1}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->handleVerifyCredentialResponse(Lcom/android/internal/widget/VerifyCredentialResponse;I)Landroid/app/RemoteLockscreenValidationResult;

    .line 147
    move-result-object p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 148
    if-eqz v4, :cond_5

    .line 150
    :try_start_6
    invoke-virtual {v4}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 153
    goto :goto_1

    .line 154
    :catchall_1
    move-exception p0

    .line 155
    goto :goto_4

    .line 156
    :cond_5
    :goto_1
    :try_start_7
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 159
    monitor-exit v0

    .line 160
    :goto_2
    return-object p0

    .line 161
    :catchall_2
    move-exception p0

    .line 162
    if-eqz v4, :cond_6

    .line 164
    :try_start_8
    invoke-virtual {v4}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 167
    goto :goto_3

    .line 168
    :catchall_3
    move-exception p1

    .line 169
    :try_start_9
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 172
    :cond_6
    :goto_3
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 173
    :goto_4
    :try_start_a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 176
    throw p0

    .line 177
    :catch_0
    move-exception p0

    .line 178
    goto :goto_5

    .line 179
    :catch_1
    move-exception p0

    .line 180
    goto :goto_6

    .line 181
    :catch_2
    move-exception p0

    .line 182
    goto :goto_7

    .line 183
    :goto_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 185
    const-string v1, "Could not decrypt credentials guess"

    .line 187
    invoke-direct {p1, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    throw p1

    .line 191
    :goto_6
    const-string p1, "RecoverableKeyStoreMgr"

    .line 193
    const-string v1, "Got InvalidKeyException during lock screen credentials decryption"

    .line 195
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 200
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 203
    throw p1

    .line 204
    :goto_7
    const-string p1, "RecoverableKeyStoreMgr"

    .line 206
    const-string v1, "Missing SecureBox algorithm. AOSP required to support this."

    .line 208
    invoke-static {p1, v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 213
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 216
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 217
    :goto_8
    monitor-exit v0

    .line 218
    throw p0
.end method

.method public final verifyCredential(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 3

    .line 1
    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 9
    const-string v0, "android.permission.SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS"

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsService;->hasPermission(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 20
    const-string/jumbo p1, "verifyCredential requires SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS or android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 23
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 26
    throw p0

    .line 27
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 30
    move-result-wide v0

    .line 31
    const/4 v2, 0x0

    .line 32
    :try_start_0
    invoke-virtual {p0, p1, p2, v2, p3}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 35
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 42
    return-object p0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 47
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 50
    throw p0
.end method

.method public final verifyGatekeeperPasswordHandle(JJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 4
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mGatekeeperPasswords:Landroid/util/LongSparseArray;

    .line 9
    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    move-object v6, p1

    .line 14
    check-cast v6, [B

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 19
    monitor-enter p1

    .line 20
    if-nez v6, :cond_0

    .line 22
    :try_start_1
    const-string p0, "LockSettingsService"

    .line 24
    const-string p2, "No gatekeeper password for handle"

    .line 26
    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 36
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 39
    move-result-object v5

    .line 40
    move v2, p5

    .line 41
    move-wide v3, p3

    .line 42
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallengeInternal(IJLandroid/service/gatekeeper/IGateKeeperService;[B)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 45
    move-result-object p0

    .line 46
    :goto_0
    monitor-exit p1

    .line 47
    return-object p0

    .line 48
    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw p0

    .line 50
    :catchall_1
    move-exception p0

    .line 51
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 52
    throw p0
.end method

.method public final verifyTiedProfileChallenge(Lcom/android/internal/widget/LockscreenCredential;II)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->checkPasswordReadPermission()V

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v0

    .line 8
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    const-string v1, "Verifying tied profile challenge for user %d"

    .line 14
    const-string v2, "LockSettingsService"

    .line 16
    invoke-static {v2, v1, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->isProfileWithUnifiedLock(I)Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 27
    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 30
    move-result-object v0

    .line 31
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_0

    .line 44
    return-object p1

    .line 45
    :cond_0
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/LockSettingsService;->getDecryptedPasswordForTiedProfile(I)Lcom/android/internal/widget/LockscreenCredential;

    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/android/server/locksettings/LockSettingsService;->doVerifyCredential(Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 52
    move-result-object p0
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 56
    return-object p0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception p0

    .line 60
    :try_start_1
    const-string p1, "Failed to decrypt child profile key"

    .line 62
    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 67
    const-string p1, "Unable to get tied profile token"

    .line 69
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 72
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    :goto_0
    invoke-static {}, Lcom/android/server/locksettings/LockSettingsService;->scheduleGc()V

    .line 76
    throw p0

    .line 77
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 79
    const-string p1, "User id must be managed/clone profile with unified lock"

    .line 81
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    throw p0
.end method

.method public final verifyToken([BJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "Verify token for user "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 18
    const-string/jumbo v1, "token"

    .line 21
    const-string/jumbo v3, "tokenHandle"

    .line 24
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    move-result-object v4

    .line 28
    const-string/jumbo v5, "userId"

    .line 31
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object v6

    .line 35
    move-object v2, p1

    .line 36
    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->p([Ljava/lang/Object;)V

    .line 43
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 45
    const/4 v1, 0x0

    .line 46
    :try_start_0
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 48
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :try_start_1
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 51
    invoke-virtual {v3, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasEscrowData(I)Z

    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_3

    .line 57
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 59
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 62
    move-result-object v8

    .line 63
    move v5, p4

    .line 64
    move-wide v6, p2

    .line 65
    move-object v9, p1

    .line 66
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unlockTokenBasedProtector(IJLandroid/service/gatekeeper/IGateKeeperService;[B)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    .line 69
    move-result-object p1

    .line 70
    iget-object p2, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 72
    if-nez p2, :cond_0

    .line 74
    const-string p0, "Failed due to invalid escrow token supplied"

    .line 76
    invoke-static {v1, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    goto :goto_1

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_2

    .line 82
    :cond_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSdpLockSettings:Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    invoke-static {p4}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    .line 90
    move-result p2

    .line 91
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    .line 93
    check-cast p0, Lcom/android/server/locksettings/LockSettingsService;

    .line 95
    if-nez p2, :cond_1

    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    goto :goto_0

    .line 101
    :cond_1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mSpManager:Lcom/android/server/locksettings/SyntheticPasswordManager;

    .line 103
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getWeaverService()Landroid/hardware/weaver/IWeaver;

    .line 106
    move-result-object p0

    .line 107
    if-eqz p0, :cond_2

    .line 109
    const-class p0, Lcom/android/server/knox/dar/sdp/SdpManagerInternal;

    .line 111
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 114
    move-result-object p0

    .line 115
    invoke-static {p0}, Lcom/android/server/DssController$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 118
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 121
    move-result-object p0

    .line 122
    new-instance p2, Lcom/android/server/locksettings/LockSettingsService$Lifecycle$$ExternalSyntheticLambda0;

    .line 124
    const/4 p3, 0x1

    .line 125
    invoke-direct {p2, p3}, Lcom/android/server/locksettings/LockSettingsService$Lifecycle$$ExternalSyntheticLambda0;-><init>(I)V

    .line 128
    invoke-virtual {p0, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 131
    :cond_2
    :goto_0
    new-instance p0, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;

    .line 133
    invoke-direct {p0}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;-><init>()V

    .line 136
    invoke-virtual {p0}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->build()Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 139
    move-result-object v0

    .line 140
    iget-object p0, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->syntheticPassword:Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;

    .line 142
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    sget-object p1, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SDP_MASTER_KEY:[B

    .line 147
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPassword;->deriveSubkey([B)[B

    .line 150
    move-result-object p0

    .line 151
    invoke-virtual {v0, p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->setSecret([B)V

    .line 154
    :goto_1
    monitor-exit v2

    .line 155
    goto :goto_3

    .line 156
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 158
    const-string p1, "Escrow token is disabled on the current user"

    .line 160
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 163
    throw p0

    .line 164
    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 166
    :catch_0
    move-exception p0

    .line 167
    const-string p1, "Unexpected exception while verify token"

    .line 169
    invoke-static {p0, v1, p1}, Lcom/android/server/knox/dar/sdp/SDPLog;->e(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 174
    const-string p1, "Result of token verification : "

    .line 176
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    move-result-object p0

    .line 190
    invoke-static {v1, p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-object v0
.end method
