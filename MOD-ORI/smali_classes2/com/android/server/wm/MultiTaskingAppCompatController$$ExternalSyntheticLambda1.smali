.class public final synthetic Lcom/android/server/wm/MultiTaskingAppCompatController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/MultiTaskingAppCompatController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiTaskingAppCompatController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingAppCompatController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/MultiTaskingAppCompatController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/MultiTaskingAppCompatController;

    .line 2
    .line 3
    sget-object v0, Lcom/android/server/wm/CompatChangeableAppsCache$LazyHolder;->sCache:Lcom/android/server/wm/CompatChangeableAppsCache;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    new-instance v2, Landroid/content/IntentFilter;

    .line 10
    .line 11
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string/jumbo v3, "package"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v3, Lcom/android/server/wm/CompatChangeableAppsCache$1;

    .line 36
    .line 37
    invoke-direct {v3}, Lcom/android/server/wm/CompatChangeableAppsCache$1;-><init>()V

    .line 38
    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-virtual {v1, v3, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    monitor-enter v0

    .line 45
    :try_start_0
    new-instance v1, Landroid/util/SparseArray;

    .line 46
    .line 47
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object v1, v0, Lcom/android/server/wm/CompatChangeableAppsCache;->mAppsArray:Landroid/util/SparseArray;

    .line 51
    .line 52
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 53
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_STATUS_LOGGING:Z

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingAppCompatController;->mMultiTaskingAppCompatStatusLogger:Lcom/android/server/wm/MultiTaskingAppCompatStatusLogger;

    .line 58
    .line 59
    if-nez p0, :cond_0

    .line 60
    .line 61
    sget-object p0, Lcom/android/server/wm/CoreSaStatusLoggingService;->sCoreSaStatusLoggers:Ljava/util/HashSet;

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_0
    sget-object v0, Lcom/android/server/wm/CoreSaStatusLoggingService;->sCoreSaStatusLoggers:Ljava/util/HashSet;

    .line 65
    .line 66
    monitor-enter v0

    .line 67
    :try_start_1
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    if-eqz v1, :cond_1

    .line 75
    .line 76
    invoke-static {}, Lcom/android/server/wm/CoreSaStatusLoggingService;->schedule()V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    const-string p0, "CoreSaStatusLoggingService"

    .line 84
    .line 85
    const-string/jumbo v0, "registerCoreSaStatusLogger logger=MultiTaskingAppCompatStatusLogger"

    .line 86
    .line 87
    .line 88
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    throw p0

    .line 94
    :cond_2
    :goto_2
    return-void

    .line 95
    :catchall_1
    move-exception p0

    .line 96
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 97
    throw p0
.end method
