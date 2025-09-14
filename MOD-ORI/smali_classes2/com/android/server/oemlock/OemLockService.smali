.class public final Lcom/android/server/oemlock/OemLockService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mOemLock:Lcom/android/server/oemlock/OemLock;

.field public final mService:Lcom/android/server/oemlock/OemLockService$2;

.field public final mUserRestrictionsListener:Lcom/android/server/oemlock/OemLockService$1;


# direct methods
.method public static -$$Nest$menforceUserIsAdmin(Lcom/android/server/oemlock/OemLockService;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/oemlock/OemLockService;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserAdmin(I)Z

    .line 19
    .line 20
    .line 21
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 29
    .line 30
    const-string v0, "Must be an admin user"

    .line 31
    .line 32
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    .line 39
    .line 40
    throw p0
.end method

.method public static -$$Nest$msetPersistentDataBlockOemUnlockAllowedBit(Lcom/android/server/oemlock/OemLockService;Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/oemlock/OemLockService;->mOemLock:Lcom/android/server/oemlock/OemLock;

    .line 15
    .line 16
    instance-of p0, p0, Lcom/android/server/oemlock/PersistentDataBlockLock;

    .line 17
    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    const-string p0, "OemLock"

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "Update OEM Unlock bit in pst partition to "

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    check-cast v0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

    .line 40
    .line 41
    iget-object p0, v0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    .line 44
    .line 45
    monitor-enter p0

    .line 46
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 47
    .line 48
    invoke-virtual {v1, p1}, Lcom/android/server/pdb/PersistentDataBlockService;->doSetOemUnlockEnabledLocked(Z)V

    .line 49
    .line 50
    .line 51
    iget-object p1, v0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/android/server/pdb/PersistentDataBlockService;->computeAndWriteDigestLocked()Z

    .line 54
    .line 55
    .line 56
    monitor-exit p0

    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw p1

    .line 61
    :cond_0
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/server/oemlock/VendorLockAidl;->getOemLockHalService()Landroid/hardware/oemlock/IOemLock;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "OemLock"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "Using vendor lock via the HAL(aidl)"

    .line 10
    .line 11
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/android/server/oemlock/VendorLockAidl;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/android/server/oemlock/VendorLockAidl;->getOemLockHalService()Landroid/hardware/oemlock/IOemLock;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, v0, Lcom/android/server/oemlock/VendorLockAidl;->mOemLock:Landroid/hardware/oemlock/IOemLock;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {}, Lcom/android/server/oemlock/VendorLockHidl;->getOemLockHalService()Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    const-string v0, "Using vendor lock via the HAL(hidl)"

    .line 33
    .line 34
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    new-instance v0, Lcom/android/server/oemlock/VendorLockHidl;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lcom/android/server/oemlock/VendorLockHidl;->getOemLockHalService()Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iput-object v1, v0, Lcom/android/server/oemlock/VendorLockHidl;->mOemLock:Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const-string v0, "Using persistent data block based lock"

    .line 50
    .line 51
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    new-instance v0, Lcom/android/server/oemlock/PersistentDataBlockLock;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object p1, v0, Lcom/android/server/oemlock/PersistentDataBlockLock;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 62
    .line 63
    .line 64
    new-instance v1, Lcom/android/server/oemlock/OemLockService$1;

    .line 65
    .line 66
    invoke-direct {v1, p0}, Lcom/android/server/oemlock/OemLockService$1;-><init>(Lcom/android/server/oemlock/OemLockService;)V

    .line 67
    .line 68
    .line 69
    new-instance v2, Lcom/android/server/oemlock/OemLockService$2;

    .line 70
    .line 71
    invoke-direct {v2, p0}, Lcom/android/server/oemlock/OemLockService$2;-><init>(Lcom/android/server/oemlock/OemLockService;)V

    .line 72
    .line 73
    .line 74
    iput-object v2, p0, Lcom/android/server/oemlock/OemLockService;->mService:Lcom/android/server/oemlock/OemLockService$2;

    .line 75
    .line 76
    iput-object p1, p0, Lcom/android/server/oemlock/OemLockService;->mContext:Landroid/content/Context;

    .line 77
    .line 78
    iput-object v0, p0, Lcom/android/server/oemlock/OemLockService;->mOemLock:Lcom/android/server/oemlock/OemLock;

    .line 79
    .line 80
    const-class p0, Lcom/android/server/pm/UserManagerInternal;

    .line 81
    .line 82
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    check-cast p0, Lcom/android/server/pm/UserManagerInternal;

    .line 87
    .line 88
    invoke-virtual {p0, v1}, Lcom/android/server/pm/UserManagerInternal;->addUserRestrictionsListener(Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public static isHalPresent()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/server/oemlock/VendorLockHidl;->getOemLockHalService()Landroid/hardware/oemlock/V1_0/IOemLock$Proxy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/oemlock/VendorLockAidl;->getOemLockHalService()Landroid/hardware/oemlock/IOemLock;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method


# virtual methods
.method public final onStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/oemlock/OemLockService;->mService:Lcom/android/server/oemlock/OemLockService$2;

    .line 2
    .line 3
    const-string/jumbo v1, "oem_lock"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
