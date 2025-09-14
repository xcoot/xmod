.class public final Lcom/android/server/pm/AppCategoryHintHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final FILE_PATH:Ljava/lang/String;

.field public static final FILE_PATH_DEVELOPER:Ljava/lang/String;


# instance fields
.field public mAppCategoryFilter:Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;

.field public final mCategoryLock:Ljava/lang/Object;

.field public final mCategoryMap:Ljava/util/HashMap;

.field public final mCategoryMapDeveloper:Ljava/util/HashMap;

.field public final mChangedByDeveloperApp:Landroid/util/ArraySet;

.field public final mChangedByUserApp:Landroid/util/ArraySet;

.field public mHandler:Landroid/os/Handler;

.field public final mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mService:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, "/system/"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string/jumbo v1, "package-appcategory.dat"

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    sput-object v1, Lcom/android/server/pm/AppCategoryHintHelper;->FILE_PATH:Ljava/lang/String;

    .line 34
    .line 35
    const-string/jumbo v1, "package-appcategory_dev.dat"

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sput-object v0, Lcom/android/server/pm/AppCategoryHintHelper;->FILE_PATH_DEVELOPER:Ljava/lang/String;

    .line 43
    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryMap:Ljava/util/HashMap;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryMapDeveloper:Ljava/util/HashMap;

    .line 24
    .line 25
    new-instance v0, Landroid/util/ArraySet;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mChangedByUserApp:Landroid/util/ArraySet;

    .line 31
    .line 32
    new-instance v0, Landroid/util/ArraySet;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mChangedByDeveloperApp:Landroid/util/ArraySet;

    .line 38
    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    .line 47
    return-void
.end method

.method public static isSystemServerOrDebuggableShell()Z
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
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    :cond_0
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/16 v1, 0x7d0

    .line 30
    .line 31
    if-ne v0, v1, :cond_2

    .line 32
    .line 33
    :cond_1
    const/4 v0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const/4 v0, 0x0

    .line 36
    :goto_0
    return v0
.end method


# virtual methods
.method public final clearAppCategoryHintBy(Lcom/android/server/pm/AppCategoryHintHelper$CategoryBy;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/4 v0, 0x1

    .line 22
    if-eq p1, v0, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryMap:Ljava/util/HashMap;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mChangedByUserApp:Landroid/util/ArraySet;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object p1, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryMapDeveloper:Ljava/util/HashMap;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mChangedByDeveloperApp:Landroid/util/ArraySet;

    .line 32
    .line 33
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryLock:Ljava/lang/Object;

    .line 34
    .line 35
    monitor-enter v1

    .line 36
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    iget-object p1, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mHandler:Landroid/os/Handler;

    .line 44
    .line 45
    new-instance p2, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda0;

    .line 46
    .line 47
    invoke-direct {p2, p0}, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/AppCategoryHintHelper;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mHandler:Landroid/os/Handler;

    .line 54
    .line 55
    new-instance p2, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda0;

    .line 56
    .line 57
    invoke-direct {p2, p0}, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/AppCategoryHintHelper;)V

    .line 58
    .line 59
    .line 60
    const-wide/16 v0, 0xbb8

    .line 61
    .line 62
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    throw p0

    .line 69
    :cond_1
    const-string p0, "AppCategoryHintHelper"

    .line 70
    .line 71
    const-string/jumbo p1, "packageName is null or empty!"

    .line 72
    .line 73
    .line 74
    invoke-static {p0, p1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    new-instance p0, Landroid/os/RemoteException;

    .line 78
    .line 79
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p0

    .line 83
    :cond_2
    const-string p0, "AppCategoryHintHelper"

    .line 84
    .line 85
    const-string p1, "AppCategoryHintHelper is not initialized, can\'t set category"

    .line 86
    .line 87
    invoke-static {p0, p1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    new-instance p0, Landroid/os/RemoteException;

    .line 91
    .line 92
    const-string p1, "AppCategoryHintHelper is not initialized, can\'t set category"

    .line 93
    .line 94
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p0
.end method

.method public final getAppCategoryHintDeveloper(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string p0, "AppCategoryHintHelper"

    .line 11
    .line 12
    const-string p1, "AppCategoryHintHelper is not initialized, can\'t get category"

    .line 13
    .line 14
    invoke-static {p0, p1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryMapDeveloper:Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryMapDeveloper:Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Ljava/lang/Integer;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    monitor-exit v0

    .line 45
    return v1

    .line 46
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p0
.end method

.method public final getAppCategoryHintUser(Ljava/lang/String;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string p0, "AppCategoryHintHelper"

    .line 11
    .line 12
    const-string p1, "AppCategoryHintHelper is not initialized, can\'t get category"

    .line 13
    .line 14
    invoke-static {p0, p1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryMap:Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryMap:Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Ljava/lang/Integer;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    monitor-exit v0

    .line 45
    return v1

    .line 46
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p0
.end method

.method public final onInit(Lcom/android/server/pm/PackageManagerService;Landroid/os/Handler;Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iput-object p1, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mHandler:Landroid/os/Handler;

    .line 13
    .line 14
    iput-object p3, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mAppCategoryFilter:Lcom/samsung/android/server/pm/appcategory/AppCategoryFilter;

    .line 15
    .line 16
    sget-object p1, Lcom/android/server/pm/AppCategoryHintHelper$CategoryBy;->User:Lcom/android/server/pm/AppCategoryHintHelper$CategoryBy;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppCategoryHintHelper;->readCategoryBy(Lcom/android/server/pm/AppCategoryHintHelper$CategoryBy;)V

    .line 19
    .line 20
    .line 21
    sget-object p1, Lcom/android/server/pm/AppCategoryHintHelper$CategoryBy;->Developer:Lcom/android/server/pm/AppCategoryHintHelper$CategoryBy;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppCategoryHintHelper;->readCategoryBy(Lcom/android/server/pm/AppCategoryHintHelper$CategoryBy;)V

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 30
    .line 31
    .line 32
    const-string p0, "AppCategoryHintHelper"

    .line 33
    .line 34
    const-string p1, "AppCategoryHintHelper init!"

    .line 35
    .line 36
    invoke-static {p0, p1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final readCategoryBy(Lcom/android/server/pm/AppCategoryHintHelper$CategoryBy;)V
    .locals 6

    .line 1
    const-string/jumbo v0, "read AppCategoryHintUser "

    .line 2
    .line 3
    .line 4
    const-string v1, "categoryMap read error! "

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eq p1, v2, :cond_0

    .line 12
    .line 13
    new-instance p1, Ljava/io/File;

    .line 14
    .line 15
    sget-object v2, Lcom/android/server/pm/AppCategoryHintHelper;->FILE_PATH:Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryMap:Ljava/util/HashMap;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance p1, Ljava/io/File;

    .line 24
    .line 25
    sget-object v2, Lcom/android/server/pm/AppCategoryHintHelper;->FILE_PATH_DEVELOPER:Ljava/lang/String;

    .line 26
    .line 27
    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryMapDeveloper:Ljava/util/HashMap;

    .line 31
    .line 32
    :goto_0
    iget-object p0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryLock:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter p0

    .line 35
    :try_start_0
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    .line 39
    .line 40
    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    .line 42
    .line 43
    :try_start_2
    new-instance v4, Ljava/io/ObjectInputStream;

    .line 44
    .line 45
    invoke-direct {v4, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 46
    .line 47
    .line 48
    :try_start_3
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    check-cast v5, Ljava/util/HashMap;

    .line 53
    .line 54
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 55
    .line 56
    .line 57
    :try_start_4
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 58
    .line 59
    .line 60
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 61
    .line 62
    .line 63
    goto :goto_4

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    goto :goto_5

    .line 66
    :catchall_1
    move-exception v4

    .line 67
    goto :goto_2

    .line 68
    :catchall_2
    move-exception v5

    .line 69
    :try_start_6
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :catchall_3
    move-exception v4

    .line 74
    :try_start_7
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    :goto_1
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 78
    :goto_2
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 79
    .line 80
    .line 81
    goto :goto_3

    .line 82
    :catchall_4
    move-exception v3

    .line 83
    :try_start_9
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    :goto_3
    throw v4
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 87
    :catch_0
    :try_start_a
    const-string v3, "AppCategoryHintHelper"

    .line 88
    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-static {v3, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    :goto_4
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_1

    .line 113
    .line 114
    const-string v1, "AppCategoryHintHelper"

    .line 115
    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-static {v1, p1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    new-instance p1, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda4;

    .line 136
    .line 137
    const/4 v0, 0x0

    .line 138
    invoke-direct {p1, v0}, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda4;-><init>(I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 142
    .line 143
    .line 144
    :cond_1
    monitor-exit p0

    .line 145
    return-void

    .line 146
    :goto_5
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 147
    throw p1
.end method

.method public final sendAppCategoryBroadcast(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p0, "AppCategoryHintHelper"

    .line 10
    .line 11
    const-string p1, "AppCategoryHintHelper is not initialized, sendAppCategoryBroadcast is not required."

    .line 12
    .line 13
    invoke-static {p0, p1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 21
    .line 22
    .line 23
    const-string v1, "android.intent.extra.PACKAGE_NAME"

    .line 24
    .line 25
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "app_category"

    .line 29
    .line 30
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    new-instance p1, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda59;

    .line 39
    .line 40
    invoke-direct {p1, p0, p2, v0}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda59;-><init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final setAppCategoryHintBy(Lcom/android/server/pm/AppCategoryHintHelper$CategoryBy;Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    if-eqz p2, :cond_2

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    const/4 v0, -0x1

    .line 18
    if-ne p3, v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/AppCategoryHintHelper;->clearAppCategoryHintBy(Lcom/android/server/pm/AppCategoryHintHelper$CategoryBy;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/4 v0, 0x1

    .line 29
    if-eq p1, v0, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryMap:Ljava/util/HashMap;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mChangedByUserApp:Landroid/util/ArraySet;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object p1, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryMapDeveloper:Ljava/util/HashMap;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mChangedByDeveloperApp:Landroid/util/ArraySet;

    .line 39
    .line 40
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryLock:Ljava/lang/Object;

    .line 41
    .line 42
    monitor-enter v1

    .line 43
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    iget-object p1, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mHandler:Landroid/os/Handler;

    .line 55
    .line 56
    new-instance p2, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda0;

    .line 57
    .line 58
    invoke-direct {p2, p0}, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/AppCategoryHintHelper;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mHandler:Landroid/os/Handler;

    .line 65
    .line 66
    new-instance p2, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda0;

    .line 67
    .line 68
    invoke-direct {p2, p0}, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/AppCategoryHintHelper;)V

    .line 69
    .line 70
    .line 71
    const-wide/16 v0, 0xbb8

    .line 72
    .line 73
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    throw p0

    .line 80
    :cond_2
    const-string p0, "AppCategoryHintHelper"

    .line 81
    .line 82
    const-string/jumbo p1, "packageName is null or empty!"

    .line 83
    .line 84
    .line 85
    invoke-static {p0, p1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    new-instance p0, Landroid/os/RemoteException;

    .line 89
    .line 90
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p0

    .line 94
    :cond_3
    const-string p0, "AppCategoryHintHelper"

    .line 95
    .line 96
    const-string p1, "AppCategoryHintHelper is not initialized, can\'t set category"

    .line 97
    .line 98
    invoke-static {p0, p1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    new-instance p0, Landroid/os/RemoteException;

    .line 102
    .line 103
    const-string p1, "AppCategoryHintHelper is not initialized, can\'t set category"

    .line 104
    .line 105
    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p0
.end method

.method public final writeAppCategoryBy(Lcom/android/server/pm/AppCategoryHintHelper$CategoryBy;)V
    .locals 8

    .line 1
    const-string/jumbo v0, "write AppCategoryHintUser "

    .line 2
    .line 3
    .line 4
    const-string v1, "categoryMap write error! "

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eq p1, v2, :cond_0

    .line 12
    .line 13
    new-instance p1, Ljava/io/File;

    .line 14
    .line 15
    sget-object v2, Lcom/android/server/pm/AppCategoryHintHelper;->FILE_PATH:Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryMap:Ljava/util/HashMap;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mChangedByUserApp:Landroid/util/ArraySet;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance p1, Ljava/io/File;

    .line 26
    .line 27
    sget-object v2, Lcom/android/server/pm/AppCategoryHintHelper;->FILE_PATH_DEVELOPER:Ljava/lang/String;

    .line 28
    .line 29
    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryMapDeveloper:Ljava/util/HashMap;

    .line 33
    .line 34
    iget-object v3, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mChangedByDeveloperApp:Landroid/util/ArraySet;

    .line 35
    .line 36
    :goto_0
    iget-object v4, p0, Lcom/android/server/pm/AppCategoryHintHelper;->mCategoryLock:Ljava/lang/Object;

    .line 37
    .line 38
    monitor-enter v4

    .line 39
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    .line 40
    .line 41
    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    :try_start_1
    new-instance v6, Ljava/io/ObjectOutputStream;

    .line 45
    .line 46
    invoke-direct {v6, v5}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 47
    .line 48
    .line 49
    :try_start_2
    invoke-virtual {v6, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 50
    .line 51
    .line 52
    :try_start_3
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 53
    .line 54
    .line 55
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 56
    .line 57
    .line 58
    goto :goto_4

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_5

    .line 61
    :catchall_1
    move-exception v6

    .line 62
    goto :goto_2

    .line 63
    :catchall_2
    move-exception v7

    .line 64
    :try_start_5
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catchall_3
    move-exception v6

    .line 69
    :try_start_6
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    :goto_1
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 73
    :goto_2
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 74
    .line 75
    .line 76
    goto :goto_3

    .line 77
    :catchall_4
    move-exception v5

    .line 78
    :try_start_8
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    :goto_3
    throw v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 82
    :catch_0
    :try_start_9
    const-string v5, "AppCategoryHintHelper"

    .line 83
    .line 84
    new-instance v6, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-static {v5, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    :goto_4
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_1

    .line 108
    .line 109
    const-string v1, "AppCategoryHintHelper"

    .line 110
    .line 111
    new-instance v5, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-static {v1, p1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    new-instance p1, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda4;

    .line 131
    .line 132
    const/4 v0, 0x1

    .line 133
    invoke-direct {p1, v0}, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda4;-><init>(I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 137
    .line 138
    .line 139
    :cond_1
    new-instance p1, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda6;

    .line 140
    .line 141
    invoke-direct {p1, p0, v2}, Lcom/android/server/pm/AppCategoryHintHelper$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/pm/AppCategoryHintHelper;Ljava/util/HashMap;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    .line 148
    .line 149
    .line 150
    monitor-exit v4

    .line 151
    return-void

    .line 152
    :goto_5
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 153
    throw p0
.end method
