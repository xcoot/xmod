.class public final Lcom/android/server/people/PeopleService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mLazyConversationListenerHelper:Lcom/android/server/people/PeopleService$ConversationListenerHelper;

.field public mLazyDataManager:Lcom/android/server/people/data/DataManager;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field final mService:Landroid/os/IBinder;


# direct methods
.method public static -$$Nest$mcheckCallerIsSameApp(Lcom/android/server/people/PeopleService;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iget-object p0, p0, Lcom/android/server/people/PeopleService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 13
    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    invoke-virtual {p0, p1, v2, v3, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-ne p0, v0, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 24
    .line 25
    const-string v1, "Calling uid "

    .line 26
    .line 27
    const-string v2, " cannot query eventsfor package "

    .line 28
    .line 29
    invoke-static {v0, v1, v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p0
.end method

.method public static -$$Nest$mhandleIncomingUser(Lcom/android/server/people/PeopleService;I)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const-string v6, ""

    .line 17
    .line 18
    const/4 v5, 0x1

    .line 19
    const/4 v7, 0x0

    .line 20
    const/4 v4, 0x1

    .line 21
    move v3, p1

    .line 22
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    :catch_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/android/server/people/PeopleService$1;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/android/server/people/PeopleService$1;-><init>(Lcom/android/server/people/PeopleService;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/people/PeopleService;->mService:Landroid/os/IBinder;

    .line 10
    .line 11
    return-void
.end method

.method public static isSystemOrRoot()Z
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
    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    :goto_1
    return v0
.end method


# virtual methods
.method public enforceSystemRootOrSystemUI(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/server/people/PeopleService;->isSystemOrRoot()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string p0, "android.permission.STATUS_BAR_SERVICE"

    .line 9
    .line 10
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public getConversationListenerHelper()Lcom/android/server/people/PeopleService$ConversationListenerHelper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/people/PeopleService;->mLazyConversationListenerHelper:Lcom/android/server/people/PeopleService$ConversationListenerHelper;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/people/PeopleService;->initLazyStuff()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/server/people/PeopleService;->mLazyConversationListenerHelper:Lcom/android/server/people/PeopleService$ConversationListenerHelper;

    .line 9
    .line 10
    return-object p0
.end method

.method public final getDataManager()Lcom/android/server/people/data/DataManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/people/PeopleService;->mLazyDataManager:Lcom/android/server/people/data/DataManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/people/PeopleService;->initLazyStuff()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/server/people/PeopleService;->mLazyDataManager:Lcom/android/server/people/data/DataManager;

    .line 9
    .line 10
    return-object p0
.end method

.method public final declared-synchronized initLazyStuff()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/PeopleService;->mLazyDataManager:Lcom/android/server/people/data/DataManager;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/android/server/people/data/DataManager;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-direct {v0, v1}, Lcom/android/server/people/data/DataManager;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/server/people/PeopleService;->mLazyDataManager:Lcom/android/server/people/data/DataManager;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/server/people/data/DataManager;->initialize()V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/android/server/people/PeopleService$ConversationListenerHelper;

    .line 21
    .line 22
    invoke-direct {v0}, Lcom/android/server/people/PeopleService$ConversationListenerHelper;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/server/people/PeopleService;->mLazyConversationListenerHelper:Lcom/android/server/people/PeopleService$ConversationListenerHelper;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/people/PeopleService;->mLazyDataManager:Lcom/android/server/people/data/DataManager;

    .line 28
    .line 29
    iget-object v2, v1, Lcom/android/server/people/data/DataManager;->mLock:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 32
    :try_start_1
    iget-object v1, v1, Lcom/android/server/people/data/DataManager;->mConversationsListeners:Ljava/util/List;

    .line 33
    .line 34
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    check-cast v1, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    monitor-exit v2

    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 47
    :catchall_1
    move-exception v0

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    :goto_0
    monitor-exit p0

    .line 50
    return-void

    .line 51
    :goto_1
    monitor-exit p0

    .line 52
    throw v0
.end method

.method public final onStart()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/server/people/PeopleService;->onStart(Z)V

    return-void
.end method

.method public onStart(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 2
    const-string/jumbo p1, "people"

    iget-object v0, p0, Lcom/android/server/people/PeopleService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 3
    :cond_0
    const-class p1, Lcom/android/server/people/PeopleServiceInternal;

    new-instance v0, Lcom/android/server/people/PeopleService$LocalService;

    invoke-direct {v0, p0}, Lcom/android/server/people/PeopleService$LocalService;-><init>(Lcom/android/server/people/PeopleService;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 4
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    iput-object p1, p0, Lcom/android/server/people/PeopleService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-void
.end method

.method public final onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/people/PeopleService;->getDataManager()Lcom/android/server/people/data/DataManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/android/server/people/data/UserData;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    iput-boolean v2, v1, Lcom/android/server/people/data/UserData;->mIsUnlocked:Z

    .line 24
    .line 25
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 27
    .line 28
    new-instance v1, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda0;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/data/DataManager;II)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    throw p0
.end method

.method public final onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/people/PeopleService;->getDataManager()Lcom/android/server/people/data/DataManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/android/server/people/data/UserData;

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    new-instance v1, Lcom/android/server/people/data/UserData;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 25
    .line 26
    invoke-direct {v1, p1, v2}, Lcom/android/server/people/data/UserData;-><init>(ILjava/util/concurrent/ScheduledExecutorService;)V

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    .line 30
    .line 31
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    const/4 v2, 0x1

    .line 38
    iput-boolean v2, v1, Lcom/android/server/people/data/UserData;->mIsUnlocked:Z

    .line 39
    .line 40
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 42
    .line 43
    new-instance v1, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda0;

    .line 44
    .line 45
    const/4 v2, 0x1

    .line 46
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/data/DataManager;II)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    throw p0
.end method
