.class public final Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mActivityManager:Landroid/app/IActivityManager;

.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mContext:Landroid/content/Context;

.field public final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public mUserManager:Landroid/os/UserManager;

.field public mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final getActivityManagerInternal()Landroid/app/ActivityManagerInternal;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 21
    .line 22
    return-object p0

    .line 23
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw v0
.end method

.method public final getCurrentUserId()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    .line 17
    .line 18
    return p0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    .line 22
    .line 23
    throw p0

    .line 24
    :cond_0
    const/16 p0, -0x2710

    .line 25
    .line 26
    return p0
.end method

.method public final getRunningUserIds()[I
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->mActivityManager:Landroid/app/IActivityManager;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->mActivityManager:Landroid/app/IActivityManager;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_2

    .line 15
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->mActivityManager:Landroid/app/IActivityManager;

    .line 17
    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    :try_start_1
    invoke-interface {p0}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    .line 25
    .line 26
    .line 27
    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 28
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    .line 30
    .line 31
    return-object p0

    .line 32
    :catchall_1
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :catch_0
    move-exception p0

    .line 35
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 40
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 41
    .line 42
    .line 43
    throw p0

    .line 44
    :cond_1
    const/4 p0, 0x0

    .line 45
    new-array p0, p0, [I

    .line 46
    .line 47
    return-object p0

    .line 48
    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 49
    throw v0
.end method

.method public final getUserManager()Landroid/os/UserManager;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->mUserManager:Landroid/os/UserManager;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    const-class v1, Landroid/os/UserManager;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/os/UserManager;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->mUserManager:Landroid/os/UserManager;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->mUserManager:Landroid/os/UserManager;

    .line 23
    .line 24
    return-object p0

    .line 25
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw v0
.end method

.method public final isVisibleUserId(I)Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 10
    .line 11
    .line 12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18
    :try_start_2
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$Lifecycle$LifecycleUserInfoHelper;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 19
    .line 20
    invoke-virtual {v2, p1}, Lcom/android/server/pm/UserManagerInternal;->isUserVisible(I)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 26
    .line 27
    .line 28
    return p1

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 31
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 32
    :catchall_1
    move-exception p0

    .line 33
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    .line 35
    .line 36
    throw p0

    .line 37
    :catchall_2
    move-exception p1

    .line 38
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 39
    throw p1
.end method
