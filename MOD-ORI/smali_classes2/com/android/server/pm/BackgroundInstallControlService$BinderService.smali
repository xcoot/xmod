.class public final Lcom/android/server/pm/BackgroundInstallControlService$BinderService;
.super Landroid/content/pm/IBackgroundInstallControlService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mService:Lcom/android/server/pm/BackgroundInstallControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/BackgroundInstallControlService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/pm/IBackgroundInstallControlService$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/BackgroundInstallControlService$BinderService;->mService:Lcom/android/server/pm/BackgroundInstallControlService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getBackgroundInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;
    .locals 5

    .line 1
    invoke-static {}, Landroid/app/Flags;->bicClient()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlService$BinderService;->mService:Lcom/android/server/pm/BackgroundInstallControlService;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/pm/BackgroundInstallControlService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const-string v1, "android.permission.GET_BACKGROUND_INSTALLED_PACKAGES"

    .line 12
    .line 13
    const-string v2, "User is not permitted to call service: android.permission.GET_BACKGROUND_INSTALLED_PACKAGES"

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService$BinderService;->mService:Lcom/android/server/pm/BackgroundInstallControlService;

    .line 23
    .line 24
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/BackgroundInstallControlService;->getBackgroundInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_1
    const-string v0, "debug.transparency.bg-install-apps"

    .line 30
    .line 31
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService$BinderService;->mService:Lcom/android/server/pm/BackgroundInstallControlService;

    .line 42
    .line 43
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/BackgroundInstallControlService;->getBackgroundInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :cond_2
    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService$BinderService;->mService:Lcom/android/server/pm/BackgroundInstallControlService;

    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    const-string p1, ","

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    new-instance p2, Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .line 63
    .line 64
    array-length p3, p1

    .line 65
    const/4 v0, 0x0

    .line 66
    :goto_0
    if-ge v0, p3, :cond_3

    .line 67
    .line 68
    aget-object v1, p1, v0

    .line 69
    .line 70
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 71
    .line 72
    const-wide/32 v3, 0x20000

    .line 73
    .line 74
    .line 75
    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :catch_0
    const-string v2, "Package\'s PackageInfo not found "

    .line 88
    .line 89
    const-string v3, "BackgroundInstallControlService"

    .line 90
    .line 91
    invoke-static {v2, v1, v3}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    .line 98
    .line 99
    invoke-direct {p0, p2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 100
    .line 101
    .line 102
    return-object p0
.end method

.method public final registerBackgroundInstallCallback(Landroid/os/IRemoteCallback;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService$BinderService;->mService:Lcom/android/server/pm/BackgroundInstallControlService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mCallbackHelper:Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
.end method

.method public final unregisterBackgroundInstallCallback(Landroid/os/IRemoteCallback;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService$BinderService;->mService:Lcom/android/server/pm/BackgroundInstallControlService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlService;->mCallbackHelper:Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method
