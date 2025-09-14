.class public final Lcom/android/server/search/SearchManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBootCompleteReceiver:Lcom/android/server/search/SearchManagerService$Lifecycle$1;

.field public mService:Lcom/android/server/search/SearchManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/android/server/search/SearchManagerService$Lifecycle$1;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/android/server/search/SearchManagerService$Lifecycle$1;-><init>(Lcom/android/server/search/SearchManagerService$Lifecycle;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/search/SearchManagerService$Lifecycle;->mBootCompleteReceiver:Lcom/android/server/search/SearchManagerService$Lifecycle$1;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 7

    .line 1
    const/16 v0, 0x3e8

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    new-instance v4, Landroid/content/IntentFilter;

    .line 6
    .line 7
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string p1, "android.intent.action.BOOT_COMPLETED"

    .line 11
    .line 12
    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p0, Lcom/android/server/search/SearchManagerService$Lifecycle;->mBootCompleteReceiver:Lcom/android/server/search/SearchManagerService$Lifecycle$1;

    .line 23
    .line 24
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    const/4 v6, 0x0

    .line 28
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    const-string p0, "SearchManagerService"

    .line 33
    .line 34
    const-string p1, "Lifecycle: fail boot register"

    .line 35
    .line 36
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :cond_0
    :goto_0
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/search/SearchManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/search/SearchManagerService$Lifecycle;->mService:Lcom/android/server/search/SearchManagerService;

    .line 11
    .line 12
    const-string/jumbo v1, "search"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/search/SearchManagerService$Lifecycle;->mService:Lcom/android/server/search/SearchManagerService;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/search/SearchManagerService;->mSearchables:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
.end method
