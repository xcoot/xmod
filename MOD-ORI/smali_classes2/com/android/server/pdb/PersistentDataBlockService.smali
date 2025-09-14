.class public Lcom/android/server/pdb/PersistentDataBlockService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final FRP_CREDENTIAL_RESERVED_SIZE:I = 0x3e8

.field static final FRP_SECRET_MAGIC:[B

.field static final FRP_SECRET_SIZE:I = 0x20

.field static final HEADER_SIZE:I = 0x8

.field static final MAX_DATA_BLOCK_SIZE:I = 0x19000

.field static final MAX_FRP_CREDENTIAL_HANDLE_SIZE:I = 0x3e4

.field static final MAX_TEST_MODE_DATA_SIZE:I = 0x270c

.field static final TEST_MODE_RESERVED_SIZE:I = 0x2710


# instance fields
.field public mAllowedUid:I

.field public mBlockDeviceSize:J

.field public final mContext:Landroid/content/Context;

.field public final mDataBlockFile:Ljava/lang/String;

.field public mFrpActive:Z

.field public final mFrpEnforced:Z

.field public final mFrpSecretFile:Ljava/lang/String;

.field public final mFrpSecretTmpFile:Ljava/lang/String;

.field public final mInitDoneSignal:Ljava/util/concurrent/CountDownLatch;

.field public final mInternalService:Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

.field public final mIsFileBacked:Z

.field public mIsWritable:Z

.field public final mLock:Ljava/lang/Object;

.field public final mService:Lcom/android/server/pdb/PersistentDataBlockService$1;


# direct methods
.method public static -$$Nest$mdoGetMaximumDataBlockSize(Lcom/android/server/pdb/PersistentDataBlockService;)J
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpEnforced:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/android/server/pdb/PersistentDataBlockService;->FRP_SECRET_MAGIC:[B

    .line 6
    .line 7
    array-length v0, v0

    .line 8
    add-int/lit8 v0, v0, 0x20

    .line 9
    .line 10
    int-to-long v0, v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getBlockDeviceSize()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    const-wide/16 v4, 0x2738

    .line 19
    .line 20
    sub-long/2addr v2, v4

    .line 21
    sub-long/2addr v2, v0

    .line 22
    const-wide/16 v0, 0x3e9

    .line 23
    .line 24
    sub-long/2addr v2, v0

    .line 25
    const-wide/32 v0, 0x19000

    .line 26
    .line 27
    .line 28
    cmp-long p0, v2, v0

    .line 29
    .line 30
    if-gtz p0, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move-wide v2, v0

    .line 34
    :goto_1
    return-wide v2
.end method

.method public static -$$Nest$menforceOemUnlockReadPermission(Lcom/android/server/pdb/PersistentDataBlockService;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.READ_OEM_UNLOCK_STATE"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x1

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    const-string v0, "android.permission.OEM_UNLOCK_STATE"

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eq p0, v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 24
    .line 25
    const-string v0, "Can\'t access OEM unlock state. Requires READ_OEM_UNLOCK_STATE or OEM_UNLOCK_STATE permission."

    .line 26
    .line 27
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p0

    .line 31
    :cond_1
    :goto_0
    return-void
.end method

.method public static -$$Nest$menforceUid(Lcom/android/server/pdb/PersistentDataBlockService;I)V
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mAllowedUid:I

    .line 2
    .line 3
    if-eq p1, p0, :cond_1

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 9
    .line 10
    const-string/jumbo v0, "uid "

    .line 11
    .line 12
    .line 13
    const-string v1, " not allowed to access PDB"

    .line 14
    .line 15
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p0

    .line 23
    :cond_1
    :goto_0
    return-void
.end method

.method public static -$$Nest$menforceUserRestriction(Lcom/android/server/pdb/PersistentDataBlockService;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 15
    .line 16
    const-string v0, "OEM unlock is disallowed by user restriction: "

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public static bridge synthetic -$$Nest$mnativeWipe(Lcom/android/server/pdb/PersistentDataBlockService;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/pdb/PersistentDataBlockService;->nativeWipe(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/android/server/pdb/PersistentDataBlockService;->FRP_SECRET_MAGIC:[B

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 1
        -0x26t
        -0x3et
        -0x4t
        -0x33t
        -0x47t
        0x1bt
        0x9t
        -0x78t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mInitDoneSignal:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mAllowedUid:I

    const-wide/16 v2, -0x1

    .line 5
    iput-wide v2, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mBlockDeviceSize:J

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    .line 7
    iput-boolean v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mIsWritable:Z

    .line 8
    new-instance v2, Lcom/android/server/pdb/PersistentDataBlockService$1;

    invoke-direct {v2, p0}, Lcom/android/server/pdb/PersistentDataBlockService$1;-><init>(Lcom/android/server/pdb/PersistentDataBlockService;)V

    iput-object v2, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mService:Lcom/android/server/pdb/PersistentDataBlockService$1;

    .line 9
    new-instance v2, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

    invoke-direct {v2, p0}, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;-><init>(Lcom/android/server/pdb/PersistentDataBlockService;)V

    iput-object v2, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mInternalService:Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

    .line 10
    iput-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    .line 11
    invoke-static {}, Landroid/security/Flags;->frpEnforcement()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpEnforced:Z

    .line 12
    iput-boolean p1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    .line 13
    const-string p1, "/data/system/frp_secret"

    iput-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpSecretFile:Ljava/lang/String;

    .line 14
    const-string p1, "/data/system/frp_secret_tmp"

    iput-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpSecretTmpFile:Ljava/lang/String;

    .line 15
    const-string/jumbo p1, "ro.gsid.image_running"

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 16
    iput-boolean v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mIsFileBacked:Z

    .line 17
    const-string p1, "/data/gsi_persistent_data"

    iput-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    goto :goto_0

    .line 18
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mIsFileBacked:Z

    .line 19
    const-string/jumbo p1, "ro.frp.pst"

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;JZLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 20
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    .line 22
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mInitDoneSignal:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mAllowedUid:I

    const-wide/16 v2, -0x1

    .line 24
    iput-wide v2, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mBlockDeviceSize:J

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    .line 26
    iput-boolean v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mIsWritable:Z

    .line 27
    new-instance v0, Lcom/android/server/pdb/PersistentDataBlockService$1;

    invoke-direct {v0, p0}, Lcom/android/server/pdb/PersistentDataBlockService$1;-><init>(Lcom/android/server/pdb/PersistentDataBlockService;)V

    iput-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mService:Lcom/android/server/pdb/PersistentDataBlockService$1;

    .line 28
    new-instance v0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

    invoke-direct {v0, p0}, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;-><init>(Lcom/android/server/pdb/PersistentDataBlockService;)V

    iput-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mInternalService:Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

    .line 29
    iput-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    .line 30
    iput-boolean p2, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mIsFileBacked:Z

    .line 31
    iput-object p3, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    .line 32
    iput-wide p4, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mBlockDeviceSize:J

    .line 33
    iput-boolean p6, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpEnforced:Z

    .line 34
    iput-boolean p6, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    .line 35
    iput-object p7, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpSecretFile:Ljava/lang/String;

    .line 36
    iput-object p8, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpSecretTmpFile:Ljava/lang/String;

    return-void
.end method

.method private native nativeGetBlockDeviceSize(Ljava/lang/String;)J
.end method

.method private native nativeWipe(Ljava/lang/String;)I
.end method


# virtual methods
.method public activateFrp()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Lcom/android/server/pdb/PersistentDataBlockService;->setOldSettingForBackworkCompatibility(Z)V

    .line 8
    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public automaticallyDeactivateFrpIfPossible()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpSecretFile:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Lcom/android/server/pdb/PersistentDataBlockService;->deactivateFrpWithFileSecret(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return v2

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v1, "PersistentDataBlockService"

    .line 18
    .line 19
    const-string v3, "Failed to deactivate with primary secret file, trying backup."

    .line 20
    .line 21
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpSecretTmpFile:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Lcom/android/server/pdb/PersistentDataBlockService;->deactivateFrpWithFileSecret(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->moveFrpTempFileToPrimary()V

    .line 33
    .line 34
    .line 35
    monitor-exit v0

    .line 36
    return v2

    .line 37
    :cond_1
    const-string v1, "PersistentDataBlockService"

    .line 38
    .line 39
    const-string v3, "Failed to deactivate with backup secret file, trying default secret."

    .line 40
    .line 41
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    const/16 v1, 0x20

    .line 45
    .line 46
    new-array v1, v1, [B

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Lcom/android/server/pdb/PersistentDataBlockService;->deactivateFrp([B)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    monitor-exit v0

    .line 55
    return v2

    .line 56
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->isUpgradingFromPreVRelease()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    const/4 v3, 0x0

    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    const-string v1, "PersistentDataBlockService"

    .line 64
    .line 65
    const-string v4, "Upgrading from Android 14 or lower, defaulting FRP secret"

    .line 66
    .line 67
    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->writeFrpMagicAndDefaultSecret()V

    .line 71
    .line 72
    .line 73
    iput-boolean v3, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    .line 74
    .line 75
    invoke-virtual {p0, v3}, Lcom/android/server/pdb/PersistentDataBlockService;->setOldSettingForBackworkCompatibility(Z)V

    .line 76
    .line 77
    .line 78
    monitor-exit v0

    .line 79
    return v2

    .line 80
    :cond_3
    const-string p0, "PersistentDataBlockService"

    .line 81
    .line 82
    const-string v1, "Did not find valid FRP secret, FRP remains active."

    .line 83
    .line 84
    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    monitor-exit v0

    .line 88
    return v3

    .line 89
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    throw p0
.end method

.method public final computeAndWriteDigestLocked()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/pdb/PersistentDataBlockService;->computeDigestLocked([B)[B

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->enforceFactoryResetProtectionInactive()V

    .line 10
    .line 11
    .line 12
    new-instance v2, Ljava/io/RandomAccessFile;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    .line 15
    .line 16
    const-string/jumbo v3, "rw"

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, p0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 23
    .line 24
    .line 25
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    const/16 v2, 0x20

    .line 27
    .line 28
    :try_start_1
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    invoke-virtual {p0, v0}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    .line 45
    :try_start_2
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 46
    .line 47
    .line 48
    return v0

    .line 49
    :catch_0
    move-exception p0

    .line 50
    goto :goto_1

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    if-eqz p0, :cond_0

    .line 53
    .line 54
    :try_start_3
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_1
    move-exception p0

    .line 59
    :try_start_4
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 63
    :goto_1
    const-string v0, "PersistentDataBlockService"

    .line 64
    .line 65
    const-string v2, "failed to write block checksum"

    .line 66
    .line 67
    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    .line 69
    .line 70
    :cond_1
    return v1
.end method

.method public final computeDigestLocked([B)[B
    .locals 6

    .line 1
    const-string v0, "PersistentDataBlockService"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    .line 5
    .line 6
    new-instance v3, Ljava/io/FileInputStream;

    .line 7
    .line 8
    new-instance v4, Ljava/io/File;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    .line 11
    .line 12
    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 19
    .line 20
    .line 21
    :try_start_1
    const-string p0, "SHA-256"

    .line 22
    .line 23
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 24
    .line 25
    .line 26
    move-result-object p0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    .line 27
    const/16 v3, 0x20

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    :try_start_2
    array-length v4, p1

    .line 32
    if-ne v4, v3, :cond_0

    .line 33
    .line 34
    invoke-virtual {v2, p1}, Ljava/io/DataInputStream;->read([B)I

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_3

    .line 40
    :catch_0
    move-exception p0

    .line 41
    goto :goto_2

    .line 42
    :cond_0
    invoke-virtual {v2, v3}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 43
    .line 44
    .line 45
    :goto_0
    const/16 p1, 0x400

    .line 46
    .line 47
    new-array p1, p1, [B

    .line 48
    .line 49
    const/4 v4, 0x0

    .line 50
    invoke-virtual {p0, p1, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 51
    .line 52
    .line 53
    :goto_1
    invoke-virtual {v2, p1}, Ljava/io/DataInputStream;->read([B)I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    const/4 v5, -0x1

    .line 58
    if-eq v3, v5, :cond_1

    .line 59
    .line 60
    invoke-virtual {p0, p1, v4, v3}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    return-object p0

    .line 72
    :goto_2
    :try_start_3
    const-string p1, "failed to read partition"

    .line 73
    .line 74
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    .line 76
    .line 77
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 78
    .line 79
    .line 80
    return-object v1

    .line 81
    :goto_3
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 82
    .line 83
    .line 84
    throw p0

    .line 85
    :catch_1
    move-exception p0

    .line 86
    const-string p1, "SHA-256 not supported?"

    .line 87
    .line 88
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    .line 90
    .line 91
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 92
    .line 93
    .line 94
    return-object v1

    .line 95
    :catch_2
    move-exception p0

    .line 96
    const-string/jumbo p1, "partition not available?"

    .line 97
    .line 98
    .line 99
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    .line 101
    .line 102
    return-object v1
.end method

.method public final deactivateFrp([B)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_6

    .line 3
    .line 4
    array-length v1, p1

    .line 5
    const/16 v2, 0x20

    .line 6
    .line 7
    if-eq v1, v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_4

    .line 10
    .line 11
    :cond_0
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getFrpSecretMagicOffset()J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    sget-object v5, Lcom/android/server/pdb/PersistentDataBlockService;->FRP_SECRET_MAGIC:[B

    .line 19
    .line 20
    array-length v6, v5

    .line 21
    invoke-virtual {p0, v3, v4, v6}, Lcom/android/server/pdb/PersistentDataBlockService;->readDataBlock(JI)[B

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    if-nez v3, :cond_1

    .line 26
    .line 27
    const-string v3, "PersistentDataBlockService"

    .line 28
    .line 29
    const-string v4, "Failed to read FRP magic region."

    .line 30
    .line 31
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move v3, v0

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-static {v3, v5}, Ljava/util/Arrays;->equals([B[B)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    :goto_0
    if-nez v3, :cond_2

    .line 41
    .line 42
    const-string v3, "PersistentDataBlockService"

    .line 43
    .line 44
    const-string v4, "No FRP secret magic, system must have been upgraded."

    .line 45
    .line 46
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->writeFrpMagicAndDefaultSecret()V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_3

    .line 55
    :cond_2
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getFrpSecretDataOffset()J

    .line 57
    .line 58
    .line 59
    move-result-wide v3

    .line 60
    invoke-virtual {p0, v3, v4, v2}, Lcom/android/server/pdb/PersistentDataBlockService;->readDataBlock(JI)[B

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    if-eqz v1, :cond_5

    .line 65
    .line 66
    array-length v3, v1

    .line 67
    if-eq v3, v2, :cond_3

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_3
    invoke-static {p1, v1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_4

    .line 75
    .line 76
    iput-boolean v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    .line 77
    .line 78
    const-string p1, "PersistentDataBlockService"

    .line 79
    .line 80
    const-string v0, "FRP secret matched, FRP deactivated."

    .line 81
    .line 82
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    iget-boolean p1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    .line 86
    .line 87
    invoke-virtual {p0, p1}, Lcom/android/server/pdb/PersistentDataBlockService;->setOldSettingForBackworkCompatibility(Z)V

    .line 88
    .line 89
    .line 90
    const/4 p0, 0x1

    .line 91
    return p0

    .line 92
    :cond_4
    const-string p0, "PersistentDataBlockService"

    .line 93
    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v2, "FRP deactivation failed with secret "

    .line 97
    .line 98
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-static {}, Ljava/util/HexFormat;->of()Ljava/util/HexFormat;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v2, p1}, Ljava/util/HexFormat;->formatHex([B)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    return v0

    .line 120
    :cond_5
    :goto_2
    const-string p0, "PersistentDataBlockService"

    .line 121
    .line 122
    const-string p1, "Failed to read FRP secret from persistent data partition"

    .line 123
    .line 124
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    return v0

    .line 128
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    throw p0

    .line 130
    :cond_6
    :goto_4
    const-string p0, "PersistentDataBlockService"

    .line 131
    .line 132
    const-string p1, "Attempted to deactivate FRP with a null or incorrectly-sized secret"

    .line 133
    .line 134
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    return v0
.end method

.method public final deactivateFrpWithFileSecret(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-array v1, v0, [Ljava/lang/String;

    .line 3
    .line 4
    invoke-static {p1, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-static {v1}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p0, v1}, Lcom/android/server/pdb/PersistentDataBlockService;->deactivateFrp([B)Z

    .line 13
    .line 14
    .line 15
    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return p0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    const-string v1, "Failed to read FRP secret file: "

    .line 19
    .line 20
    const-string v2, " "

    .line 21
    .line 22
    invoke-static {v1, p1, v2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string p1, "PersistentDataBlockService"

    .line 42
    .line 43
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    return v0
.end method

.method public final doGetOemUnlockEnabled()Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    .line 3
    .line 4
    new-instance v2, Ljava/io/FileInputStream;

    .line 5
    .line 6
    new-instance v3, Ljava/io/File;

    .line 7
    .line 8
    iget-object v4, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    .line 9
    .line 10
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 17
    .line 18
    .line 19
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 22
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getBlockDeviceSize()J

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    const-wide/16 v5, 0x1

    .line 27
    .line 28
    sub-long/2addr v3, v5

    .line 29
    invoke-virtual {v1, v3, v4}, Ljava/io/DataInputStream;->skip(J)J

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_0

    .line 37
    .line 38
    const/4 p0, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move p0, v0

    .line 41
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 43
    .line 44
    .line 45
    return p0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 48
    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 49
    :catchall_1
    move-exception p0

    .line 50
    goto :goto_1

    .line 51
    :catch_0
    move-exception p0

    .line 52
    :try_start_5
    const-string v2, "PersistentDataBlockService"

    .line 53
    .line 54
    const-string/jumbo v3, "unable to access persistent partition"

    .line 55
    .line 56
    .line 57
    invoke-static {v2, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 58
    .line 59
    .line 60
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 61
    .line 62
    .line 63
    return v0

    .line 64
    :goto_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 65
    .line 66
    .line 67
    throw p0

    .line 68
    :catch_1
    const-string p0, "PersistentDataBlockService"

    .line 69
    .line 70
    const-string/jumbo v1, "partition not available"

    .line 71
    .line 72
    .line 73
    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    return v0
.end method

.method public final doSetOemUnlockEnabledLocked(Z)V
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->enforceFactoryResetProtectionInactive()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    .line 7
    .line 8
    const-string/jumbo v2, "rw"

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 15
    .line 16
    .line 17
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getBlockDeviceSize()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    const-wide/16 v3, 0x1

    .line 23
    .line 24
    sub-long/2addr v1, v3

    .line 25
    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 43
    .line 44
    .line 45
    :try_start_2
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lcom/android/server/pdb/PersistentDataBlockService;->setOemUnlockEnabledProperty(Z)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    goto :goto_2

    .line 54
    :catch_0
    move-exception v0

    .line 55
    goto :goto_1

    .line 56
    :catchall_1
    move-exception v1

    .line 57
    if-eqz v0, :cond_0

    .line 58
    .line 59
    :try_start_3
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_2
    move-exception v0

    .line 64
    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 68
    :goto_1
    :try_start_5
    const-string v1, "PersistentDataBlockService"

    .line 69
    .line 70
    const-string/jumbo v2, "unable to access persistent partition"

    .line 71
    .line 72
    .line 73
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Lcom/android/server/pdb/PersistentDataBlockService;->setOemUnlockEnabledProperty(Z)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/server/pdb/PersistentDataBlockService;->setOemUnlockEnabledProperty(Z)V

    .line 81
    .line 82
    .line 83
    throw v0
.end method

.method public final enforceChecksumValidity()Z
    .locals 3

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/pdb/PersistentDataBlockService;->computeDigestLocked([B)[B

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    monitor-exit v1

    .line 22
    const/4 p0, 0x1

    .line 23
    return p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const-string v0, "PersistentDataBlockService"

    .line 27
    .line 28
    const-string v2, "Formatting FRP partition..."

    .line 29
    .line 30
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, v0}, Lcom/android/server/pdb/PersistentDataBlockService;->formatPartitionLocked(Z)V

    .line 35
    .line 36
    .line 37
    monitor-exit v1

    .line 38
    return v0

    .line 39
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0
.end method

.method public final enforceFactoryResetProtectionInactive()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpEnforced:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->isFrpActive()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string p0, "PersistentDataBlockService"

    .line 13
    .line 14
    const-string v0, "Attempt to update PDB was blocked because FRP is active."

    .line 15
    .line 16
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    new-instance p0, Ljava/lang/SecurityException;

    .line 20
    .line 21
    const-string v0, "FRP is active"

    .line 22
    .line 23
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p0

    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method public formatPartitionLocked(Z)V
    .locals 9

    .line 1
    const-string v0, "PersistentDataBlockService"

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    .line 6
    .line 7
    const-string/jumbo v3, "rw"

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 14
    .line 15
    .line 16
    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    const/16 v2, 0x28

    .line 18
    .line 19
    :try_start_1
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const/16 v3, 0x20

    .line 24
    .line 25
    new-array v4, v3, [B

    .line 26
    .line 27
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 28
    .line 29
    .line 30
    const v4, 0x19901873

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 34
    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 44
    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    invoke-virtual {v1, v2}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getBlockDeviceSize()J

    .line 51
    .line 52
    .line 53
    move-result-wide v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    long-to-int v5, v5

    .line 55
    iget-boolean v6, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpEnforced:Z

    .line 56
    .line 57
    if-eqz v6, :cond_0

    .line 58
    .line 59
    add-int/lit16 v5, v5, -0x2738

    .line 60
    .line 61
    :try_start_2
    sget-object v7, Lcom/android/server/pdb/PersistentDataBlockService;->FRP_SECRET_MAGIC:[B

    .line 62
    .line 63
    array-length v7, v7

    .line 64
    sub-int/2addr v5, v7

    .line 65
    add-int/lit16 v5, v5, -0x409

    .line 66
    .line 67
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto :goto_1

    .line 74
    :cond_0
    add-int/lit16 v5, v5, -0x2b21

    .line 75
    .line 76
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    :goto_0
    invoke-virtual {v1, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v2}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 84
    .line 85
    .line 86
    if-eqz v6, :cond_1

    .line 87
    .line 88
    const-string v5, "Writing FRP secret magic"

    .line 89
    .line 90
    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    sget-object v5, Lcom/android/server/pdb/PersistentDataBlockService;->FRP_SECRET_MAGIC:[B

    .line 94
    .line 95
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-virtual {v1, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 100
    .line 101
    .line 102
    const-string v5, "Writing default FRP secret"

    .line 103
    .line 104
    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-virtual {v1, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v2}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 115
    .line 116
    .line 117
    iput-boolean v4, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    .line 118
    .line 119
    :cond_1
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->position()J

    .line 120
    .line 121
    .line 122
    move-result-wide v5

    .line 123
    const-wide/16 v7, 0x2710

    .line 124
    .line 125
    add-long/2addr v5, v7

    .line 126
    invoke-virtual {v1, v5, v6}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 127
    .line 128
    .line 129
    const/16 v3, 0x3e8

    .line 130
    .line 131
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    invoke-virtual {v1, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v2}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 139
    .line 140
    .line 141
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v2}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    .line 156
    .line 157
    :try_start_3
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, p1}, Lcom/android/server/pdb/PersistentDataBlockService;->doSetOemUnlockEnabledLocked(Z)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->computeAndWriteDigestLocked()Z

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :catch_0
    move-exception p0

    .line 168
    goto :goto_3

    .line 169
    :goto_1
    if-eqz v1, :cond_2

    .line 170
    .line 171
    :try_start_4
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 172
    .line 173
    .line 174
    goto :goto_2

    .line 175
    :catchall_1
    move-exception p1

    .line 176
    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 177
    .line 178
    .line 179
    :cond_2
    :goto_2
    throw p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 180
    :goto_3
    const-string p1, "failed to format block"

    .line 181
    .line 182
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    .line 184
    .line 185
    return-void
.end method

.method public getBlockDeviceSize()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mBlockDeviceSize:J

    .line 5
    .line 6
    const-wide/16 v3, -0x1

    .line 7
    .line 8
    cmp-long v1, v1, v3

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    iget-boolean v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mIsFileBacked:Z

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const-wide/32 v1, 0x19000

    .line 17
    .line 18
    .line 19
    iput-wide v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mBlockDeviceSize:J

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    .line 25
    .line 26
    invoke-direct {p0, v1}, Lcom/android/server/pdb/PersistentDataBlockService;->nativeGetBlockDeviceSize(Ljava/lang/String;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    iput-wide v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mBlockDeviceSize:J

    .line 31
    .line 32
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    iget-wide v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mBlockDeviceSize:J

    .line 34
    .line 35
    return-wide v0

    .line 36
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    throw p0
.end method

.method public getFrpCredentialDataOffset()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getOemUnlockDataOffset()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x3e8

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    return-wide v0
.end method

.method public getFrpSecretDataOffset()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getTestHarnessModeDataOffset()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x20

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    return-wide v0
.end method

.method public getFrpSecretMagicOffset()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getFrpSecretDataOffset()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-object p0, Lcom/android/server/pdb/PersistentDataBlockService;->FRP_SECRET_MAGIC:[B

    .line 6
    .line 7
    array-length p0, p0

    .line 8
    int-to-long v2, p0

    .line 9
    sub-long/2addr v0, v2

    .line 10
    return-wide v0
.end method

.method public getInterfaceForTesting()Landroid/service/persistentdata/IPersistentDataBlockService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mService:Lcom/android/server/pdb/PersistentDataBlockService$1;

    .line 2
    .line 3
    invoke-static {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/persistentdata/IPersistentDataBlockService;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getInternalInterfaceForTesting()Lcom/android/server/pdb/PersistentDataBlockManagerInternal;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mInternalService:Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

    .line 2
    .line 3
    return-object p0
.end method

.method public getMaximumFrpDataSize()I
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpEnforced:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/android/server/pdb/PersistentDataBlockService;->FRP_SECRET_MAGIC:[B

    .line 6
    .line 7
    array-length v0, v0

    .line 8
    add-int/lit8 v0, v0, 0x20

    .line 9
    .line 10
    int-to-long v0, v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getTestHarnessModeDataOffset()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    const-wide/16 v4, 0x28

    .line 19
    .line 20
    sub-long/2addr v2, v4

    .line 21
    sub-long/2addr v2, v0

    .line 22
    long-to-int p0, v2

    .line 23
    return p0
.end method

.method public getOemUnlockDataOffset()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getBlockDeviceSize()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x1

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    return-wide v0
.end method

.method public getTestHarnessModeDataOffset()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getFrpCredentialDataOffset()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x2710

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    return-wide v0
.end method

.method public isFrpActive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public isUpgradingFromPreVRelease()Z
    .locals 2

    .line 1
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    const-string p0, "PersistentDataBlockService"

    .line 13
    .line 14
    const-string v1, "Unable to retrieve PackageManagerInternal"

    .line 15
    .line 16
    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return v0

    .line 20
    :cond_0
    check-cast p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 23
    .line 24
    iget p0, p0, Lcom/android/server/pm/PackageManagerService;->mPriorSdkVersion:I

    .line 25
    .line 26
    const/4 v1, -0x1

    .line 27
    if-eq p0, v1, :cond_1

    .line 28
    .line 29
    const/16 v1, 0x23

    .line 30
    .line 31
    if-ge p0, v1, :cond_1

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    :cond_1
    return v0
.end method

.method public final moveFrpTempFileToPrimary()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpSecretTmpFile:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpSecretFile:Ljava/lang/String;

    .line 11
    .line 12
    new-array v2, v1, [Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {p0, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const/4 v2, 0x1

    .line 19
    new-array v2, v2, [Ljava/nio/file/CopyOption;

    .line 20
    .line 21
    sget-object v3, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    .line 22
    .line 23
    aput-object v3, v2, v1

    .line 24
    .line 25
    invoke-static {v0, p0, v2}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p0

    .line 30
    const-string v0, "PersistentDataBlockService"

    .line 31
    .line 32
    const-string v1, "Error moving FRP backup file to primary (ignored)"

    .line 33
    .line 34
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method public final onBootPhase(I)V
    .locals 4

    .line 1
    const/16 v0, 0x1f4

    .line 2
    .line 3
    if-ne p1, v0, :cond_3

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mInitDoneSignal:Ljava/util/concurrent/CountDownLatch;

    .line 6
    .line 7
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    .line 9
    const-wide/16 v2, 0xa

    .line 10
    .line 11
    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 12
    .line 13
    .line 14
    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getMainUserId()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-gez v0, :cond_0

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const v2, 0x1040390

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_1

    .line 50
    .line 51
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const/high16 v3, 0x100000

    .line 58
    .line 59
    invoke-virtual {v2, v1, v3, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    .line 60
    .line 61
    .line 62
    move-result v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string/jumbo v3, "not able to find package "

    .line 68
    .line 69
    .line 70
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const-string v2, "PersistentDataBlockService"

    .line 81
    .line 82
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    .line 84
    .line 85
    :cond_1
    const/4 v0, -0x1

    .line 86
    :goto_0
    iput v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mAllowedUid:I

    .line 87
    .line 88
    const-class v0, Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    .line 89
    .line 90
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mInternalService:Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

    .line 91
    .line 92
    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    :try_start_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 97
    .line 98
    const-string p1, "Service PersistentDataBlockService init timeout"

    .line 99
    .line 100
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 104
    :catch_1
    move-exception p0

    .line 105
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 110
    .line 111
    .line 112
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 113
    .line 114
    const-string v0, "Service PersistentDataBlockService init interrupted"

    .line 115
    .line 116
    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    .line 118
    .line 119
    throw p1

    .line 120
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    .line 121
    .line 122
    .line 123
    return-void
.end method

.method public final onStart()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/pdb/PersistentDataBlockService$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/pdb/PersistentDataBlockService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pdb/PersistentDataBlockService;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "PersistentDataBlockService.onStart"

    .line 7
    .line 8
    invoke-static {p0, v0}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public readDataBlock(JI)[B
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    .line 2
    .line 3
    new-instance v1, Ljava/io/FileInputStream;

    .line 4
    .line 5
    new-instance v2, Ljava/io/File;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    :try_start_1
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 21
    :try_start_2
    invoke-virtual {v0, p1, p2}, Ljava/io/DataInputStream;->skip(J)J

    .line 22
    .line 23
    .line 24
    new-array p1, p3, [B

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 27
    .line 28
    .line 29
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 31
    .line 32
    .line 33
    return-object p1

    .line 34
    :catch_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 38
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 39
    :catchall_1
    move-exception p0

    .line 40
    :try_start_6
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_2
    move-exception p1

    .line 45
    :try_start_7
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    throw p0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 49
    :goto_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string/jumbo p2, "persistent partition not readable"

    .line 52
    .line 53
    .line 54
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    throw p1
.end method

.method public setAllowedUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mAllowedUid:I

    .line 2
    .line 3
    return-void
.end method

.method public final setOemUnlockEnabledProperty(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string p1, "1"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string p1, "0"

    .line 7
    .line 8
    :goto_0
    const-string/jumbo v0, "sys.oem_unlock_allowed"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pdb/PersistentDataBlockService;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setOldSettingForBackworkCompatibility(Z)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string/jumbo v2, "secure_frp_mode"

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public signalInitDone()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mInitDoneSignal:Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final writeFrpMagicAndDefaultSecret()V
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    .line 4
    .line 5
    const-string/jumbo v2, "rw"

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 12
    .line 13
    .line 14
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18
    :try_start_2
    const-string v2, "PersistentDataBlockService"

    .line 19
    .line 20
    const-string v3, "Writing default FRP secret"

    .line 21
    .line 22
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getFrpSecretDataOffset()J

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 30
    .line 31
    .line 32
    const/16 v2, 0x20

    .line 33
    .line 34
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 39
    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 43
    .line 44
    .line 45
    const-string v3, "PersistentDataBlockService"

    .line 46
    .line 47
    const-string v4, "Writing FRP secret magic"

    .line 48
    .line 49
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getFrpSecretMagicOffset()J

    .line 53
    .line 54
    .line 55
    move-result-wide v3

    .line 56
    invoke-virtual {v0, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 57
    .line 58
    .line 59
    sget-object v3, Lcom/android/server/pdb/PersistentDataBlockService;->FRP_SECRET_MAGIC:[B

    .line 60
    .line 61
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v0, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 69
    .line 70
    .line 71
    const/4 v2, 0x0

    .line 72
    iput-boolean v2, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    .line 73
    .line 74
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    :try_start_3
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :catch_0
    move-exception v0

    .line 80
    goto :goto_1

    .line 81
    :catchall_0
    move-exception v2

    .line 82
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 83
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 84
    :catchall_1
    move-exception v1

    .line 85
    if-eqz v0, :cond_0

    .line 86
    .line 87
    :try_start_6
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catchall_2
    move-exception v0

    .line 92
    :try_start_7
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    :cond_0
    :goto_0
    throw v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 96
    :goto_1
    const-string v1, "PersistentDataBlockService"

    .line 97
    .line 98
    const-string v2, "Failed to write FRP magic and default secret"

    .line 99
    .line 100
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    .line 102
    .line 103
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->computeAndWriteDigestLocked()Z

    .line 104
    .line 105
    .line 106
    return-void
.end method
