.class public Lcom/android/server/VpnManagerService;
.super Landroid/net/IVpnManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DBG:Z


# instance fields
.field public final knoxVpnLock:Ljava/lang/Object;

.field public final mCm:Landroid/net/ConnectivityManager;

.field public final mContext:Landroid/content/Context;

.field public mDefaultNetworkCallback:Lcom/android/server/VpnManagerService$NetworkCallback;

.field public final mDeps:Lcom/android/server/VpnManagerService$Dependencies;

.field public final mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

.field public final mHandler:Landroid/os/Handler;

.field protected final mHandlerThread:Landroid/os/HandlerThread;

.field public final mIntentReceiver:Lcom/android/server/VpnManagerService$1;

.field public mLockdownEnabled:Z

.field public mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

.field public final mMainUserId:I

.field public final mNMS:Landroid/os/INetworkManagementService;

.field public final mNetd:Landroid/net/INetd;

.field public mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserPresentReceiver:Lcom/android/server/VpnManagerService$1;

.field public final mVpnProfileStore:Lcom/android/server/connectivity/VpnProfileStore;

.field protected final mVpns:Landroid/util/SparseArray;


# direct methods
.method public static -$$Nest$mensureRunningOnHandlerThread(Lcom/android/server/VpnManagerService;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-ne p0, v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v1, "Not running on VpnManagerService thread: "

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0
.end method

.method public static -$$Nest$monPackageAdded(Lcom/android/server/VpnManagerService;Ljava/lang/String;IZ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    if-gez p2, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lcom/android/server/connectivity/Vpn;

    .line 27
    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    if-nez p3, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->refreshPlatformVpnAppExclusionList()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    monitor-exit v0

    .line 39
    goto :goto_3

    .line 40
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0

    .line 42
    :cond_2
    :goto_2
    const-string p0, "VpnManagerService"

    .line 43
    .line 44
    new-instance p3, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v0, "Invalid package in onPackageAdded: "

    .line 47
    .line 48
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p1, " | "

    .line 55
    .line 56
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    :goto_3
    return-void
.end method

.method public static -$$Nest$monPackageRemoved(Lcom/android/server/VpnManagerService;Ljava/lang/String;IZ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "Removing always-on VPN package "

    .line 5
    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_4

    .line 11
    .line 12
    if-gez p2, :cond_0

    .line 13
    .line 14
    goto :goto_3

    .line 15
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 20
    .line 21
    monitor-enter v1

    .line 22
    :try_start_0
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Lcom/android/server/connectivity/Vpn;

    .line 29
    .line 30
    if-eqz p0, :cond_3

    .line 31
    .line 32
    if-eqz p3, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    invoke-static {p3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result p3

    .line 43
    if-eqz p3, :cond_2

    .line 44
    .line 45
    new-instance p3, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p1, " for user "

    .line 54
    .line 55
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const-string p2, "VpnManagerService"

    .line 66
    .line 67
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    const/4 p1, 0x0

    .line 71
    const/4 p2, 0x0

    .line 72
    invoke-virtual {p0, p2, p2, p1}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;Ljava/util/List;Z)Z

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    goto :goto_2

    .line 78
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->refreshPlatformVpnAppExclusionList()V

    .line 79
    .line 80
    .line 81
    monitor-exit v1

    .line 82
    goto :goto_4

    .line 83
    :cond_3
    :goto_1
    monitor-exit v1

    .line 84
    goto :goto_4

    .line 85
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    throw p0

    .line 87
    :cond_4
    :goto_3
    const-string p0, "VpnManagerService"

    .line 88
    .line 89
    new-instance p3, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v0, "Invalid package in onPackageRemoved: "

    .line 92
    .line 93
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string p1, " | "

    .line 100
    .line 101
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    :goto_4
    return-void
.end method

.method public static -$$Nest$monPackageReplaced(Lcom/android/server/VpnManagerService;Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "Restarting always-on VPN package "

    .line 5
    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_3

    .line 11
    .line 12
    if-gez p2, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 20
    .line 21
    monitor-enter v1

    .line 22
    :try_start_0
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Lcom/android/server/connectivity/Vpn;

    .line 29
    .line 30
    if-nez p0, :cond_1

    .line 31
    .line 32
    monitor-exit v1

    .line 33
    goto :goto_2

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p1, " for user "

    .line 55
    .line 56
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const-string p2, "VpnManagerService"

    .line 67
    .line 68
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->startAlwaysOnVpn()Z

    .line 72
    .line 73
    .line 74
    :cond_2
    monitor-exit v1

    .line 75
    goto :goto_2

    .line 76
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    throw p0

    .line 78
    :cond_3
    :goto_1
    const-string p0, "VpnManagerService"

    .line 79
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v1, "Invalid package in onPackageReplaced: "

    .line 83
    .line 84
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string p1, " | "

    .line 91
    .line 92
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    :goto_2
    return-void
.end method

.method public static -$$Nest$monUserAdded(Lcom/android/server/VpnManagerService;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_0

    .line 12
    .line 13
    iget-object v3, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Lcom/android/server/connectivity/Vpn;

    .line 20
    .line 21
    invoke-virtual {v3, p1}, Lcom/android/server/connectivity/Vpn;->onUserAdded(I)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method

.method public static -$$Nest$monUserRemoved(Lcom/android/server/VpnManagerService;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_0

    .line 12
    .line 13
    iget-object v3, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Lcom/android/server/connectivity/Vpn;

    .line 20
    .line 21
    invoke-virtual {v3, p1}, Lcom/android/server/connectivity/Vpn;->onUserRemoved(I)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method

.method public static -$$Nest$monUserUnlocked(Lcom/android/server/VpnManagerService;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/server/VpnManagerService;->mMainUserId:I

    .line 5
    .line 6
    if-ne p1, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->isLockdownVpnEnabled()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->updateLockdownVpn()Z

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/VpnManagerService;->startAlwaysOnVpn(I)Z

    .line 21
    .line 22
    .line 23
    :goto_0
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/VpnManagerService;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput-boolean v0, Lcom/android/server/VpnManagerService;->DBG:Z

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/VpnManagerService$Dependencies;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Landroid/net/IVpnManager$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance v2, Lcom/android/server/VpnManagerService$1;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {v2, p0, v0}, Lcom/android/server/VpnManagerService$1;-><init>(Lcom/android/server/VpnManagerService;I)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lcom/android/server/VpnManagerService$1;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-direct {v0, p0, v1}, Lcom/android/server/VpnManagerService$1;-><init>(Lcom/android/server/VpnManagerService;I)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/Object;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/android/server/VpnManagerService;->knoxVpnLock:Ljava/lang/Object;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    iput-object v1, p0, Lcom/android/server/VpnManagerService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 39
    .line 40
    iput-object v1, p0, Lcom/android/server/VpnManagerService;->mDefaultNetworkCallback:Lcom/android/server/VpnManagerService$NetworkCallback;

    .line 41
    .line 42
    const-string v3, "VPN_MANAGER"

    .line 43
    .line 44
    invoke-virtual {p1, v3}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    iput-object p2, p0, Lcom/android/server/VpnManagerService;->mDeps:Lcom/android/server/VpnManagerService$Dependencies;

    .line 51
    .line 52
    new-instance p2, Landroid/os/HandlerThread;

    .line 53
    .line 54
    const-string v7, "VpnManagerService"

    .line 55
    .line 56
    invoke-direct {p2, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iput-object p2, p0, Lcom/android/server/VpnManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 60
    .line 61
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    iput-object v5, p0, Lcom/android/server/VpnManagerService;->mHandler:Landroid/os/Handler;

    .line 69
    .line 70
    new-instance p2, Lcom/android/server/connectivity/VpnProfileStore;

    .line 71
    .line 72
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object p2, p0, Lcom/android/server/VpnManagerService;->mVpnProfileStore:Lcom/android/server/connectivity/VpnProfileStore;

    .line 76
    .line 77
    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 78
    .line 79
    const/4 v3, 0x0

    .line 80
    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    const-class v4, Landroid/net/ConnectivityManager;

    .line 85
    .line 86
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    check-cast v4, Landroid/net/ConnectivityManager;

    .line 91
    .line 92
    iput-object v4, p0, Lcom/android/server/VpnManagerService;->mCm:Landroid/net/ConnectivityManager;

    .line 93
    .line 94
    const-string/jumbo v4, "network_management"

    .line 95
    .line 96
    .line 97
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-static {v4}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    iput-object v4, p0, Lcom/android/server/VpnManagerService;->mNMS:Landroid/os/INetworkManagementService;

    .line 106
    .line 107
    invoke-static {}, Landroid/net/util/NetdService;->getInstance()Landroid/net/INetd;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    iput-object v4, p0, Lcom/android/server/VpnManagerService;->mNetd:Landroid/net/INetd;

    .line 112
    .line 113
    const-class v4, Landroid/os/UserManager;

    .line 114
    .line 115
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    check-cast v4, Landroid/os/UserManager;

    .line 120
    .line 121
    iput-object v4, p0, Lcom/android/server/VpnManagerService;->mUserManager:Landroid/os/UserManager;

    .line 122
    .line 123
    const-class v4, Lcom/android/server/pm/UserManagerInternal;

    .line 124
    .line 125
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    check-cast v4, Lcom/android/server/pm/UserManagerInternal;

    .line 130
    .line 131
    invoke-virtual {v4}, Lcom/android/server/pm/UserManagerInternal;->getMainUserId()I

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    iput v4, p0, Lcom/android/server/VpnManagerService;->mMainUserId:I

    .line 136
    .line 137
    const-string p0, "android.intent.action.USER_STARTED"

    .line 138
    .line 139
    const-string v6, "android.intent.action.USER_STOPPED"

    .line 140
    .line 141
    const-string v8, "android.intent.action.USER_ADDED"

    .line 142
    .line 143
    const-string v9, "android.intent.action.USER_REMOVED"

    .line 144
    .line 145
    const-string v10, "android.intent.action.USER_UNLOCKED"

    .line 146
    .line 147
    invoke-static {p0, v6, v8, v9, v10}, Lcom/android/server/VcnManagementService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    invoke-virtual {p2, v2, p0, v1, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 152
    .line 153
    .line 154
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    invoke-virtual {p1, p0, v3}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    new-instance p1, Landroid/content/IntentFilter;

    .line 163
    .line 164
    const-string v3, "android.intent.action.USER_PRESENT"

    .line 165
    .line 166
    invoke-direct {p1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0, v0, p1, v1, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 170
    .line 171
    .line 172
    new-instance p0, Landroid/content/IntentFilter;

    .line 173
    .line 174
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 175
    .line 176
    .line 177
    const-string p1, "android.intent.action.PACKAGE_ADDED"

    .line 178
    .line 179
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    const-string p1, "android.intent.action.PACKAGE_REPLACED"

    .line 183
    .line 184
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    const-string p1, "android.intent.action.PACKAGE_REMOVED"

    .line 188
    .line 189
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    const-string/jumbo p1, "package"

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p2, v2, p0, v1, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 199
    .line 200
    .line 201
    new-instance v3, Landroid/content/IntentFilter;

    .line 202
    .line 203
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 204
    .line 205
    .line 206
    const-string/jumbo p0, "com.android.server.action.LOCKDOWN_RESET"

    .line 207
    .line 208
    .line 209
    invoke-virtual {v3, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    const/4 v6, 0x2

    .line 213
    const-string v4, "android.permission.NETWORK_STACK"

    .line 214
    .line 215
    move-object v1, p2

    .line 216
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 217
    .line 218
    .line 219
    const-string p0, "VpnManagerService starting up"

    .line 220
    .line 221
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    .line 223
    .line 224
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/android/server/VpnManagerService;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/VpnManagerService;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/VpnManagerService$Dependencies;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/android/server/VpnManagerService$Dependencies;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lcom/android/server/VpnManagerService;-><init>(Landroid/content/Context;Lcom/android/server/VpnManagerService$Dependencies;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static getService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;
    .locals 1

    .line 1
    const-string/jumbo v0, "knox_vpn_policy"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public static logw(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "VpnManagerService"

    .line 2
    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final addVpnAddress(Ljava/lang/String;I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mDeps:Lcom/android/server/VpnManagerService$Dependencies;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 15
    .line 16
    monitor-enter v1

    .line 17
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->throwIfLockdownEnabled()V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lcom/android/server/connectivity/Vpn;

    .line 27
    .line 28
    invoke-virtual {p0, p2, p1}, Lcom/android/server/connectivity/Vpn;->addAddress(ILjava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    monitor-exit v1

    .line 33
    return p0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p0
.end method

.method public final applyBlockingRulesToUidRange(Ljava/lang/String;IZLjava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string/jumbo v0, "com.samsung.sVpn"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p4

    .line 17
    if-eqz p4, :cond_2

    .line 18
    .line 19
    iget-object p4, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 20
    .line 21
    monitor-enter p4

    .line 22
    :try_start_0
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Lcom/android/server/connectivity/Vpn;

    .line 29
    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0, p3}, Lcom/android/server/connectivity/Vpn;->applyBlockingRulesToUidRange(Z)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    monitor-exit p4

    .line 39
    return-void

    .line 40
    :goto_1
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0

    .line 42
    :cond_2
    iget-object p4, p0, Lcom/android/server/VpnManagerService;->knoxVpnLock:Ljava/lang/Object;

    .line 43
    .line 44
    monitor-enter p4

    .line 45
    :try_start_1
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    .line 46
    .line 47
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    .line 54
    .line 55
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Ljava/util/HashMap;

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    check-cast p0, Lcom/android/server/connectivity/EnterpriseVpn;

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :catchall_1
    move-exception p0

    .line 69
    goto :goto_3

    .line 70
    :cond_3
    const/4 p0, 0x0

    .line 71
    :goto_2
    if-eqz p0, :cond_4

    .line 72
    .line 73
    invoke-virtual {p0, p3}, Lcom/android/server/connectivity/EnterpriseVpn;->applyBlockingRulesToUidRange(Z)V

    .line 74
    .line 75
    .line 76
    :cond_4
    monitor-exit p4

    .line 77
    return-void

    .line 78
    :goto_3
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 79
    throw p0
.end method

.method public final checkIfLocalProxyPortExists(I)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/android/server/VpnManagerService;->getService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->checkIfLocalProxyPortExists(I)Z

    .line 6
    .line 7
    .line 8
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    const-string p0, "VpnManagerService"

    .line 11
    .line 12
    const-string p1, "Exception occured while trying to checkIfLocalProxyPortExists"

    .line 13
    .line 14
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method public final checkIfUidIsExempted(I)Z
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/android/server/VpnManagerService;->getService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->checkIfUidIsExempted(I)Z

    .line 6
    .line 7
    .line 8
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v0, "Error while checking if the uid of the app which originated the download is exempted or not "

    .line 14
    .line 15
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v0, "VpnManagerService"

    .line 19
    .line 20
    invoke-static {p0, p1, v0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    :goto_0
    return p0
.end method

.method public final createEnterpriseVpnInstance(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 10

    .line 1
    const-string/jumbo v0, "createEnterpriseVpnInstance failed for "

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/16 v2, 0x3e8

    .line 9
    .line 10
    if-eq v1, v2, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-string/jumbo v1, "com.samsung.sVpn"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->knoxVpnLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v1

    .line 26
    :try_start_0
    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    .line 27
    .line 28
    invoke-virtual {v2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/util/HashMap;

    .line 33
    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    const-string p0, "VpnManagerService"

    .line 43
    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p2, " in user "

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    new-instance v0, Lcom/android/server/connectivity/EnterpriseVpn;

    .line 71
    .line 72
    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mHandler:Landroid/os/Handler;

    .line 73
    .line 74
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    iget-object v4, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    .line 79
    .line 80
    iget-object v5, p0, Lcom/android/server/VpnManagerService;->mNMS:Landroid/os/INetworkManagementService;

    .line 81
    .line 82
    iget-object v6, p0, Lcom/android/server/VpnManagerService;->mNetd:Landroid/net/INetd;

    .line 83
    .line 84
    move-object v2, v0

    .line 85
    move v7, p3

    .line 86
    move-object v8, p1

    .line 87
    move v9, p4

    .line 88
    invoke-direct/range {v2 .. v9}, Lcom/android/server/connectivity/EnterpriseVpn;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetd;ILjava/lang/String;I)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    .line 92
    .line 93
    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Ljava/util/HashMap;

    .line 98
    .line 99
    if-nez p1, :cond_3

    .line 100
    .line 101
    new-instance p1, Ljava/util/HashMap;

    .line 102
    .line 103
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 104
    .line 105
    .line 106
    :cond_3
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    .line 110
    .line 111
    invoke-virtual {p0, p3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    :goto_0
    monitor-exit v1

    .line 115
    return-void

    .line 116
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    throw p0
.end method

.method public final deleteVpnProfile(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mDeps:Lcom/android/server/VpnManagerService$Dependencies;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 15
    .line 16
    monitor-enter v1

    .line 17
    :try_start_0
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lcom/android/server/connectivity/Vpn;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->deleteVpnProfile(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    monitor-exit v1

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method

.method public final disconnectKnoxVpn(Ljava/lang/String;I)Z
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-ne v0, v1, :cond_f

    .line 8
    .line 9
    sget-boolean v0, Lcom/android/server/VpnManagerService;->DBG:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v0, "VpnManagerService"

    .line 14
    .line 15
    const-string/jumbo v1, "vpn disconnect :  Profile: "

    .line 16
    .line 17
    .line 18
    const-string v2, " callingUid: "

    .line 19
    .line 20
    invoke-static {p2, v1, p1, v2, v0}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->knoxVpnLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v0

    .line 26
    :try_start_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    .line 31
    .line 32
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const/4 v2, 0x0

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    .line 40
    .line 41
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    check-cast p2, Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    check-cast p2, Lcom/android/server/connectivity/EnterpriseVpn;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto/16 :goto_4

    .line 56
    .line 57
    :cond_1
    move-object p2, v2

    .line 58
    :goto_0
    const/4 v1, 0x0

    .line 59
    if-nez p2, :cond_2

    .line 60
    .line 61
    monitor-exit v0

    .line 62
    return v1

    .line 63
    :cond_2
    iget-object v3, p2, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 64
    .line 65
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    .line 70
    .line 71
    if-eq v3, v4, :cond_4

    .line 72
    .line 73
    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    .line 74
    .line 75
    if-ne v3, v4, :cond_3

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    monitor-exit v0

    .line 79
    return v1

    .line 80
    :cond_4
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 81
    .line 82
    .line 83
    move-result-wide v3

    .line 84
    invoke-virtual {p2, p1, v1}, Lcom/android/server/connectivity/EnterpriseVpn;->showNotification(Ljava/lang/String;Z)V

    .line 85
    .line 86
    .line 87
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 88
    .line 89
    .line 90
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 91
    .line 92
    .line 93
    move-result-wide v3

    .line 94
    new-instance v5, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .line 98
    .line 99
    :try_start_1
    invoke-static {}, Lcom/android/server/VpnManagerService;->getService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-interface {v6, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getDomainsByProfileName(Ljava/lang/String;)Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    :catch_0
    if-eqz v5, :cond_7

    .line 108
    .line 109
    :try_start_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-lez p1, :cond_7

    .line 114
    .line 115
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-ge v1, p1, :cond_e

    .line 120
    .line 121
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    check-cast p1, Ljava/lang/String;

    .line 126
    .line 127
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/server/VpnManagerService;->hasInterfaceAsUser(I)Z

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    if-nez p1, :cond_6

    .line 136
    .line 137
    sget-boolean p1, Lcom/android/server/VpnManagerService;->DBG:Z

    .line 138
    .line 139
    if-eqz p1, :cond_5

    .line 140
    .line 141
    const-string p1, "VpnManagerService"

    .line 142
    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    const-string v6, "The connected Vpn is not exists in user "

    .line 149
    .line 150
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    check-cast v6, Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    :cond_5
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    check-cast p1, Ljava/lang/String;

    .line 174
    .line 175
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    invoke-virtual {p2, p1}, Lcom/android/server/connectivity/EnterpriseVpn;->hideNotification(I)V

    .line 180
    .line 181
    .line 182
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_7
    iget-object p1, p0, Lcom/android/server/VpnManagerService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 186
    .line 187
    if-nez p1, :cond_8

    .line 188
    .line 189
    iget-object p1, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    .line 190
    .line 191
    const-string/jumbo v5, "persona"

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    check-cast p1, Lcom/samsung/android/knox/SemPersonaManager;

    .line 199
    .line 200
    iput-object p1, p0, Lcom/android/server/VpnManagerService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 201
    .line 202
    :cond_8
    iget-object p1, p0, Lcom/android/server/VpnManagerService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 203
    .line 204
    if-eqz p1, :cond_a

    .line 205
    .line 206
    if-nez p1, :cond_9

    .line 207
    .line 208
    iget-object p1, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    .line 209
    .line 210
    const-string/jumbo v2, "persona"

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    check-cast p1, Lcom/samsung/android/knox/SemPersonaManager;

    .line 218
    .line 219
    iput-object p1, p0, Lcom/android/server/VpnManagerService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 220
    .line 221
    :cond_9
    iget-object p1, p0, Lcom/android/server/VpnManagerService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 222
    .line 223
    invoke-virtual {p1, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    :cond_a
    if-nez v2, :cond_b

    .line 228
    .line 229
    new-instance v2, Ljava/util/ArrayList;

    .line 230
    .line 231
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .line 233
    .line 234
    :cond_b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    :cond_c
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    if-eqz v1, :cond_e

    .line 250
    .line 251
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    check-cast v1, Ljava/lang/Integer;

    .line 256
    .line 257
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    invoke-virtual {p0, v1}, Lcom/android/server/VpnManagerService;->hasInterfaceAsUser(I)Z

    .line 262
    .line 263
    .line 264
    move-result v2

    .line 265
    if-nez v2, :cond_c

    .line 266
    .line 267
    sget-boolean v2, Lcom/android/server/VpnManagerService;->DBG:Z

    .line 268
    .line 269
    if-eqz v2, :cond_d

    .line 270
    .line 271
    const-string v2, "VpnManagerService"

    .line 272
    .line 273
    new-instance v5, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    .line 277
    .line 278
    const-string v6, "The connected Vpn is not exists in user "

    .line 279
    .line 280
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v5

    .line 290
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .line 292
    .line 293
    :cond_d
    invoke-virtual {p2, v1}, Lcom/android/server/connectivity/EnterpriseVpn;->hideNotification(I)V

    .line 294
    .line 295
    .line 296
    goto :goto_3

    .line 297
    :cond_e
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 298
    .line 299
    .line 300
    monitor-exit v0

    .line 301
    const/4 p0, 0x1

    .line 302
    return p0

    .line 303
    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 304
    throw p0

    .line 305
    :cond_f
    new-instance p0, Ljava/lang/SecurityException;

    .line 306
    .line 307
    invoke-direct {p0}, Ljava/lang/SecurityException;-><init>()V

    .line 308
    .line 309
    .line 310
    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string p3, "VpnManagerService"

    .line 4
    .line 5
    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    .line 13
    .line 14
    const-string p3, "  "

    .line 15
    .line 16
    invoke-direct {p1, p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string p2, "VPNs:"

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 25
    .line 26
    .line 27
    iget-object p2, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 28
    .line 29
    monitor-enter p2

    .line 30
    const/4 p3, 0x0

    .line 31
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-ge p3, v0, :cond_1

    .line 38
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 45
    .line 46
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ": "

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 59
    .line 60
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getPackage()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 84
    .line 85
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Lcom/android/server/connectivity/Vpn;

    .line 90
    .line 91
    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Vpn;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 98
    .line 99
    .line 100
    add-int/lit8 p3, p3, 0x1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :catchall_0
    move-exception p0

    .line 104
    goto :goto_1

    .line 105
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 106
    .line 107
    .line 108
    monitor-exit p2

    .line 109
    return-void

    .line 110
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    throw p0
.end method

.method public final enforceCrossUserPermission(I)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const-string p1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 11
    .line 12
    const-string v0, "VpnManagerService"

    .line 13
    .line 14
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final enforceSettingsPermission()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "android.permission.NETWORK_SETTINGS"

    .line 4
    .line 5
    const-string v1, "android.permission.MAINLINE_NETWORK_STACK"

    .line 6
    .line 7
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p0, v0}, Lcom/android/net/module/util/PermissionUtils;->enforceAnyPermissionOf(Landroid/content/Context;[Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mDeps:Lcom/android/server/VpnManagerService$Dependencies;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const/4 v3, 0x0

    .line 29
    const/4 v4, 0x0

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    aget-object v2, v2, v4

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-object v2, v3

    .line 36
    :goto_0
    const-string v5, "VpnManagerService"

    .line 37
    .line 38
    const-string/jumbo v6, "establishVpn called by "

    .line 39
    .line 40
    .line 41
    invoke-static {v6, v2, v5}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v2, p1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 45
    .line 46
    const-string/jumbo v5, "checkKnoxVpnProfileType: profileCreatedByKnoxAdmin value is "

    .line 47
    .line 48
    .line 49
    :try_start_0
    invoke-static {}, Lcom/android/server/VpnManagerService;->getService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-interface {v6, v2, v1, v0}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->checkIfVendorCreatedKnoxProfile(Ljava/lang/String;II)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    const-string v6, "VpnManagerService"

    .line 58
    .line 59
    new-instance v7, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    if-eqz v1, :cond_1

    .line 75
    .line 76
    invoke-virtual {p0, v2}, Lcom/android/server/VpnManagerService;->knoxVpnProfileType(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    :catch_0
    :cond_1
    const/4 v1, 0x1

    .line 81
    if-ne v4, v1, :cond_4

    .line 82
    .line 83
    const-string v1, "VpnManagerService"

    .line 84
    .line 85
    const-string/jumbo v2, "establishVpn called by knox per app vpn"

    .line 86
    .line 87
    .line 88
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    const-string v1, "Unable to find enterpriseVpn object in hashmap : user = "

    .line 92
    .line 93
    const-string v2, "VpnManagerService"

    .line 94
    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    const-string/jumbo v5, "establishEnterpriseVpn : user = "

    .line 98
    .line 99
    .line 100
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object v5, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v5, " Profile: "

    .line 109
    .line 110
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget-object v5, p1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    const-string/jumbo v2, "net.vpn.framework"

    .line 126
    .line 127
    .line 128
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    const-string v4, "VpnManagerService"

    .line 133
    .line 134
    const-string/jumbo v5, "establishEnterpriseVpn: getProperty value is \'"

    .line 135
    .line 136
    .line 137
    const-string v6, "\'"

    .line 138
    .line 139
    invoke-static {v5, v2, v6, v4}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iget-object v4, p0, Lcom/android/server/VpnManagerService;->knoxVpnLock:Ljava/lang/Object;

    .line 143
    .line 144
    monitor-enter v4

    .line 145
    :try_start_1
    iget-object v5, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    .line 146
    .line 147
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    if-eqz v5, :cond_3

    .line 152
    .line 153
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    .line 154
    .line 155
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    check-cast p0, Ljava/util/HashMap;

    .line 160
    .line 161
    iget-object v0, p1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    check-cast p0, Lcom/android/server/connectivity/EnterpriseVpn;

    .line 168
    .line 169
    if-eqz p0, :cond_2

    .line 170
    .line 171
    const-string v0, "2.0"

    .line 172
    .line 173
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-eqz v0, :cond_2

    .line 178
    .line 179
    iput-object v3, p1, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    .line 180
    .line 181
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/EnterpriseVpn;->establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    goto :goto_1

    .line 186
    :catchall_0
    move-exception p0

    .line 187
    goto :goto_2

    .line 188
    :cond_2
    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    const-string p0, "VpnManagerService"

    .line 190
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    const-string/jumbo v1, "establishEnterpriseVpn: knoxVpnFd value is "

    .line 194
    .line 195
    .line 196
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_3
    :try_start_2
    const-string p0, "VpnManagerService"

    .line 211
    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    monitor-exit v4

    .line 228
    goto :goto_3

    .line 229
    :goto_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 230
    throw p0

    .line 231
    :cond_4
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 232
    .line 233
    monitor-enter v1

    .line 234
    :try_start_3
    const-string v2, "VpnManagerService"

    .line 235
    .line 236
    const-string/jumbo v3, "establishVpn called by non-knox vpn"

    .line 237
    .line 238
    .line 239
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    .line 241
    .line 242
    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->throwIfLockdownEnabled()V

    .line 243
    .line 244
    .line 245
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 246
    .line 247
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    check-cast p0, Lcom/android/server/connectivity/Vpn;

    .line 252
    .line 253
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->establish(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 258
    :goto_3
    sget-boolean p0, Lcom/android/server/VpnManagerService;->DBG:Z

    .line 259
    .line 260
    if-eqz p0, :cond_5

    .line 261
    .line 262
    const-string p0, "VpnManagerService"

    .line 263
    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    const-string/jumbo v1, "establishVpn: config.session value is "

    .line 267
    .line 268
    .line 269
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    iget-object p1, p1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 273
    .line 274
    invoke-static {v0, p1, p0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    :cond_5
    return-object v3

    .line 278
    :catchall_1
    move-exception p0

    .line 279
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 280
    throw p0
.end method

.method public final factoryReset()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->enforceSettingsPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mUserManager:Landroid/os/UserManager;

    .line 5
    .line 6
    const-string/jumbo v1, "no_network_reset"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_5

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mUserManager:Landroid/os/UserManager;

    .line 16
    .line 17
    const-string/jumbo v1, "no_config_vpn"

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    goto :goto_4

    .line 27
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 32
    .line 33
    monitor-enter v1

    .line 34
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/VpnManagerService;->getAlwaysOnVpnPackage(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const/4 v3, -0x1

    .line 39
    const/4 v4, 0x0

    .line 40
    const/4 v5, 0x0

    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0, v0, v5, v4, v5}, Lcom/android/server/VpnManagerService;->setAlwaysOnVpnPackage(ILjava/lang/String;ZLjava/util/List;)Z

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v2, v0, v3}, Lcom/android/server/VpnManagerService;->setVpnPackageAuthorization(Ljava/lang/String;II)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_3

    .line 52
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/VpnManagerService;->mLockdownEnabled:Z

    .line 53
    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    iget v2, p0, Lcom/android/server/VpnManagerService;->mMainUserId:I

    .line 57
    .line 58
    if-ne v0, v2, :cond_2

    .line 59
    .line 60
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 61
    .line 62
    .line 63
    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :try_start_1
    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mVpnProfileStore:Lcom/android/server/connectivity/VpnProfileStore;

    .line 65
    .line 66
    const-string v8, "LOCKDOWN_VPN"

    .line 67
    .line 68
    invoke-virtual {v2, v8}, Lcom/android/server/connectivity/VpnProfileStore;->remove(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    iput-boolean v4, p0, Lcom/android/server/VpnManagerService;->mLockdownEnabled:Z

    .line 72
    .line 73
    invoke-virtual {p0, v5}, Lcom/android/server/VpnManagerService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 74
    .line 75
    .line 76
    :try_start_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :catchall_1
    move-exception p0

    .line 81
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 82
    .line 83
    .line 84
    throw p0

    .line 85
    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/server/VpnManagerService;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    if-eqz v2, :cond_4

    .line 90
    .line 91
    iget-boolean v4, v2, Lcom/android/internal/net/VpnConfig;->legacy:Z

    .line 92
    .line 93
    if-eqz v4, :cond_3

    .line 94
    .line 95
    const-string v2, "[Legacy VPN]"

    .line 96
    .line 97
    const-string v3, "[Legacy VPN]"

    .line 98
    .line 99
    invoke-virtual {p0, v2, v3, v0}, Lcom/android/server/VpnManagerService;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_3
    iget-object v2, v2, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {p0, v2, v0, v3}, Lcom/android/server/VpnManagerService;->setVpnPackageAuthorization(Ljava/lang/String;II)V

    .line 106
    .line 107
    .line 108
    const-string v2, "[Legacy VPN]"

    .line 109
    .line 110
    invoke-virtual {p0, v5, v2, v0}, Lcom/android/server/VpnManagerService;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 111
    .line 112
    .line 113
    :cond_4
    :goto_2
    monitor-exit v1

    .line 114
    return-void

    .line 115
    :goto_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    throw p0

    .line 117
    :cond_5
    :goto_4
    return-void
.end method

.method public final getActiveDefaultInterface()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mDefaultNetworkCallback:Lcom/android/server/VpnManagerService$NetworkCallback;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/VpnManagerService$NetworkCallback;->mLinkProperties:Landroid/net/LinkProperties;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return-object p0
.end method

.method public final getActiveDefaultNetwork()Landroid/net/Network;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mDefaultNetworkCallback:Lcom/android/server/VpnManagerService$NetworkCallback;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/VpnManagerService$NetworkCallback;->mNetwork:Landroid/net/Network;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public final getAlwaysOnVpnPackage(I)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "User "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v2, "android.permission.CONTROL_ALWAYS_ON_VPN"

    .line 6
    .line 7
    const-string v3, "VpnManagerService"

    .line 8
    .line 9
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/VpnManagerService;->enforceCrossUserPermission(I)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 16
    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Lcom/android/server/connectivity/Vpn;

    .line 25
    .line 26
    if-nez p0, :cond_0

    .line 27
    .line 28
    new-instance p0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p1, " has no Vpn configuration"

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p0}, Lcom/android/server/VpnManagerService;->logw(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    monitor-exit v1

    .line 49
    const/4 p0, 0x0

    .line 50
    return-object p0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getAlwaysOnPackage()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    monitor-exit v1

    .line 58
    return-object p0

    .line 59
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw p0
.end method

.method public final getAppExclusionList(ILjava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1
    const-string v0, "User "

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->enforceSettingsPermission()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/VpnManagerService;->enforceCrossUserPermission(I)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/android/server/connectivity/Vpn;

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Vpn;->getAppExclusionList(Ljava/lang/String;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    monitor-exit v1

    .line 27
    return-object p0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p1, " has no Vpn configuration"

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-static {p0}, Lcom/android/server/VpnManagerService;->logw(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    monitor-exit v1

    .line 51
    const/4 p0, 0x0

    .line 52
    return-object p0

    .line 53
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p0
.end method

.method public final getChainingEnabledForProfile(I)Z
    .locals 1

    .line 1
    const/4 p0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/android/server/VpnManagerService;->getService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-interface {v0, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getChainingEnabledForProfile(I)I

    .line 7
    .line 8
    .line 9
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    const/4 v0, 0x1

    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    move p0, v0

    .line 14
    :catch_0
    :cond_0
    return p0
.end method

.method public final getDnsServerListForInterface(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mCm:Landroid/net/ConnectivityManager;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    array-length v2, v1

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, v2, :cond_2

    .line 14
    .line 15
    aget-object v4, v1, v3

    .line 16
    .line 17
    iget-object v5, p0, Lcom/android/server/VpnManagerService;->mCm:Landroid/net/ConnectivityManager;

    .line 18
    .line 19
    invoke-virtual {v5, v4}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    if-eqz v5, :cond_1

    .line 28
    .line 29
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_1

    .line 38
    .line 39
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Ljava/net/InetAddress;

    .line 58
    .line 59
    sget-boolean v1, Lcom/android/server/VpnManagerService;->DBG:Z

    .line 60
    .line 61
    if-eqz v1, :cond_0

    .line 62
    .line 63
    const-string v1, "VpnManagerService"

    .line 64
    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v3, "The knox vpn dns server being added for usb tethering use-case is "

    .line 71
    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    :cond_0
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :catch_0
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    new-array p0, p0, [Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    check-cast p0, [Ljava/lang/String;

    .line 111
    .line 112
    return-object p0
.end method

.method public final getFromVpnProfileStore(Ljava/lang/String;)[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpnProfileStore:Lcom/android/server/connectivity/VpnProfileStore;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/VpnProfileStore;->get(Ljava/lang/String;)[B

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final getKnoxNwFilterHttpProxyPort(ILjava/lang/String;)I
    .locals 2

    .line 1
    const-string/jumbo p0, "knox_nwFilterMgr_policy"

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, -0x1

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService;->getKnoxNwFilterHttpProxyPort(ILjava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p0

    .line 30
    const-string p1, "VpnManagerService"

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :goto_0
    return v1
.end method

.method public final getKnoxVpnZtnaProxyInfoForUid(ILjava/lang/String;)[I
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/android/server/VpnManagerService;->getProxyInfoForUid(I)[Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x1

    .line 9
    aget-object v1, v1, v2

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v3, 0x0

    .line 18
    aput v1, v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    :catch_0
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/android/server/VpnManagerService;->getKnoxNwFilterHttpProxyPort(ILjava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    aput p0, v0, v2

    .line 29
    .line 30
    return-object v0
.end method

.method public final getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/VpnManagerService;->enforceCrossUserPermission(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/android/server/connectivity/Vpn;

    .line 14
    .line 15
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceControlPermission()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnInfoPrivileged()Lcom/android/internal/net/LegacyVpnInfo;

    .line 20
    .line 21
    .line 22
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 23
    :try_start_2
    monitor-exit p0

    .line 24
    monitor-exit v0

    .line 25
    return-object p1

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_0

    .line 28
    :catchall_1
    move-exception p1

    .line 29
    monitor-exit p0

    .line 30
    throw p1

    .line 31
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    throw p0
.end method

.method public final getNetIdforActiveDefaultInterface()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mDefaultNetworkCallback:Lcom/android/server/VpnManagerService$NetworkCallback;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/VpnManagerService$NetworkCallback;->mNetwork:Landroid/net/Network;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/net/Network;->getNetId()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public final getProvisionedVpnProfileState(Ljava/lang/String;)Landroid/net/VpnProfileState;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/android/server/VpnManagerService;->verifyCallingUidAndPackage(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 13
    .line 14
    monitor-enter v1

    .line 15
    :try_start_0
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lcom/android/server/connectivity/Vpn;

    .line 22
    .line 23
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    :try_start_1
    const-string v0, "No package name provided"

    .line 25
    .line 26
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceNotRestrictedUser()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentIkev2VpnLocked(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->makeVpnProfileStateLocked()Landroid/net/VpnProfileState;

    .line 39
    .line 40
    .line 41
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    const/4 p1, 0x0

    .line 46
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 47
    monitor-exit v1

    .line 48
    return-object p1

    .line 49
    :catchall_1
    move-exception p0

    .line 50
    goto :goto_2

    .line 51
    :goto_1
    monitor-exit p0

    .line 52
    throw p1

    .line 53
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 54
    throw p0
.end method

.method public final getProxyInfoForUid(I)[Ljava/lang/String;
    .locals 1

    .line 1
    const/4 p0, 0x2

    .line 2
    new-array p0, p0, [Ljava/lang/String;

    .line 3
    .line 4
    :try_start_0
    invoke-static {}, Lcom/android/server/VpnManagerService;->getService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getProxyInfoForUid(I)[Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :catch_0
    return-object p0
.end method

.method public final getVpnConfig(I)Lcom/android/internal/net/VpnConfig;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/VpnManagerService;->enforceCrossUserPermission(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/android/server/connectivity/Vpn;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getVpnConfig()Lcom/android/internal/net/VpnConfig;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    monitor-exit v0

    .line 22
    return-object p0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    monitor-exit v0

    .line 26
    const/4 p0, 0x0

    .line 27
    return-object p0

    .line 28
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method public final getVpnIfOwner()Lcom/android/server/connectivity/Vpn;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mDeps:Lcom/android/server/VpnManagerService$Dependencies;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Lcom/android/server/connectivity/Vpn;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    if-nez p0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getUnderlyingNetworkInfo()Landroid/net/UnderlyingNetworkInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/net/UnderlyingNetworkInfo;->getOwnerUid()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eq v2, v0, :cond_2

    .line 37
    .line 38
    :cond_1
    move-object p0, v1

    .line 39
    :cond_2
    move-object v1, p0

    .line 40
    :goto_0
    return-object v1
.end method

.method public final getVpnLockdownAllowlist(I)Ljava/util/List;
    .locals 4

    .line 1
    const-string v0, "User "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v2, "android.permission.CONTROL_ALWAYS_ON_VPN"

    .line 6
    .line 7
    const-string v3, "VpnManagerService"

    .line 8
    .line 9
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/VpnManagerService;->enforceCrossUserPermission(I)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 16
    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Lcom/android/server/connectivity/Vpn;

    .line 25
    .line 26
    if-nez p0, :cond_0

    .line 27
    .line 28
    new-instance p0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p1, " has no Vpn configuration"

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p0}, Lcom/android/server/VpnManagerService;->logw(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    monitor-exit v1

    .line 49
    const/4 p0, 0x0

    .line 50
    return-object p0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getLockdownAllowlist()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    monitor-exit v1

    .line 58
    return-object p0

    .line 59
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw p0
.end method

.method public final hasInterfaceAsUser(I)Z
    .locals 8

    .line 1
    const-string v0, "VpnManagerService"

    .line 2
    .line 3
    const-string v1, "Exception: "

    .line 4
    .line 5
    new-instance v2, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 11
    .line 12
    .line 13
    move-result-wide v3

    .line 14
    :try_start_0
    invoke-static {}, Lcom/android/server/VpnManagerService;->getService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {v5, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getProfilesByDomain(Ljava/lang/String;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto/16 :goto_4

    .line 32
    .line 33
    :catch_0
    move-exception p1

    .line 34
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :goto_1
    sget-boolean p1, Lcom/android/server/VpnManagerService;->DBG:Z

    .line 55
    .line 56
    if-eqz p1, :cond_0

    .line 57
    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string/jumbo v1, "hasInterfaceAsUser > profiles.size : "

    .line 61
    .line 62
    .line 63
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    :cond_0
    const/4 p1, 0x0

    .line 81
    move v1, p1

    .line 82
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-ge v1, v3, :cond_5

    .line 87
    .line 88
    move v3, p1

    .line 89
    :goto_3
    iget-object v4, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    .line 90
    .line 91
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-ge v3, v4, :cond_4

    .line 96
    .line 97
    iget-object v4, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    .line 98
    .line 99
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    sget-boolean v5, Lcom/android/server/VpnManagerService;->DBG:Z

    .line 104
    .line 105
    if-eqz v5, :cond_1

    .line 106
    .line 107
    const-string/jumbo v6, "hasInterfaceAsUser > vpn key : "

    .line 108
    .line 109
    .line 110
    const-string v7, ", profileName : "

    .line 111
    .line 112
    invoke-static {v4, v6, v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    check-cast v7, Ljava/lang/String;

    .line 121
    .line 122
    invoke-static {v6, v7, v0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :cond_1
    iget-object v6, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    .line 126
    .line 127
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    if-eqz v6, :cond_3

    .line 132
    .line 133
    iget-object v6, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    .line 134
    .line 135
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    check-cast v4, Ljava/util/HashMap;

    .line 140
    .line 141
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    check-cast v4, Lcom/android/server/connectivity/EnterpriseVpn;

    .line 150
    .line 151
    if-eqz v4, :cond_3

    .line 152
    .line 153
    iget-object v6, v4, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 154
    .line 155
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    iget-object v4, v4, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    .line 160
    .line 161
    if-eqz v4, :cond_3

    .line 162
    .line 163
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    .line 164
    .line 165
    if-ne v6, v4, :cond_3

    .line 166
    .line 167
    if-eqz v5, :cond_2

    .line 168
    .line 169
    const-string/jumbo p0, "hasInterfaceAsUser : return true"

    .line 170
    .line 171
    .line 172
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    :cond_2
    const/4 p0, 0x1

    .line 176
    return p0

    .line 177
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_5
    return p1

    .line 184
    :goto_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 185
    .line 186
    .line 187
    throw p0
.end method

.method public final isAlwaysOnVpnPackageSupported(ILjava/lang/String;)Z
    .locals 2

    .line 1
    const-string v0, "User "

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->enforceSettingsPermission()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/android/server/VpnManagerService;->enforceCrossUserPermission(I)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/android/server/connectivity/Vpn;

    .line 19
    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    new-instance p0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p1, " has no Vpn configuration"

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {p0}, Lcom/android/server/VpnManagerService;->logw(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    monitor-exit v1

    .line 43
    const/4 p0, 0x0

    .line 44
    return p0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Vpn;->isAlwaysOnPackageSupported(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    monitor-exit v1

    .line 52
    return p0

    .line 53
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p0
.end method

.method public final isCallerCurrentAlwaysOnVpnApp()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->getVpnIfOwner()Lcom/android/server/connectivity/Vpn;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getAlwaysOn()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    :goto_0
    monitor-exit v0

    .line 22
    return p0

    .line 23
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method

.method public final isCallerCurrentAlwaysOnVpnLockdownApp()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->getVpnIfOwner()Lcom/android/server/connectivity/Vpn;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getLockdown()Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    :goto_0
    monitor-exit v0

    .line 22
    return p0

    .line 23
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method

.method public final isDoEnabled(I)Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    const-string/jumbo v3, "device_policy"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    const-string p0, "VpnManagerService"

    .line 26
    .line 27
    const-string/jumbo p1, "prepare filtering failed since device owner is configured"

    .line 28
    .line 29
    .line 30
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    .line 35
    .line 36
    return v2

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    .line 45
    .line 46
    throw p0

    .line 47
    :goto_1
    return v2
.end method

.method public final isKnoxAlwaysOnConfigured(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "[Legacy VPN]"

    .line 2
    .line 3
    const-string v1, "VpnManagerService"

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const-string/jumbo p0, "isKnoxAlwaysOnConfigured check ignored for old package name"

    .line 14
    .line 15
    .line 16
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    if-eqz p2, :cond_1

    .line 21
    .line 22
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    const-string/jumbo p0, "isKnoxAlwaysOnConfigured check ignored for new package name"

    .line 29
    .line 30
    .line 31
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    check-cast p0, Lcom/android/server/connectivity/Vpn;

    .line 43
    .line 44
    if-eqz p0, :cond_3

    .line 45
    .line 46
    iget-boolean p0, p0, Lcom/android/server/connectivity/Vpn;->mKnoxAlwaysOn:Z

    .line 47
    .line 48
    if-nez p0, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const-string/jumbo p0, "isKnoxAlwaysOnConfigured returns true"

    .line 52
    .line 53
    .line 54
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    const-string p1, "Unavailable in lockdown mode"

    .line 60
    .line 61
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p0

    .line 65
    :cond_3
    :goto_0
    return-void
.end method

.method public final isLockdownVpnEnabled()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpnProfileStore:Lcom/android/server/connectivity/VpnProfileStore;

    .line 2
    .line 3
    const-string v0, "LOCKDOWN_VPN"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/VpnProfileStore;->get(Ljava/lang/String;)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
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

.method public final isProxyConfiguredForKnoxVpn(I)Z
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/android/server/VpnManagerService;->getService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->isProxyConfiguredForKnoxVpn(I)Z

    .line 6
    .line 7
    .line 8
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    const-string p0, "Exception occured while trying to get the getProxyInfoConfig for knoxvpn uid "

    .line 11
    .line 12
    const-string v0, "VpnManagerService"

    .line 13
    .line 14
    invoke-static {p1, p0, v0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method public isVpnConfigured(I)Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/android/server/connectivity/Vpn;

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getNetwork()Landroid/net/Network;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getNetwork()Landroid/net/Network;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Landroid/net/Network;->getNetId()I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-ne p0, p1, :cond_0

    .line 37
    .line 38
    monitor-exit v1

    .line 39
    const/4 p0, 0x1

    .line 40
    return p0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    monitor-exit v1

    .line 44
    const/4 p0, 0x0

    .line 45
    return p0

    .line 46
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p0
.end method

.method public final isVpnLockdownEnabled(I)Z
    .locals 4

    .line 1
    const-string v0, "User "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v2, "android.permission.CONTROL_ALWAYS_ON_VPN"

    .line 6
    .line 7
    const-string v3, "VpnManagerService"

    .line 8
    .line 9
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/VpnManagerService;->enforceCrossUserPermission(I)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 16
    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Lcom/android/server/connectivity/Vpn;

    .line 25
    .line 26
    if-nez p0, :cond_0

    .line 27
    .line 28
    new-instance p0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p1, " has no Vpn configuration"

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p0}, Lcom/android/server/VpnManagerService;->logw(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    monitor-exit v1

    .line 49
    const/4 p0, 0x0

    .line 50
    return p0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->getLockdown()Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    monitor-exit v1

    .line 58
    return p0

    .line 59
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw p0
.end method

.method public final knoxVpnProfileType(Ljava/lang/String;)I
    .locals 0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/android/server/VpnManagerService;->getService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getKnoxVpnProfileType(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public final listFromVpnProfileStore(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpnProfileStore:Lcom/android/server/connectivity/VpnProfileStore;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/VpnProfileStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final prepareEnterpriseVpnExt(Ljava/lang/String;Z)Z
    .locals 6

    .line 1
    const-string v0, "No permission to call prepareEnterpriseVpnExt : "

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x1

    .line 16
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    const/16 v5, 0x3e8

    .line 21
    .line 22
    if-eq v4, v5, :cond_1

    .line 23
    .line 24
    invoke-static {}, Lcom/android/server/VpnManagerService;->getService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    invoke-interface {v4, v5}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->checkIfCallerIsVpnVendor(I)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const-string p0, "VpnManagerService"

    .line 40
    .line 41
    new-instance p1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    new-instance p0, Ljava/lang/SecurityException;

    .line 61
    .line 62
    invoke-direct {p0}, Ljava/lang/SecurityException;-><init>()V

    .line 63
    .line 64
    .line 65
    throw p0

    .line 66
    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 67
    .line 68
    invoke-static {}, Lcom/android/server/VpnManagerService;->getService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-interface {v0, v2, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getUidPidEnabled(ILjava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 80
    .line 81
    const-string p1, "Unauthorized Call to enable meta data"

    .line 82
    .line 83
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p0

    .line 87
    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/server/VpnManagerService;->getService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-interface {v0, p1, v2, v1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->checkIfVendorCreatedKnoxProfile(Ljava/lang/String;II)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_6

    .line 96
    .line 97
    invoke-static {}, Lcom/android/server/VpnManagerService;->getService()Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-interface {v0, p1}, Lcom/samsung/android/knox/net/vpn/IKnoxVpnPolicy;->getKnoxVpnProfileType(Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_4

    .line 106
    .line 107
    const-string p0, "VpnManagerService"

    .line 108
    .line 109
    const-string p1, "Non knox mode is not supported"

    .line 110
    .line 111
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    const/4 p0, 0x0

    .line 115
    return p0

    .line 116
    :cond_4
    if-ne v0, v3, :cond_6

    .line 117
    .line 118
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->knoxVpnLock:Ljava/lang/Object;

    .line 119
    .line 120
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :try_start_1
    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    .line 122
    .line 123
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    if-eqz v2, :cond_5

    .line 128
    .line 129
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    .line 130
    .line 131
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    check-cast p0, Ljava/util/HashMap;

    .line 136
    .line 137
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    check-cast p0, Lcom/android/server/connectivity/EnterpriseVpn;

    .line 142
    .line 143
    if-eqz p0, :cond_5

    .line 144
    .line 145
    iput-boolean p2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->isMetaDataEnabled:Z

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :catchall_0
    move-exception p0

    .line 149
    goto :goto_3

    .line 150
    :cond_5
    :goto_2
    monitor-exit v0

    .line 151
    goto :goto_4

    .line 152
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 154
    :catch_0
    :cond_6
    :goto_4
    const-string p0, "VpnManagerService"

    .line 155
    .line 156
    const-string p1, "The return value in prepareEnterpriseVpnExt true"

    .line 157
    .line 158
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    return v3
.end method

.method public final prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p3}, Lcom/android/server/VpnManagerService;->enforceCrossUserPermission(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->throwIfLockdownEnabled()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/android/server/VpnManagerService;->isKnoxAlwaysOnConfigured(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {p0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lcom/android/server/connectivity/Vpn;

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    const/4 p3, 0x1

    .line 24
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/connectivity/Vpn;->prepare(ILjava/lang/String;Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    monitor-exit v0

    .line 29
    return p0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    monitor-exit v0

    .line 33
    const/4 p0, 0x0

    .line 34
    return p0

    .line 35
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p0
.end method

.method public final provisionVpnProfile(Lcom/android/internal/net/VpnProfile;Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mDeps:Lcom/android/server/VpnManagerService$Dependencies;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 15
    .line 16
    monitor-enter v1

    .line 17
    :try_start_0
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lcom/android/server/connectivity/Vpn;

    .line 24
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Vpn;->provisionVpnProfile(Lcom/android/internal/net/VpnProfile;Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    monitor-exit v1

    .line 30
    return p0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
.end method

.method public final putIntoVpnProfileStore(Ljava/lang/String;[B)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpnProfileStore:Lcom/android/server/connectivity/VpnProfileStore;

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/VpnProfileStore;->put(Ljava/lang/String;[B)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final registerSystemDefaultNetworkCallback()V
    .locals 7

    .line 1
    const-string v0, "Failed to register system default network callback "

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    new-instance v3, Lcom/android/server/VpnManagerService$NetworkCallback;

    .line 8
    .line 9
    invoke-direct {v3}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    iput-object v4, v3, Lcom/android/server/VpnManagerService$NetworkCallback;->mNetwork:Landroid/net/Network;

    .line 14
    .line 15
    iput-object v4, v3, Lcom/android/server/VpnManagerService$NetworkCallback;->mLinkProperties:Landroid/net/LinkProperties;

    .line 16
    .line 17
    iput-object v3, p0, Lcom/android/server/VpnManagerService;->mDefaultNetworkCallback:Lcom/android/server/VpnManagerService$NetworkCallback;

    .line 18
    .line 19
    :try_start_0
    iget-object v5, p0, Lcom/android/server/VpnManagerService;->mCm:Landroid/net/ConnectivityManager;

    .line 20
    .line 21
    iget-object v6, p0, Lcom/android/server/VpnManagerService;->mHandler:Landroid/os/Handler;

    .line 22
    .line 23
    invoke-virtual {v5, v3, v6}, Landroid/net/ConnectivityManager;->registerSystemDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_2

    .line 32
    :catch_0
    move-exception v3

    .line 33
    :try_start_1
    const-string v5, "VpnManagerService"

    .line 34
    .line 35
    new-instance v6, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    iput-object v4, p0, Lcom/android/server/VpnManagerService;->mDefaultNetworkCallback:Lcom/android/server/VpnManagerService$NetworkCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :goto_1
    return-void

    .line 58
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 59
    .line 60
    .line 61
    throw p0
.end method

.method public final removeEnterpriseVpnInstance(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    .line 1
    const-string/jumbo v0, "removeEnterpriseVpnInstance all profiles in user "

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "removeEnterpriseVpnInstance: profile "

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/16 v3, 0x3e8

    .line 12
    .line 13
    if-eq v2, v3, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const-string/jumbo v2, "com.samsung.sVpn"

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 26
    .line 27
    monitor-enter p1

    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 29
    .line 30
    invoke-virtual {p0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Lcom/android/server/connectivity/Vpn;

    .line 35
    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->resetUidListInNetworkCapabilities()V

    .line 39
    .line 40
    .line 41
    :cond_1
    monitor-exit p1

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0

    .line 46
    :cond_2
    iget-object p1, p0, Lcom/android/server/VpnManagerService;->knoxVpnLock:Ljava/lang/Object;

    .line 47
    .line 48
    monitor-enter p1

    .line 49
    :try_start_1
    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    .line 50
    .line 51
    invoke-virtual {v2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Ljava/util/HashMap;

    .line 56
    .line 57
    if-eqz v2, :cond_3

    .line 58
    .line 59
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_3

    .line 64
    .line 65
    const-string v2, "VpnManagerService"

    .line 66
    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v1, " in user "

    .line 76
    .line 77
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, " is removed"

    .line 84
    .line 85
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 96
    .line 97
    .line 98
    move-result-wide v1

    .line 99
    iget-object v3, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    .line 100
    .line 101
    invoke-virtual {v3, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    check-cast v3, Ljava/util/HashMap;

    .line 106
    .line 107
    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    check-cast v3, Lcom/android/server/connectivity/EnterpriseVpn;

    .line 112
    .line 113
    const/4 v4, 0x0

    .line 114
    invoke-virtual {v3, p2, v4}, Lcom/android/server/connectivity/EnterpriseVpn;->showNotification(Ljava/lang/String;Z)V

    .line 115
    .line 116
    .line 117
    iget-object v3, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    .line 118
    .line 119
    invoke-virtual {v3, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    check-cast v3, Ljava/util/HashMap;

    .line 124
    .line 125
    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    check-cast v3, Lcom/android/server/connectivity/EnterpriseVpn;

    .line 130
    .line 131
    invoke-virtual {v3}, Lcom/android/server/connectivity/EnterpriseVpn;->cleanupObjects()V

    .line 132
    .line 133
    .line 134
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 135
    .line 136
    .line 137
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    .line 138
    .line 139
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    check-cast v1, Ljava/util/HashMap;

    .line 144
    .line 145
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :catchall_1
    move-exception p0

    .line 150
    goto :goto_1

    .line 151
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    .line 152
    .line 153
    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    check-cast p2, Ljava/util/HashMap;

    .line 158
    .line 159
    if-eqz p2, :cond_4

    .line 160
    .line 161
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-eqz v1, :cond_4

    .line 166
    .line 167
    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    .line 168
    .line 169
    .line 170
    move-result p2

    .line 171
    if-eqz p2, :cond_5

    .line 172
    .line 173
    :cond_4
    const-string p2, "VpnManagerService"

    .line 174
    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v0, " is removed"

    .line 184
    .line 185
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    .line 196
    .line 197
    invoke-virtual {p0, p3}, Landroid/util/SparseArray;->delete(I)V

    .line 198
    .line 199
    .line 200
    :cond_5
    monitor-exit p1

    .line 201
    return-void

    .line 202
    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 203
    throw p0
.end method

.method public final removeFromVpnProfileStore(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/net/module/util/PermissionUtils;->enforceNetworkStackPermission(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpnProfileStore:Lcom/android/server/connectivity/VpnProfileStore;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/VpnProfileStore;->remove(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final removeVpnAddress(Ljava/lang/String;I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mDeps:Lcom/android/server/VpnManagerService$Dependencies;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 15
    .line 16
    monitor-enter v1

    .line 17
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->throwIfLockdownEnabled()V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lcom/android/server/connectivity/Vpn;

    .line 27
    .line 28
    invoke-virtual {p0, p2, p1}, Lcom/android/server/connectivity/Vpn;->removeAddress(ILjava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    monitor-exit v1

    .line 33
    return p0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p0
.end method

.method public final resetUidListInNetworkCapabilities(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string/jumbo v0, "com.samsung.sVpn"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    if-eqz p3, :cond_2

    .line 18
    .line 19
    iget-object p3, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 20
    .line 21
    monitor-enter p3

    .line 22
    :try_start_0
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Lcom/android/server/connectivity/Vpn;

    .line 29
    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->resetUidListInNetworkCapabilities()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    monitor-exit p3

    .line 39
    return-void

    .line 40
    :goto_1
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0

    .line 42
    :cond_2
    iget-object p3, p0, Lcom/android/server/VpnManagerService;->knoxVpnLock:Ljava/lang/Object;

    .line 43
    .line 44
    monitor-enter p3

    .line 45
    :try_start_1
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    .line 46
    .line 47
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    .line 54
    .line 55
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Ljava/util/HashMap;

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    check-cast p0, Lcom/android/server/connectivity/EnterpriseVpn;

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :catchall_1
    move-exception p0

    .line 69
    goto :goto_3

    .line 70
    :cond_3
    const/4 p0, 0x0

    .line 71
    :goto_2
    if-eqz p0, :cond_4

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->resetUidListInNetworkCapabilities()V

    .line 74
    .line 75
    .line 76
    :cond_4
    monitor-exit p3

    .line 77
    return-void

    .line 78
    :goto_3
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 79
    throw p0
.end method

.method public final setAlwaysOnVpnPackage(ILjava/lang/String;ZLjava/util/List;)Z
    .locals 4

    .line 1
    const-string v0, "User "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v2, "android.permission.CONTROL_ALWAYS_ON_VPN"

    .line 6
    .line 7
    const-string v3, "VpnManagerService"

    .line 8
    .line 9
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/VpnManagerService;->enforceCrossUserPermission(I)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 16
    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->isLockdownVpnEnabled()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    monitor-exit v1

    .line 26
    return v3

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 30
    .line 31
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/android/server/connectivity/Vpn;

    .line 36
    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    new-instance p0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p1, " has no Vpn configuration"

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-static {p0}, Lcom/android/server/VpnManagerService;->logw(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    monitor-exit v1

    .line 60
    return v3

    .line 61
    :cond_1
    invoke-virtual {v2, p2, p4, p3}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;Ljava/util/List;Z)Z

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    if-nez p2, :cond_2

    .line 66
    .line 67
    monitor-exit v1

    .line 68
    return v3

    .line 69
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/VpnManagerService;->startAlwaysOnVpn(I)Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-nez p0, :cond_3

    .line 74
    .line 75
    const/4 p0, 0x0

    .line 76
    invoke-virtual {v2, p0, p0, v3}, Lcom/android/server/connectivity/Vpn;->setAlwaysOnPackage(Ljava/lang/String;Ljava/util/List;Z)Z

    .line 77
    .line 78
    .line 79
    monitor-exit v1

    .line 80
    return v3

    .line 81
    :cond_3
    monitor-exit v1

    .line 82
    const/4 p0, 0x1

    .line 83
    return p0

    .line 84
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    throw p0
.end method

.method public final setAppExclusionList(ILjava/lang/String;Ljava/util/List;)Z
    .locals 3

    .line 1
    const-string v0, "VPN for user "

    .line 2
    .line 3
    const-string v1, "User "

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->enforceSettingsPermission()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/VpnManagerService;->enforceCrossUserPermission(I)V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 12
    .line 13
    monitor-enter v2

    .line 14
    :try_start_0
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Lcom/android/server/connectivity/Vpn;

    .line 21
    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceNotRestrictedUser()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p2, p3}, Lcom/android/server/connectivity/Vpn;->storeAppExclusionList(Ljava/lang/String;Ljava/util/List;)Z

    .line 29
    .line 30
    .line 31
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    const/4 p0, 0x0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    :try_start_3
    invoke-virtual {p0, p3}, Lcom/android/server/connectivity/Vpn;->updateAppExclusionList(Ljava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 38
    .line 39
    .line 40
    :try_start_4
    monitor-exit p0

    .line 41
    const/4 p0, 0x1

    .line 42
    :goto_0
    monitor-exit v2

    .line 43
    return p0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :catchall_1
    move-exception p1

    .line 47
    monitor-exit p0

    .line 48
    throw p1

    .line 49
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string p2, " has no Vpn configuration"

    .line 58
    .line 59
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-static {p0}, Lcom/android/server/VpnManagerService;->logw(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 70
    .line 71
    new-instance p2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string p1, " not ready yet. Skipping setting the list"

    .line 80
    .line 81
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p0

    .line 92
    :goto_1
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 93
    throw p0
.end method

.method public final setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/android/server/VpnManagerService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/net/LockdownVpnTracker;->shutdownLocked()V

    .line 12
    .line 13
    .line 14
    monitor-exit v1

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0

    .line 19
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/server/VpnManagerService;->mLockdownTracker:Lcom/android/server/net/LockdownVpnTracker;

    .line 22
    .line 23
    iget-object p0, p1, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter p0

    .line 26
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/net/LockdownVpnTracker;->initLocked()V

    .line 27
    .line 28
    .line 29
    monitor-exit p0

    .line 30
    goto :goto_1

    .line 31
    :catchall_1
    move-exception p1

    .line 32
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    throw p1

    .line 34
    :cond_1
    :goto_1
    return-void
.end method

.method public final setUnderlyingNetworksForVpn([Landroid/net/Network;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mDeps:Lcom/android/server/VpnManagerService$Dependencies;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 15
    .line 16
    monitor-enter v1

    .line 17
    :try_start_0
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lcom/android/server/connectivity/Vpn;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->setUnderlyingNetworks([Landroid/net/Network;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    monitor-exit v1

    .line 30
    return p0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
.end method

.method public final setVpnPackageAuthorization(Ljava/lang/String;II)V
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/server/VpnManagerService;->enforceCrossUserPermission(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/android/server/connectivity/Vpn;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, p3, p1}, Lcom/android/server/connectivity/Vpn;->setPackageAuthorization(ILjava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method

.method public final startAlwaysOnVpn(I)Z
    .locals 3

    .line 1
    const-string v0, "User "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/android/server/connectivity/Vpn;

    .line 13
    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    const-string p0, "VpnManagerService"

    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, " has no Vpn configuration"

    .line 27
    .line 28
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    monitor-exit v1

    .line 39
    const/4 p0, 0x0

    .line 40
    return p0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->startAlwaysOnVpn()Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    monitor-exit v1

    .line 48
    return p0

    .line 49
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p0
.end method

.method public final startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    if-lt v0, v1, :cond_1

    .line 6
    .line 7
    iget v0, p1, Lcom/android/internal/net/VpnProfile;->type:I

    .line 8
    .line 9
    invoke-static {v0}, Lcom/android/internal/net/VpnProfile;->isLegacyType(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 17
    .line 18
    const-string p1, "Legacy VPN is deprecated"

    .line 19
    .line 20
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p0

    .line 24
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mDeps:Lcom/android/server/VpnManagerService$Dependencies;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iget-object v1, p1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p0, v1}, Lcom/android/server/VpnManagerService;->knoxVpnProfileType(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    const/4 v2, 0x1

    .line 44
    if-ne v1, v2, :cond_3

    .line 45
    .line 46
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mDefaultNetworkCallback:Lcom/android/server/VpnManagerService$NetworkCallback;

    .line 47
    .line 48
    iget-object v1, v1, Lcom/android/server/VpnManagerService$NetworkCallback;->mLinkProperties:Landroid/net/LinkProperties;

    .line 49
    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    const-string p1, "Missing active default network"

    .line 56
    .line 57
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0

    .line 61
    :cond_3
    const/4 v1, 0x0

    .line 62
    :goto_1
    iget-object v2, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 63
    .line 64
    monitor-enter v2

    .line 65
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->throwIfLockdownEnabled()V

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 69
    .line 70
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    check-cast p0, Lcom/android/server/connectivity/Vpn;

    .line 75
    .line 76
    invoke-virtual {p0, p1, v1}, Lcom/android/server/connectivity/Vpn;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;Landroid/net/LinkProperties;)V

    .line 77
    .line 78
    .line 79
    monitor-exit v2

    .line 80
    return-void

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    throw p0
.end method

.method public final startVpnProfile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/android/server/VpnManagerService;->verifyCallingUidAndPackage(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 13
    .line 14
    monitor-enter v1

    .line 15
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->throwIfLockdownEnabled()V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Lcom/android/server/connectivity/Vpn;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->startVpnProfile(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    monitor-exit v1

    .line 31
    return-object p0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method

.method public final stopVpnProfile(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/android/server/VpnManagerService;->verifyCallingUidAndPackage(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 13
    .line 14
    monitor-enter v1

    .line 15
    :try_start_0
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lcom/android/server/connectivity/Vpn;

    .line 22
    .line 23
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    :try_start_1
    const-string v0, "No package name provided"

    .line 25
    .line 26
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->enforceNotRestrictedUser()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn;->isCurrentIkev2VpnLocked(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn;->stopVpnRunnerAndNotifyAppLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 45
    monitor-exit v1

    .line 46
    return-void

    .line 47
    :catchall_1
    move-exception p0

    .line 48
    goto :goto_2

    .line 49
    :goto_1
    monitor-exit p0

    .line 50
    throw p1

    .line 51
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 52
    throw p0
.end method

.method public final throwIfLockdownEnabled()V
    .locals 1

    .line 1
    iget-boolean p0, p0, Lcom/android/server/VpnManagerService;->mLockdownEnabled:Z

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v0, "Unavailable in lockdown mode"

    .line 9
    .line 10
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p0
.end method

.method public final unregisterSystemDefaultNetworkCallback()V
    .locals 5

    .line 1
    const-string v0, "Failed to unregister system default network callback "

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    :try_start_0
    iget-object v3, p0, Lcom/android/server/VpnManagerService;->mDefaultNetworkCallback:Lcom/android/server/VpnManagerService$NetworkCallback;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    iget-object v4, p0, Lcom/android/server/VpnManagerService;->mCm:Landroid/net/ConnectivityManager;

    .line 12
    .line 13
    invoke-virtual {v4, v3}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_4

    .line 19
    :catch_0
    move-exception p0

    .line 20
    goto :goto_2

    .line 21
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 22
    iput-object v3, p0, Lcom/android/server/VpnManagerService;->mDefaultNetworkCallback:Lcom/android/server/VpnManagerService$NetworkCallback;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 25
    .line 26
    .line 27
    goto :goto_3

    .line 28
    :goto_2
    :try_start_1
    const-string v3, "VpnManagerService"

    .line 29
    .line 30
    new-instance v4, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :goto_3
    return-void

    .line 51
    :goto_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    .line 53
    .line 54
    throw p0
.end method

.method public final updateEnterpriseVpn(Ljava/lang/String;IZ)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-ne v0, v1, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->knoxVpnLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-ge v2, v3, :cond_1

    .line 21
    .line 22
    iget-object v3, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    iget-object v4, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    .line 29
    .line 30
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    .line 37
    .line 38
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lcom/android/server/connectivity/EnterpriseVpn;

    .line 49
    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_3

    .line 55
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    :goto_1
    if-eqz v1, :cond_3

    .line 59
    .line 60
    iget-object p1, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iget-object v2, v1, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    .line 67
    .line 68
    if-eqz v2, :cond_3

    .line 69
    .line 70
    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    .line 71
    .line 72
    if-ne p1, v2, :cond_3

    .line 73
    .line 74
    if-nez p3, :cond_2

    .line 75
    .line 76
    invoke-virtual {p0, p2}, Lcom/android/server/VpnManagerService;->hasInterfaceAsUser(I)Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-nez p0, :cond_3

    .line 81
    .line 82
    invoke-virtual {v1, p2, p3}, Lcom/android/server/connectivity/EnterpriseVpn;->refreshNotification(IZ)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, p2}, Lcom/android/server/connectivity/EnterpriseVpn;->hideNotification(I)V

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_2
    invoke-virtual {v1, p2, p3}, Lcom/android/server/connectivity/EnterpriseVpn;->refreshNotification(IZ)V

    .line 90
    .line 91
    .line 92
    :cond_3
    :goto_2
    monitor-exit v0

    .line 93
    return-void

    .line 94
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    throw p0

    .line 96
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    .line 97
    .line 98
    invoke-direct {p0}, Ljava/lang/SecurityException;-><init>()V

    .line 99
    .line 100
    .line 101
    throw p0
.end method

.method public final updateLocalProxyInfo(Ljava/lang/String;ILjava/lang/String;Landroid/net/ProxyInfo;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string/jumbo v0, "com.samsung.sVpn"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    if-eqz p3, :cond_2

    .line 18
    .line 19
    iget-object p3, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 20
    .line 21
    monitor-enter p3

    .line 22
    :try_start_0
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Lcom/android/server/connectivity/Vpn;

    .line 29
    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0, p4}, Lcom/android/server/connectivity/Vpn;->updateLocalProxyInfo(Landroid/net/ProxyInfo;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    monitor-exit p3

    .line 39
    return-void

    .line 40
    :goto_1
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0

    .line 42
    :cond_2
    iget-object p3, p0, Lcom/android/server/VpnManagerService;->knoxVpnLock:Ljava/lang/Object;

    .line 43
    .line 44
    monitor-enter p3

    .line 45
    :try_start_1
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    .line 46
    .line 47
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    .line 54
    .line 55
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Ljava/util/HashMap;

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    check-cast p0, Lcom/android/server/connectivity/EnterpriseVpn;

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :catchall_1
    move-exception p0

    .line 69
    goto :goto_3

    .line 70
    :cond_3
    const/4 p0, 0x0

    .line 71
    :goto_2
    if-eqz p0, :cond_4

    .line 72
    .line 73
    iput-object p4, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mHttpProxyInfo:Landroid/net/ProxyInfo;

    .line 74
    .line 75
    iget-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkAgent:Lcom/android/server/connectivity/EnterpriseVpn$1;

    .line 76
    .line 77
    if-eqz p1, :cond_4

    .line 78
    .line 79
    iget-object p2, p0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    .line 80
    .line 81
    if-eqz p2, :cond_4

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->makeLinkProperties()Landroid/net/LinkProperties;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p1, p0}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    .line 88
    .line 89
    .line 90
    :cond_4
    monitor-exit p3

    .line 91
    return-void

    .line 92
    :goto_3
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 93
    throw p0
.end method

.method public final updateLockdownVpn()Z
    .locals 9

    .line 1
    const-string v0, "VPN for user "

    .line 2
    .line 3
    const-string v1, "Lockdown VPN configured invalid profile "

    .line 4
    .line 5
    const-string v2, "VPN_"

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/VpnManagerService;->mDeps:Lcom/android/server/VpnManagerService$Dependencies;

    .line 8
    .line 9
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    const/16 v4, 0x3e8

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    if-eq v3, v4, :cond_0

    .line 20
    .line 21
    iget-object v3, p0, Lcom/android/server/VpnManagerService;->mDeps:Lcom/android/server/VpnManagerService$Dependencies;

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    iget v6, p0, Lcom/android/server/VpnManagerService;->mMainUserId:I

    .line 31
    .line 32
    invoke-static {v6, v4}, Landroid/os/UserHandle;->getUid(II)I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eq v3, v4, :cond_0

    .line 37
    .line 38
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eq v3, v4, :cond_0

    .line 47
    .line 48
    const-string p0, "Lockdown VPN only available to system process or AID_SYSTEM on main user"

    .line 49
    .line 50
    invoke-static {p0}, Lcom/android/server/VpnManagerService;->logw(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return v5

    .line 54
    :cond_0
    iget-object v3, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 55
    .line 56
    monitor-enter v3

    .line 57
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/VpnManagerService;->isLockdownVpnEnabled()Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    iput-boolean v4, p0, Lcom/android/server/VpnManagerService;->mLockdownEnabled:Z

    .line 62
    .line 63
    const/4 v6, 0x0

    .line 64
    const/4 v7, 0x1

    .line 65
    if-nez v4, :cond_1

    .line 66
    .line 67
    invoke-virtual {p0, v6}, Lcom/android/server/VpnManagerService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V

    .line 68
    .line 69
    .line 70
    monitor-exit v3

    .line 71
    return v7

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    iget-object v4, p0, Lcom/android/server/VpnManagerService;->mVpnProfileStore:Lcom/android/server/connectivity/VpnProfileStore;

    .line 75
    .line 76
    const-string v8, "LOCKDOWN_VPN"

    .line 77
    .line 78
    invoke-virtual {v4, v8}, Lcom/android/server/connectivity/VpnProfileStore;->get(Ljava/lang/String;)[B

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    if-nez v4, :cond_2

    .line 83
    .line 84
    const-string p0, "Lockdown VPN configured but cannot be read from keystore"

    .line 85
    .line 86
    const-string v0, "VpnManagerService"

    .line 87
    .line 88
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    monitor-exit v3

    .line 92
    return v5

    .line 93
    :cond_2
    new-instance v8, Ljava/lang/String;

    .line 94
    .line 95
    invoke-direct {v8, v4}, Ljava/lang/String;-><init>([B)V

    .line 96
    .line 97
    .line 98
    iget-object v4, p0, Lcom/android/server/VpnManagerService;->mVpnProfileStore:Lcom/android/server/connectivity/VpnProfileStore;

    .line 99
    .line 100
    invoke-virtual {v2, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v4, v2}, Lcom/android/server/connectivity/VpnProfileStore;->get(Ljava/lang/String;)[B

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-static {v8, v2}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    if-nez v2, :cond_3

    .line 113
    .line 114
    invoke-virtual {v1, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    const-string v1, "VpnManagerService"

    .line 119
    .line 120
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, v6}, Lcom/android/server/VpnManagerService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V

    .line 124
    .line 125
    .line 126
    monitor-exit v3

    .line 127
    return v7

    .line 128
    :cond_3
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mDeps:Lcom/android/server/VpnManagerService$Dependencies;

    .line 129
    .line 130
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    iget-object v4, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 142
    .line 143
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    check-cast v4, Lcom/android/server/connectivity/Vpn;

    .line 148
    .line 149
    if-nez v4, :cond_4

    .line 150
    .line 151
    new-instance p0, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v0, " not ready yet. Skipping lockdown"

    .line 160
    .line 161
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    invoke-static {p0}, Lcom/android/server/VpnManagerService;->logw(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    monitor-exit v3

    .line 172
    return v5

    .line 173
    :cond_4
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mDeps:Lcom/android/server/VpnManagerService$Dependencies;

    .line 174
    .line 175
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    .line 176
    .line 177
    iget-object v5, p0, Lcom/android/server/VpnManagerService;->mHandler:Landroid/os/Handler;

    .line 178
    .line 179
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    new-instance v0, Lcom/android/server/net/LockdownVpnTracker;

    .line 183
    .line 184
    invoke-direct {v0, v1, v5, v4, v2}, Lcom/android/server/net/LockdownVpnTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnProfile;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0, v0}, Lcom/android/server/VpnManagerService;->setLockdownTracker(Lcom/android/server/net/LockdownVpnTracker;)V

    .line 188
    .line 189
    .line 190
    monitor-exit v3

    .line 191
    return v7

    .line 192
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    throw p0
.end method

.method public final updateNotificationIcon(I)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-ne v0, v1, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/android/server/connectivity/Vpn;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->getNetwork()Landroid/net/Network;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Lcom/android/server/connectivity/Vpn;->updateNotificationIconForKnoxStrongSwan(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_3

    .line 34
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->knoxVpnLock:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter v1

    .line 38
    :try_start_1
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    check-cast p0, Ljava/util/HashMap;

    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Lcom/android/server/connectivity/EnterpriseVpn;

    .line 73
    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    iget-object v2, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 77
    .line 78
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    iget-object v3, v0, Lcom/android/server/connectivity/EnterpriseVpn;->mInterface:Ljava/lang/String;

    .line 83
    .line 84
    if-eqz v3, :cond_1

    .line 85
    .line 86
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    .line 87
    .line 88
    if-ne v2, v3, :cond_1

    .line 89
    .line 90
    sget-boolean p0, Lcom/android/server/VpnManagerService;->DBG:Z

    .line 91
    .line 92
    if-eqz p0, :cond_2

    .line 93
    .line 94
    const-string p0, "VpnManagerService"

    .line 95
    .line 96
    const-string/jumbo v2, "updateNotificationIcon is called"

    .line 97
    .line 98
    .line 99
    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :catchall_1
    move-exception p0

    .line 104
    goto :goto_2

    .line 105
    :cond_2
    :goto_1
    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/EnterpriseVpn;->updateNotificationIcon(I)V

    .line 106
    .line 107
    .line 108
    monitor-exit v1

    .line 109
    return-void

    .line 110
    :cond_3
    monitor-exit v1

    .line 111
    return-void

    .line 112
    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 113
    throw p0

    .line 114
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    throw p0

    .line 116
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    .line 117
    .line 118
    invoke-direct {p0}, Ljava/lang/SecurityException;-><init>()V

    .line 119
    .line 120
    .line 121
    throw p0
.end method

.method public final updateUidRangesToPerAppVpn(Ljava/lang/String;IZ[ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string/jumbo v0, "com.samsung.sVpn"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p5

    .line 17
    const/4 v0, 0x0

    .line 18
    if-eqz p5, :cond_3

    .line 19
    .line 20
    iget-object p5, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 21
    .line 22
    monitor-enter p5

    .line 23
    :try_start_0
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lcom/android/server/connectivity/Vpn;

    .line 30
    .line 31
    if-eqz p0, :cond_2

    .line 32
    .line 33
    new-instance p1, Ljava/util/HashSet;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 36
    .line 37
    .line 38
    array-length p2, p4

    .line 39
    :goto_0
    if-ge v0, p2, :cond_1

    .line 40
    .line 41
    aget v1, p4, v0

    .line 42
    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    add-int/lit8 v0, v0, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/android/server/connectivity/Vpn;->updateUidRangesToPerAppVpn(Ljava/util/Set;Z)V

    .line 56
    .line 57
    .line 58
    :cond_2
    monitor-exit p5

    .line 59
    return-void

    .line 60
    :goto_1
    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p0

    .line 62
    :cond_3
    iget-object p5, p0, Lcom/android/server/VpnManagerService;->knoxVpnLock:Ljava/lang/Object;

    .line 63
    .line 64
    monitor-enter p5

    .line 65
    :try_start_1
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    .line 66
    .line 67
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-eqz v1, :cond_4

    .line 72
    .line 73
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    .line 74
    .line 75
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    check-cast p0, Ljava/util/HashMap;

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    check-cast p0, Lcom/android/server/connectivity/EnterpriseVpn;

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :catchall_1
    move-exception p0

    .line 89
    goto :goto_4

    .line 90
    :cond_4
    const/4 p0, 0x0

    .line 91
    :goto_2
    if-eqz p0, :cond_6

    .line 92
    .line 93
    new-instance p1, Ljava/util/HashSet;

    .line 94
    .line 95
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 96
    .line 97
    .line 98
    array-length p2, p4

    .line 99
    :goto_3
    if-ge v0, p2, :cond_5

    .line 100
    .line 101
    aget v1, p4, v0

    .line 102
    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    add-int/lit8 v0, v0, 0x1

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_5
    invoke-virtual {p0, p1, p3}, Lcom/android/server/connectivity/EnterpriseVpn;->updateUidRangesToPerAppVpn(Ljava/util/Set;Z)V

    .line 114
    .line 115
    .line 116
    :cond_6
    monitor-exit p5

    .line 117
    return-void

    .line 118
    :goto_4
    monitor-exit p5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 119
    throw p0
.end method

.method public final updateUidRangesToUserVpn(Ljava/lang/String;IZILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string/jumbo v0, "com.samsung.sVpn"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p5

    .line 17
    if-eqz p5, :cond_2

    .line 18
    .line 19
    iget-object p5, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 20
    .line 21
    monitor-enter p5

    .line 22
    :try_start_0
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Lcom/android/server/connectivity/Vpn;

    .line 29
    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0, p4, p3}, Lcom/android/server/connectivity/Vpn;->updateUidRangesToUserVpn(IZ)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    monitor-exit p5

    .line 39
    return-void

    .line 40
    :goto_1
    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0

    .line 42
    :cond_2
    iget-object p5, p0, Lcom/android/server/VpnManagerService;->knoxVpnLock:Ljava/lang/Object;

    .line 43
    .line 44
    monitor-enter p5

    .line 45
    :try_start_1
    iget-object v0, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    .line 46
    .line 47
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    .line 54
    .line 55
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Ljava/util/HashMap;

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    check-cast p0, Lcom/android/server/connectivity/EnterpriseVpn;

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :catchall_1
    move-exception p0

    .line 69
    goto :goto_3

    .line 70
    :cond_3
    const/4 p0, 0x0

    .line 71
    :goto_2
    if-eqz p0, :cond_4

    .line 72
    .line 73
    invoke-virtual {p0, p4, p3}, Lcom/android/server/connectivity/EnterpriseVpn;->updateUidRangesToUserVpn(IZ)V

    .line 74
    .line 75
    .line 76
    :cond_4
    monitor-exit p5

    .line 77
    return-void

    .line 78
    :goto_3
    monitor-exit p5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 79
    throw p0
.end method

.method public final updateUidRangesToUserVpnWithBlackList(Ljava/lang/String;II[ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string/jumbo v0, "com.samsung.sVpn"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p5

    .line 17
    const/4 v0, 0x0

    .line 18
    if-eqz p5, :cond_3

    .line 19
    .line 20
    iget-object p5, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 21
    .line 22
    monitor-enter p5

    .line 23
    :try_start_0
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mVpns:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lcom/android/server/connectivity/Vpn;

    .line 30
    .line 31
    if-eqz p0, :cond_2

    .line 32
    .line 33
    new-instance p1, Ljava/util/HashSet;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 36
    .line 37
    .line 38
    array-length p2, p4

    .line 39
    :goto_0
    if-ge v0, p2, :cond_1

    .line 40
    .line 41
    aget v1, p4, v0

    .line 42
    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    add-int/lit8 v0, v0, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    invoke-virtual {p0, p3, p1}, Lcom/android/server/connectivity/Vpn;->updateUidRangesToUserVpnWithBlackList(ILjava/util/Set;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    monitor-exit p5

    .line 59
    return-void

    .line 60
    :goto_1
    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p0

    .line 62
    :cond_3
    iget-object p5, p0, Lcom/android/server/VpnManagerService;->knoxVpnLock:Ljava/lang/Object;

    .line 63
    .line 64
    monitor-enter p5

    .line 65
    :try_start_1
    iget-object v1, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    .line 66
    .line 67
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-eqz v1, :cond_4

    .line 72
    .line 73
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mEnterpriseVpnStoreObj:Landroid/util/SparseArray;

    .line 74
    .line 75
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    check-cast p0, Ljava/util/HashMap;

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    check-cast p0, Lcom/android/server/connectivity/EnterpriseVpn;

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :catchall_1
    move-exception p0

    .line 89
    goto :goto_4

    .line 90
    :cond_4
    const/4 p0, 0x0

    .line 91
    :goto_2
    if-eqz p0, :cond_6

    .line 92
    .line 93
    new-instance p1, Ljava/util/HashSet;

    .line 94
    .line 95
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 96
    .line 97
    .line 98
    array-length p2, p4

    .line 99
    :goto_3
    if-ge v0, p2, :cond_5

    .line 100
    .line 101
    aget v1, p4, v0

    .line 102
    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    add-int/lit8 v0, v0, 0x1

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_5
    invoke-virtual {p0, p3, p1}, Lcom/android/server/connectivity/EnterpriseVpn;->updateUidRangesToUserVpnWithBlackList(ILjava/util/Set;)V

    .line 114
    .line 115
    .line 116
    :cond_6
    monitor-exit p5

    .line 117
    return-void

    .line 118
    :goto_4
    monitor-exit p5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 119
    throw p0
.end method

.method public final verifyCallingUidAndPackage(ILjava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object p0, p0, Lcom/android/server/VpnManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    :try_start_0
    invoke-virtual {p0, p2, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 25
    .line 26
    .line 27
    throw p0

    .line 28
    :catch_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    .line 30
    .line 31
    const/4 p0, -0x1

    .line 32
    :goto_0
    if-ne p0, p1, :cond_0

    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 36
    .line 37
    const-string v0, " does not belong to uid "

    .line 38
    .line 39
    invoke-static {p1, p2, v0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p0
.end method
