.class public final Lcom/android/server/power/ForegroundPackageObserver;
.super Ljava/util/Observable;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActivityManager:Landroid/app/ActivityManager;

.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mActivityManagerNative:Landroid/app/IActivityManager;

.field public mEnabled:Z

.field public mForegroundPackageName:Ljava/lang/String;

.field public final mForegroundPidSet:Ljava/util/LinkedHashSet;

.field public final mProcessObserver:Lcom/android/server/power/ForegroundPackageObserver$1;


# direct methods
.method public constructor <init>(Landroid/app/ActivityManager;Landroid/app/IActivityManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/power/ForegroundPackageObserver;->mForegroundPackageName:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/android/server/power/ForegroundPackageObserver;->mEnabled:Z

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/power/ForegroundPackageObserver$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/power/ForegroundPackageObserver$1;-><init>(Lcom/android/server/power/ForegroundPackageObserver;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/power/ForegroundPackageObserver;->mProcessObserver:Lcom/android/server/power/ForegroundPackageObserver$1;

    .line 17
    .line 18
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/power/ForegroundPackageObserver;->mForegroundPidSet:Ljava/util/LinkedHashSet;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/power/ForegroundPackageObserver;->mActivityManager:Landroid/app/ActivityManager;

    .line 26
    .line 27
    const-class p1, Landroid/app/ActivityManagerInternal;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Landroid/app/ActivityManagerInternal;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/android/server/power/ForegroundPackageObserver;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 36
    .line 37
    iput-object p2, p0, Lcom/android/server/power/ForegroundPackageObserver;->mActivityManagerNative:Landroid/app/IActivityManager;

    .line 38
    .line 39
    return-void
.end method

.method public static synthetic access$000(Lcom/android/server/power/ForegroundPackageObserver;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final declared-synchronized addObserver(Ljava/util/Observer;)V
    .locals 3

    .line 1
    const-string v0, "addObserver: "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    const-string v1, "ForegroundPackageObserver"

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    invoke-super {p0, p1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/util/Observable;->countObservers()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x1

    .line 29
    if-lez v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Lcom/android/server/power/ForegroundPackageObserver;->setEnabled(Z)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_2

    .line 37
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/ForegroundPackageObserver;->mForegroundPackageName:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/server/power/ForegroundPackageObserver;->mActivityManager:Landroid/app/ActivityManager;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    const-string v0, ""

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 65
    .line 66
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/ForegroundPackageObserver;->mForegroundPackageName:Ljava/lang/String;

    .line 74
    .line 75
    :goto_1
    invoke-interface {p1, p0, v0}, Ljava/util/Observer;->update(Ljava/util/Observable;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .line 77
    .line 78
    monitor-exit p0

    .line 79
    return-void

    .line 80
    :goto_2
    monitor-exit p0

    .line 81
    throw p1
.end method

.method public final declared-synchronized deleteObserver(Ljava/util/Observer;)V
    .locals 3

    .line 1
    const-string v0, "deleteObserver: "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    const-string v1, "ForegroundPackageObserver"

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    invoke-super {p0, p1}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/util/Observable;->countObservers()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/server/power/ForegroundPackageObserver;->setEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    monitor-exit p0

    .line 38
    return-void

    .line 39
    :goto_1
    monitor-exit p0

    .line 40
    throw p1
.end method

.method public final setEnabled(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/power/ForegroundPackageObserver;->mEnabled:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/android/server/power/ForegroundPackageObserver;->mEnabled:Z

    .line 6
    .line 7
    const-string v0, "ForegroundPackageObserver"

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    :try_start_0
    const-string/jumbo p1, "register process observer"

    .line 12
    .line 13
    .line 14
    invoke-static {v0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/server/power/ForegroundPackageObserver;->mActivityManagerNative:Landroid/app/IActivityManager;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/power/ForegroundPackageObserver;->mProcessObserver:Lcom/android/server/power/ForegroundPackageObserver$1;

    .line 20
    .line 21
    invoke-interface {p1, p0}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :catch_0
    move-exception p0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string/jumbo p1, "unregister process observer"

    .line 28
    .line 29
    .line 30
    invoke-static {v0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/android/server/power/ForegroundPackageObserver;->mActivityManagerNative:Landroid/app/IActivityManager;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/server/power/ForegroundPackageObserver;->mProcessObserver:Lcom/android/server/power/ForegroundPackageObserver$1;

    .line 36
    .line 37
    invoke-interface {p1, v1}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/android/server/power/ForegroundPackageObserver;->mForegroundPidSet:Ljava/util/LinkedHashSet;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->clear()V

    .line 43
    .line 44
    .line 45
    const-string p1, ""

    .line 46
    .line 47
    iput-object p1, p0, Lcom/android/server/power/ForegroundPackageObserver;->mForegroundPackageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :goto_0
    const-string p1, "Failed to register/unregister process observer"

    .line 51
    .line 52
    invoke-static {v0, p1, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_1
    return-void
.end method
