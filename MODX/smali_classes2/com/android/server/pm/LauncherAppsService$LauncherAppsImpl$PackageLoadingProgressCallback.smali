.class public final Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageLoadingProgressCallback;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBinder:Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback$LoadingProgressCallbackBinder;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mPackageName:Ljava/lang/String;

.field public final mUser:Landroid/os/UserHandle;

.field public final synthetic this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageLoadingProgressCallback;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mCallbackHandler:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance v0, Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback$LoadingProgressCallbackBinder;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback$LoadingProgressCallbackBinder;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageLoadingProgressCallback;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageLoadingProgressCallback;->mBinder:Landroid/content/pm/PackageManagerInternal$InstalledLoadingProgressCallback$LoadingProgressCallbackBinder;

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    new-instance p1, Landroid/os/Handler;

    .line 18
    .line 19
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    new-instance v0, Landroid/os/HandlerExecutor;

    .line 27
    .line 28
    invoke-direct {v0, p1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageLoadingProgressCallback;->mExecutor:Ljava/util/concurrent/Executor;

    .line 32
    .line 33
    iput-object p2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageLoadingProgressCallback;->mPackageName:Ljava/lang/String;

    .line 34
    .line 35
    iput-object p3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageLoadingProgressCallback;->mUser:Landroid/os/UserHandle;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final onLoadingProgressChanged(F)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageLoadingProgressCallback;->mPackageName:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageLoadingProgressCallback;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-ge v3, v2, :cond_2

    .line 13
    .line 14
    :try_start_0
    iget-object v4, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 15
    .line 16
    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Landroid/content/pm/IOnAppsChangedListener;

    .line 21
    .line 22
    iget-object v5, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 23
    .line 24
    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    check-cast v5, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 29
    .line 30
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageLoadingProgressCallback;->mUser:Landroid/os/UserHandle;

    .line 31
    .line 32
    const-string/jumbo v7, "onLoadingProgressChanged"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v6, v5, v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isEnabledProfileOf(Landroid/os/UserHandle;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-nez v6, :cond_0

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageLoadingProgressCallback;->mUser:Landroid/os/UserHandle;

    .line 43
    .line 44
    invoke-virtual {v1, v6, v5, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isPackageVisibleToListener(Landroid/os/UserHandle;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    if-nez v5, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageLoadingProgressCallback;->mUser:Landroid/os/UserHandle;

    .line 52
    .line 53
    invoke-interface {v4, v5, v0, p1}, Landroid/content/pm/IOnAppsChangedListener;->onPackageLoadingProgressChanged(Landroid/os/UserHandle;Ljava/lang/String;F)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_2

    .line 59
    :catch_0
    move-exception v4

    .line 60
    :try_start_2
    const-string v5, "LauncherAppsService"

    .line 61
    .line 62
    const-string v6, "Callback failed "

    .line 63
    .line 64
    invoke-static {v5, v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    .line 66
    .line 67
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :goto_2
    iget-object p1, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 73
    .line 74
    .line 75
    throw p0

    .line 76
    :cond_2
    iget-object p0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 79
    .line 80
    .line 81
    return-void
.end method
