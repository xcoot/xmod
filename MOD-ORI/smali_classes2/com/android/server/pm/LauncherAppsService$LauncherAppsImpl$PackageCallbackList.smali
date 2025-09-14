.class public final Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
.super Landroid/os/RemoteCallbackList;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 2
    .line 3
    iget-object p2, p2, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 4
    .line 5
    monitor-enter p2

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mRegisteredListenersForDump:Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mRegisteredListenersForDump:Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 30
    .line 31
    monitor-enter p1

    .line 32
    :try_start_1
    iget-object p2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 33
    .line 34
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-nez p2, :cond_1

    .line 39
    .line 40
    iget-boolean p2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mIsWatchingPackageBroadcasts:Z

    .line 41
    .line 42
    if-eqz p2, :cond_1

    .line 43
    .line 44
    iget-object p2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageRemovedListener:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageRemovedListener;

    .line 47
    .line 48
    invoke-virtual {p2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageMonitor:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    .line 52
    .line 53
    invoke-virtual {p2}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 54
    .line 55
    .line 56
    const/4 p2, 0x0

    .line 57
    iput-boolean p2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mIsWatchingPackageBroadcasts:Z

    .line 58
    .line 59
    :cond_1
    monitor-exit p1

    .line 60
    return-void

    .line 61
    :catchall_1
    move-exception p0

    .line 62
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 63
    throw p0

    .line 64
    :goto_1
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    throw p0
.end method
