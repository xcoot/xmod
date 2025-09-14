.class public final Lcom/android/server/location/injector/SystemPackageResetHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mReceiver:Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;

.field public final mResponders:Ljava/util/concurrent/CopyOnWriteArrayList;


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
    iput-object v0, p0, Lcom/android/server/location/injector/SystemPackageResetHelper;->mResponders:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/location/injector/SystemPackageResetHelper;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final notifyPackageReset(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "package "

    .line 2
    .line 3
    .line 4
    const-string v1, " reset"

    .line 5
    .line 6
    const-string v2, "LocationManagerService"

    .line 7
    .line 8
    invoke-static {v0, p1, v1, v2}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/location/injector/SystemPackageResetHelper;->mResponders:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/android/server/location/injector/PackageResetHelper$Responder;

    .line 28
    .line 29
    invoke-interface {v0, p1}, Lcom/android/server/location/injector/PackageResetHelper$Responder;->onPackageReset(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

.method public final onRegister()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/location/injector/SystemPackageResetHelper;->mReceiver:Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;-><init>(Lcom/android/server/location/injector/SystemPackageResetHelper;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/location/injector/SystemPackageResetHelper;->mReceiver:Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;

    .line 17
    .line 18
    new-instance v0, Landroid/content/IntentFilter;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string/jumbo v1, "package"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/android/server/location/injector/SystemPackageResetHelper;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/location/injector/SystemPackageResetHelper;->mReceiver:Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;

    .line 52
    .line 53
    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final declared-synchronized register(Lcom/android/server/location/injector/PackageResetHelper$Responder;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/injector/SystemPackageResetHelper;->mResponders:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lcom/android/server/location/injector/SystemPackageResetHelper;->mResponders:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemPackageResetHelper;->onRegister()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :goto_1
    monitor-exit p0

    .line 24
    throw p1
.end method

.method public final declared-synchronized unregister(Lcom/android/server/location/injector/PackageResetHelper$Responder;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/injector/SystemPackageResetHelper;->mResponders:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/server/location/injector/SystemPackageResetHelper;->mResponders:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/server/location/injector/SystemPackageResetHelper;->mReceiver:Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/server/location/injector/SystemPackageResetHelper;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/location/injector/SystemPackageResetHelper;->mReceiver:Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lcom/android/server/location/injector/SystemPackageResetHelper;->mReceiver:Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    :cond_1
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    monitor-exit p0

    .line 39
    throw p1
.end method
