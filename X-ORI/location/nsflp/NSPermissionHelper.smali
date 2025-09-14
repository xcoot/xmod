.class public final Lcom/android/server/location/nsflp/NSPermissionHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

.field public final mUidObserver:Lcom/android/server/location/nsflp/NSPermissionHelper$UidObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;Lcom/android/server/location/nsflp/NSConnectionHelper;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "NSPermissionHelper"

    .line 5
    .line 6
    const-string/jumbo v1, "constructor"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Lcom/android/server/location/nsflp/NSPermissionHelper;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 13
    .line 14
    new-instance p2, Lcom/android/server/location/nsflp/NSPermissionHelper$UidObserver;

    .line 15
    .line 16
    invoke-direct {p2}, Landroid/app/IUidObserver$Stub;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v0, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p2, Lcom/android/server/location/nsflp/NSPermissionHelper$UidObserver;->mUidState:Ljava/util/HashMap;

    .line 25
    .line 26
    iput-object p2, p0, Lcom/android/server/location/nsflp/NSPermissionHelper;->mUidObserver:Lcom/android/server/location/nsflp/NSPermissionHelper$UidObserver;

    .line 27
    .line 28
    const-string p0, "SystemUserInfoHelper"

    .line 29
    .line 30
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :try_start_1
    iget-object v0, p1, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->mActivityManager:Landroid/app/IActivityManager;

    .line 32
    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p1, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->mActivityManager:Landroid/app/IActivityManager;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p2

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    :goto_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    :try_start_2
    iget-object p1, p1, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->mActivityManager:Landroid/app/IActivityManager;

    .line 46
    .line 47
    const/4 v0, 0x3

    .line 48
    const/4 v1, -0x1

    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-interface {p1, p2, v0, v1, v2}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string p1, "Success to registerUidObserver"

    .line 54
    .line 55
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_3

    .line 59
    :catch_0
    move-exception p1

    .line 60
    goto :goto_2

    .line 61
    :goto_1
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    :try_start_4
    throw p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 63
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v0, "Failed to registerUidObserver, "

    .line 66
    .line 67
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    :goto_3
    return-void
.end method
