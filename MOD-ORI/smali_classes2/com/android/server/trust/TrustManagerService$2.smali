.class public final Lcom/android/server/trust/TrustManagerService$2;
.super Landroid/app/trust/ITrustManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/trust/TrustManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/trust/ITrustManager$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static dumpBool(Z)Ljava/lang/String;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const-string p0, "1"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string p0, "0"

    .line 7
    .line 8
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final clearAllBiometricRecognized(Landroid/hardware/biometrics/BiometricSourceType;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService$2;->enforceReportPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/android/server/trust/TrustManagerService;->mUsersUnlockedByBiometric:Landroid/util/SparseBooleanArray;

    .line 7
    .line 8
    monitor-enter p1

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mUsersUnlockedByBiometric:Landroid/util/SparseBooleanArray;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/android/server/trust/TrustManagerService;->mIsUnlockedByFP:Z

    .line 20
    .line 21
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Lcom/android/server/trust/TrustManagerService$3;

    .line 23
    .line 24
    const/16 p1, 0xe

    .line 25
    .line 26
    const/4 v1, -0x1

    .line 27
    invoke-virtual {p0, p1, v1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    if-ltz p2, :cond_0

    .line 32
    .line 33
    new-instance p1, Landroid/os/Bundle;

    .line 34
    .line 35
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v0, "except"

    .line 39
    .line 40
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string p3, "TrustManagerService"

    .line 6
    .line 7
    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/android/server/SystemService;->isSafeMode()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    const-string p0, "disabled because the system is in safe mode."

    .line 23
    .line 24
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 29
    .line 30
    iget-boolean p3, p1, Lcom/android/server/trust/TrustManagerService;->mTrustAgentsCanRun:Z

    .line 31
    .line 32
    if-nez p3, :cond_2

    .line 33
    .line 34
    const-string p0, "disabled because the third-party apps can\'t run yet."

    .line 35
    .line 36
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    iget-object p1, p1, Lcom/android/server/trust/TrustManagerService;->mUserManager:Landroid/os/UserManager;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iget-object p3, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 47
    .line 48
    iget-object p3, p3, Lcom/android/server/trust/TrustManagerService;->mHandler:Lcom/android/server/trust/TrustManagerService$3;

    .line 49
    .line 50
    new-instance v0, Lcom/android/server/trust/TrustManagerService$2$1;

    .line 51
    .line 52
    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/trust/TrustManagerService$2$1;-><init>(Lcom/android/server/trust/TrustManagerService$2;Ljava/io/PrintWriter;Ljava/util/List;)V

    .line 53
    .line 54
    .line 55
    const-wide/16 p0, 0x5dc

    .line 56
    .line 57
    invoke-virtual {p3, v0, p0, p1}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final enforceReportPermission()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v0, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    .line 6
    .line 7
    const-string/jumbo v1, "reporting trust events"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final isActiveUnlockRunning(I)Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->aggregateIsActiveUnlockRunning(I)Z

    .line 8
    .line 9
    .line 10
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 12
    .line 13
    .line 14
    return p0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public final isDeviceLocked(II)Z
    .locals 7

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    invoke-static {}, Landroid/app/trust/ITrustManager$Stub;->getCallingPid()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {}, Landroid/app/trust/ITrustManager$Stub;->getCallingUid()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const-string v5, "isDeviceLocked"

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x1

    .line 18
    move v2, p1

    .line 19
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    :try_start_0
    iget-object p2, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 28
    .line 29
    iget-object p2, p2, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 30
    .line 31
    invoke-virtual {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-nez p2, :cond_1

    .line 36
    .line 37
    iget-object p2, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 38
    .line 39
    invoke-virtual {p2, p1}, Lcom/android/server/trust/TrustManagerService;->resolveProfileParent(I)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->isDeviceLockedInner(I)Z

    .line 49
    .line 50
    .line 51
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    .line 54
    .line 55
    return p0

    .line 56
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    .line 58
    .line 59
    throw p0
.end method

.method public final isDeviceSecure(II)Z
    .locals 7

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    invoke-static {}, Landroid/app/trust/ITrustManager$Stub;->getCallingPid()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {}, Landroid/app/trust/ITrustManager$Stub;->getCallingUid()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const-string v5, "isDeviceSecure"

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x1

    .line 18
    move v2, p1

    .line 19
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    :try_start_0
    iget-object p2, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 28
    .line 29
    iget-object p2, p2, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 30
    .line 31
    invoke-virtual {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-nez p2, :cond_1

    .line 36
    .line 37
    iget-object p2, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 38
    .line 39
    invoke-virtual {p2, p1}, Lcom/android/server/trust/TrustManagerService;->resolveProfileParent(I)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    .line 51
    .line 52
    .line 53
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 55
    .line 56
    .line 57
    return p0

    .line 58
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 59
    .line 60
    .line 61
    throw p0
.end method

.method public final isInSignificantPlace()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/trust/ITrustManager$Stub;->isInSignificantPlace_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/security/Flags;->significantPlaces()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mSignificantPlaceServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 13
    .line 14
    new-instance v1, Lcom/android/server/trust/TrustManagerService$2$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->runOnBinder(Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 23
    .line 24
    iget-boolean p0, p0, Lcom/android/server/trust/TrustManagerService;->mIsInSignificantPlace:Z

    .line 25
    .line 26
    return p0

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v1, "isInSignificantPlace calling uid : "

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "TrustManagerService"

    .line 46
    .line 47
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    const-string v0, "in_trusted_location"

    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    const/4 v0, 0x1

    .line 66
    if-ne v0, p0, :cond_1

    .line 67
    .line 68
    move v1, v0

    .line 69
    :cond_1
    return v1
.end method

.method public final isTrustUsuallyManaged(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/trust/ITrustManager$Stub;->isTrustUsuallyManaged_enforcePermission()V

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
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->isTrustUsuallyManagedInternal(I)Z

    .line 11
    .line 12
    .line 13
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 15
    .line 16
    .line 17
    return p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method

.method public final registerTrustListener(Landroid/app/trust/ITrustListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "android.permission.TRUST_LISTENER"

    .line 6
    .line 7
    const-string/jumbo v2, "register trust listener"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Lcom/android/server/trust/TrustManagerService$3;

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final reportEnabledTrustAgentsChanged(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService$2;->enforceReportPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Lcom/android/server/trust/TrustManagerService$3;

    .line 7
    .line 8
    const/4 v0, 0x4

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

.method public final reportKeyguardShowingChanged()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService$2;->enforceReportPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mHandler:Lcom/android/server/trust/TrustManagerService$3;

    .line 7
    .line 8
    const/4 v1, 0x6

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mHandler:Lcom/android/server/trust/TrustManagerService$3;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Lcom/android/server/trust/TrustManagerService$3;

    .line 22
    .line 23
    new-instance v0, Lcom/android/server/trust/TrustManagerService$$ExternalSyntheticLambda0;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-direct {v0, v1}, Lcom/android/server/trust/TrustManagerService$$ExternalSyntheticLambda0;-><init>(I)V

    .line 27
    .line 28
    .line 29
    const-wide/16 v1, 0x0

    .line 30
    .line 31
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final reportUnlockAttempt(ZI)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "TrustManagerService"

    .line 18
    .line 19
    const-string/jumbo v2, "reportUnlockAttempt(authenticated=%s, userId=%s)"

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService$2;->enforceReportPermission()V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Lcom/android/server/trust/TrustManagerService$3;

    .line 31
    .line 32
    const/4 v0, 0x3

    .line 33
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final reportUnlockLockout(II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService$2;->enforceReportPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Lcom/android/server/trust/TrustManagerService$3;

    .line 7
    .line 8
    const/16 v0, 0xd

    .line 9
    .line 10
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

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

.method public final reportUserMayRequestUnlock(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService$2;->enforceReportPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Lcom/android/server/trust/TrustManagerService$3;

    .line 7
    .line 8
    const/16 v0, 0x12

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final reportUserRequestedUnlock(IZ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService$2;->enforceReportPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Lcom/android/server/trust/TrustManagerService$3;

    .line 7
    .line 8
    const/16 v0, 0x10

    .line 9
    .line 10
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

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

.method public final setDeviceLockedForUser(IZ)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService$2;->enforceReportPermission()V

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
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 11
    .line 12
    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 19
    .line 20
    iget-object v2, v2, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 21
    .line 22
    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 29
    .line 30
    iget-object v2, v2, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    .line 31
    .line 32
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :try_start_1
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 34
    .line 35
    iget-object v3, v3, Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;

    .line 36
    .line 37
    invoke-virtual {v3, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 38
    .line 39
    .line 40
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41
    :try_start_2
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 42
    .line 43
    invoke-virtual {v2, p1, p2}, Lcom/android/server/trust/TrustManagerService;->notifyKeystoreOfDeviceLockState(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    .line 45
    .line 46
    if-eqz p2, :cond_0

    .line 47
    .line 48
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-interface {p2, p1}, Landroid/app/IActivityManager;->notifyLockedProfile(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_2

    .line 58
    :catch_0
    :cond_0
    :goto_0
    :try_start_4
    new-instance p2, Landroid/content/Intent;

    .line 59
    .line 60
    const-string v2, "android.intent.action.DEVICE_LOCKED_CHANGED"

    .line 61
    .line 62
    invoke-direct {p2, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const/high16 v2, 0x40000000    # 2.0f

    .line 66
    .line 67
    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    const-string v2, "android.intent.extra.user_handle"

    .line 71
    .line 72
    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    iget-object v2, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 76
    .line 77
    iget-object v2, v2, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    .line 78
    .line 79
    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 80
    .line 81
    const-string v4, "android.permission.TRUST_LISTENER"

    .line 82
    .line 83
    const/4 v5, 0x0

    .line 84
    invoke-virtual {v2, p2, v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 85
    .line 86
    .line 87
    iget-object p2, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 88
    .line 89
    invoke-virtual {p2}, Lcom/android/server/trust/TrustManagerService;->getPersonaManagerInternal()Lcom/samsung/android/knox/PersonaManagerInternal;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    if-eqz p2, :cond_1

    .line 94
    .line 95
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService;->getPersonaManagerInternal()Lcom/samsung/android/knox/PersonaManagerInternal;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/PersonaManagerInternal;->onDeviceLockedChanged(I)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_1
    const-string p0, "TrustManagerService"

    .line 106
    .line 107
    const-string/jumbo p1, "onDeviceLockedChanged() - Service is not yet ready..."

    .line 108
    .line 109
    .line 110
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :catchall_1
    move-exception p0

    .line 115
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 116
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 117
    :cond_2
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 122
    .line 123
    .line 124
    throw p0
.end method

.method public final unlockedByBiometricForUser(ILandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService$2;->enforceReportPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mUsersUnlockedByBiometric:Landroid/util/SparseBooleanArray;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/trust/TrustManagerService;->mUsersUnlockedByBiometric:Landroid/util/SparseBooleanArray;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 18
    .line 19
    sget-object v3, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 20
    .line 21
    if-ne p2, v3, :cond_0

    .line 22
    .line 23
    move p2, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p2, 0x0

    .line 26
    :goto_0
    iput-boolean p2, v1, Lcom/android/server/trust/TrustManagerService;->mIsUnlockedByFP:Z

    .line 27
    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    const-string v0, "android.hardware.type.automotive"

    .line 38
    .line 39
    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    xor-int/2addr p2, v2

    .line 44
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mHandler:Lcom/android/server/trust/TrustManagerService$3;

    .line 47
    .line 48
    const/16 v1, 0xe

    .line 49
    .line 50
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Lcom/android/server/trust/TrustManagerService$3;

    .line 60
    .line 61
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const/16 p2, 0x11

    .line 66
    .line 67
    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    throw p0
.end method

.method public final unregisterTrustListener(Landroid/app/trust/ITrustListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "android.permission.TRUST_LISTENER"

    .line 6
    .line 7
    const-string/jumbo v2, "register trust listener"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mHandler:Lcom/android/server/trust/TrustManagerService$3;

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 23
    .line 24
    .line 25
    return-void
.end method
