.class public final Lcom/android/server/oemlock/OemLockService$2;
.super Landroid/service/oemlock/IOemLockService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/oemlock/OemLockService;


# direct methods
.method public constructor <init>(Lcom/android/server/oemlock/OemLockService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/service/oemlock/IOemLockService$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getLockName()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/service/oemlock/IOemLockService$Stub;->getLockName_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/oemlock/OemLockService;->mOemLock:Lcom/android/server/oemlock/OemLock;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/oemlock/OemLock;->getLockName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    .line 18
    .line 19
    return-object p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    throw p0
.end method

.method public final isDeviceOemUnlocked()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/service/oemlock/IOemLockService$Stub;->isDeviceOemUnlocked_enforcePermission()V

    .line 2
    .line 3
    .line 4
    const-string/jumbo p0, "ro.boot.flash.locked"

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string v0, "0"

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    return p0

    .line 24
    :cond_0
    const/4 p0, 0x1

    .line 25
    return p0
.end method

.method public final isOemUnlockAllowed()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/service/oemlock/IOemLockService$Stub;->isOemUnlockAllowed_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/android/server/oemlock/OemLockService;->mOemLock:Lcom/android/server/oemlock/OemLock;

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/android/server/oemlock/OemLock;->isOemUnlockAllowedByCarrier()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    .line 19
    .line 20
    iget-object v2, v2, Lcom/android/server/oemlock/OemLockService;->mOemLock:Lcom/android/server/oemlock/OemLock;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/android/server/oemlock/OemLock;->isOemUnlockAllowedByDevice()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    const/4 v2, 0x0

    .line 33
    :goto_0
    iget-object p0, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    .line 34
    .line 35
    invoke-static {p0, v2}, Lcom/android/server/oemlock/OemLockService;->-$$Nest$msetPersistentDataBlockOemUnlockAllowedBit(Lcom/android/server/oemlock/OemLockService;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    .line 40
    .line 41
    return v2

    .line 42
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 43
    .line 44
    .line 45
    throw p0
.end method

.method public final isOemUnlockAllowedByCarrier()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/service/oemlock/IOemLockService$Stub;->isOemUnlockAllowedByCarrier_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/oemlock/OemLockService;->mOemLock:Lcom/android/server/oemlock/OemLock;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/oemlock/OemLock;->isOemUnlockAllowedByCarrier()Z

    .line 13
    .line 14
    .line 15
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    .line 18
    .line 19
    return p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    throw p0
.end method

.method public final isOemUnlockAllowedByUser()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/service/oemlock/IOemLockService$Stub;->isOemUnlockAllowedByUser_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/oemlock/OemLockService;->mOemLock:Lcom/android/server/oemlock/OemLock;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/oemlock/OemLock;->isOemUnlockAllowedByDevice()Z

    .line 13
    .line 14
    .line 15
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    .line 18
    .line 19
    return p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    throw p0
.end method

.method public final setOemUnlockAllowedByCarrier(Z[B)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/service/oemlock/IOemLockService$Stub;->setOemUnlockAllowedByCarrier_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/android/server/oemlock/OemLockService;->-$$Nest$menforceUserIsAdmin(Lcom/android/server/oemlock/OemLockService;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    :try_start_0
    iget-object p0, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/oemlock/OemLockService;->mOemLock:Lcom/android/server/oemlock/OemLock;

    .line 16
    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/android/server/oemlock/OemLock;->setOemUnlockAllowedByCarrier(Z[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 26
    .line 27
    .line 28
    throw p0
.end method

.method public final setOemUnlockAllowedByUser(Z)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/service/oemlock/IOemLockService$Stub;->setOemUnlockAllowedByUser_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/android/server/oemlock/OemLockService;->-$$Nest$menforceUserIsAdmin(Lcom/android/server/oemlock/OemLockService;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    :try_start_0
    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    .line 21
    .line 22
    iget-object v2, v2, Lcom/android/server/oemlock/OemLockService;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const-string/jumbo v3, "no_factory_reset"

    .line 29
    .line 30
    .line 31
    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 32
    .line 33
    invoke-virtual {v2, v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    xor-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    .line 42
    .line 43
    iget-object v2, v2, Lcom/android/server/oemlock/OemLockService;->mOemLock:Lcom/android/server/oemlock/OemLock;

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/android/server/oemlock/OemLock;->isOemUnlockAllowedByCarrier()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    iget-object v2, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    .line 52
    .line 53
    iget-object v2, v2, Lcom/android/server/oemlock/OemLockService;->mOemLock:Lcom/android/server/oemlock/OemLock;

    .line 54
    .line 55
    invoke-virtual {v2, p1}, Lcom/android/server/oemlock/OemLock;->setOemUnlockAllowedByDevice(Z)V

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/oemlock/OemLockService$2;->this$0:Lcom/android/server/oemlock/OemLockService;

    .line 59
    .line 60
    invoke-static {p0, p1}, Lcom/android/server/oemlock/OemLockService;->-$$Nest$msetPersistentDataBlockOemUnlockAllowedBit(Lcom/android/server/oemlock/OemLockService;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    .line 63
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 70
    .line 71
    const-string p1, "Carrier does not allow OEM unlock"

    .line 72
    .line 73
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p0

    .line 77
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 78
    .line 79
    const-string p1, "Admin does not allow OEM unlock"

    .line 80
    .line 81
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 86
    .line 87
    .line 88
    throw p0
.end method
