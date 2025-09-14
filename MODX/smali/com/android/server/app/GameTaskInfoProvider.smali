.class public final Lcom/android/server/app/GameTaskInfoProvider;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActivityTaskManager:Landroid/app/IActivityTaskManager;

.field public final mGameClassifier:Lcom/android/server/app/GameClassifierImpl;

.field public final mGameTaskInfoCache:Landroid/util/LruCache;

.field public final mLock:Ljava/lang/Object;

.field public final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/os/UserHandle;Landroid/app/IActivityTaskManager;Lcom/android/server/app/GameClassifierImpl;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/app/GameTaskInfoProvider;->mLock:Ljava/lang/Object;

    .line 11
    new-instance v0, Landroid/util/LruCache;

    .line 13
    const/16 v1, 0x32

    .line 15
    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    .line 18
    iput-object v0, p0, Lcom/android/server/app/GameTaskInfoProvider;->mGameTaskInfoCache:Landroid/util/LruCache;

    .line 20
    iput-object p1, p0, Lcom/android/server/app/GameTaskInfoProvider;->mUserHandle:Landroid/os/UserHandle;

    .line 22
    iput-object p2, p0, Lcom/android/server/app/GameTaskInfoProvider;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 24
    iput-object p3, p0, Lcom/android/server/app/GameTaskInfoProvider;->mGameClassifier:Lcom/android/server/app/GameClassifierImpl;

    .line 26
    return-void
.end method


# virtual methods
.method public final generateGameInfo(ILandroid/content/ComponentName;)Lcom/android/server/app/GameTaskInfo;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/server/app/GameTaskInfo;

    .line 3
    iget-object v1, p0, Lcom/android/server/app/GameTaskInfoProvider;->mGameClassifier:Lcom/android/server/app/GameClassifierImpl;

    .line 5
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 8
    move-result-object v2

    .line 9
    iget-object v3, p0, Lcom/android/server/app/GameTaskInfoProvider;->mUserHandle:Landroid/os/UserHandle;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    const/4 v4, 0x0

    .line 15
    :try_start_0
    iget-object v1, v1, Lcom/android/server/app/GameClassifierImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 17
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 20
    move-result v3

    .line 21
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 24
    move-result-object v1

    .line 25
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->category:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    if-nez v1, :cond_0

    .line 29
    const/4 v4, 0x1

    .line 30
    :catch_0
    :cond_0
    invoke-direct {v0, p1, p2, v4}, Lcom/android/server/app/GameTaskInfo;-><init>(ILandroid/content/ComponentName;Z)V

    .line 33
    iget-object p2, p0, Lcom/android/server/app/GameTaskInfoProvider;->mLock:Ljava/lang/Object;

    .line 35
    monitor-enter p2

    .line 36
    :try_start_1
    iget-object p0, p0, Lcom/android/server/app/GameTaskInfoProvider;->mGameTaskInfoCache:Landroid/util/LruCache;

    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p0, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    monitor-exit p2

    .line 46
    return-object v0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw p0
.end method

.method public final getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/android/server/app/GameTaskInfoProvider;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 4
    const v1, 0x7fffffff

    .line 7
    const/4 v2, -0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-interface {p0, v1, v3, v3, v2}, Landroid/app/IActivityTaskManager;->getTasks(IZZI)Ljava/util/List;

    .line 12
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p0

    .line 17
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 29
    iget v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 31
    if-ne v2, p1, :cond_0

    .line 33
    return-object v1

    .line 34
    :cond_1
    return-object v0

    .line 35
    :catch_0
    const-string p0, "GameTaskInfoProvider"

    .line 37
    const-string p1, "Failed to fetch running tasks"

    .line 39
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-object v0
.end method
