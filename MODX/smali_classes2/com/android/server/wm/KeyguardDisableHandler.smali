.class public final Lcom/android/server/wm/KeyguardDisableHandler;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAppTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

.field public mCurrentUser:I

.field public final mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

.field public final mSystemTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/KeyguardDisableHandler$Injector;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCurrentUser:I

    .line 6
    .line 7
    new-instance v0, Lcom/android/server/wm/KeyguardDisableHandler$1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/android/server/wm/KeyguardDisableHandler$1;-><init>(Lcom/android/server/wm/KeyguardDisableHandler;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

    .line 13
    .line 14
    new-instance p1, Lcom/android/server/utils/UserTokenWatcher;

    .line 15
    .line 16
    invoke-direct {p1, v0, p2}, Lcom/android/server/utils/UserTokenWatcher;-><init>(Lcom/android/server/wm/KeyguardDisableHandler$1;Landroid/os/Handler;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mAppTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    .line 20
    .line 21
    new-instance p1, Lcom/android/server/utils/UserTokenWatcher;

    .line 22
    .line 23
    invoke-direct {p1, v0, p2}, Lcom/android/server/utils/UserTokenWatcher;-><init>(Lcom/android/server/wm/KeyguardDisableHandler$1;Landroid/os/Handler;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mSystemTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final disableKeyguard(ILandroid/os/IBinder;Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/os/Process;->isApplicationUid(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mAppTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/16 v0, 0x3e8

    .line 11
    .line 12
    if-ne p1, v0, :cond_2

    .line 13
    .line 14
    instance-of p1, p2, Lcom/android/server/wm/LockTaskController$LockTaskToken;

    .line 15
    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mSystemTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    .line 19
    .line 20
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

    .line 21
    .line 22
    check-cast p0, Lcom/android/server/wm/KeyguardDisableHandler$2;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/wm/KeyguardDisableHandler$2;->val$userManager:Lcom/android/server/pm/UserManagerInternal;

    .line 25
    .line 26
    invoke-virtual {p0, p4}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    iget-object p4, p1, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    .line 31
    .line 32
    monitor-enter p4

    .line 33
    :try_start_0
    iget-object v0, p1, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/os/TokenWatcher;

    .line 40
    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    new-instance v0, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;

    .line 44
    .line 45
    iget-object v1, p1, Lcom/android/server/utils/UserTokenWatcher;->mHandler:Landroid/os/Handler;

    .line 46
    .line 47
    iget-object v2, p1, Lcom/android/server/utils/UserTokenWatcher;->mTag:Ljava/lang/String;

    .line 48
    .line 49
    invoke-direct {v0, p1, p0, v1, v2}, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;-><init>(Lcom/android/server/utils/UserTokenWatcher;ILandroid/os/Handler;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p1, Lcom/android/server/utils/UserTokenWatcher;->mWatchers:Landroid/util/SparseArray;

    .line 53
    .line 54
    invoke-virtual {p1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    goto :goto_2

    .line 60
    :cond_1
    :goto_1
    invoke-virtual {v0, p2, p3}, Landroid/os/TokenWatcher;->acquire(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    monitor-exit p4

    .line 64
    return-void

    .line 65
    :goto_2
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p0

    .line 67
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 68
    .line 69
    const-string p1, "Only apps can use the KeyguardLock API"

    .line 70
    .line 71
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p0
.end method

.method public final updateKeyguardEnabled(I)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardDisableHandler;->updateKeyguardEnabledLocked(I)V

    .line 3
    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    throw p1
.end method

.method public final updateKeyguardEnabledLocked(I)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCurrentUser:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    if-ne p1, v1, :cond_6

    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

    .line 9
    .line 10
    move-object v1, p1

    .line 11
    check-cast v1, Lcom/android/server/wm/KeyguardDisableHandler$2;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/app/admin/DevicePolicyCache;->getInstance()Landroid/app/admin/DevicePolicyCache;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2, v0}, Landroid/app/admin/DevicePolicyCache;->getPasswordQuality(I)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v4, 0x1

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    move v2, v4

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move v2, v3

    .line 31
    :goto_0
    iget v5, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCurrentUser:I

    .line 32
    .line 33
    iget-object v1, v1, Lcom/android/server/wm/KeyguardDisableHandler$2;->val$policy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 34
    .line 35
    check-cast v1, Lcom/android/server/policy/PhoneWindowManager;

    .line 36
    .line 37
    invoke-virtual {v1, v5}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure(I)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v2, :cond_2

    .line 42
    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    move v1, v4

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move v1, v3

    .line 48
    :goto_1
    xor-int/2addr v2, v4

    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    iget-object v1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mAppTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Lcom/android/server/utils/UserTokenWatcher;->isAcquired(I)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_4

    .line 58
    .line 59
    :cond_3
    if-eqz v2, :cond_5

    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mSystemTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Lcom/android/server/utils/UserTokenWatcher;->isAcquired(I)Z

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    if-eqz p0, :cond_5

    .line 68
    .line 69
    :cond_4
    move v3, v4

    .line 70
    :cond_5
    xor-int/lit8 p0, v3, 0x1

    .line 71
    .line 72
    check-cast p1, Lcom/android/server/wm/KeyguardDisableHandler$2;

    .line 73
    .line 74
    iget-object p1, p1, Lcom/android/server/wm/KeyguardDisableHandler$2;->val$policy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 75
    .line 76
    check-cast p1, Lcom/android/server/policy/PhoneWindowManager;

    .line 77
    .line 78
    invoke-virtual {p1, p0}, Lcom/android/server/policy/PhoneWindowManager;->enableKeyguard(Z)V

    .line 79
    .line 80
    .line 81
    :cond_6
    return-void
.end method
