.class public final Lcom/android/server/notification/NotificationHistoryManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z

.field static final DIRECTORY_PER_USER:Ljava/lang/String; = "notification_history"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHistoryEnabled:Landroid/util/SparseBooleanArray;

.field public final mLock:Ljava/lang/Object;

.field final mSettingsObserver:Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserPendingHistoryDisables:Landroid/util/SparseBooleanArray;

.field public final mUserPendingPackageRemovals:Landroid/util/SparseArray;

.field public final mUserState:Landroid/util/SparseArray;

.field public final mUserUnlockedStates:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/android/server/notification/NotificationHistoryManager;->DEBUG:Z

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/notification/NotificationManagerService$WorkerHandler;)V
    .locals 1

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
    iput-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    .line 17
    .line 18
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    .line 24
    .line 25
    new-instance v0, Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingPackageRemovals:Landroid/util/SparseArray;

    .line 31
    .line 32
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mHistoryEnabled:Landroid/util/SparseBooleanArray;

    .line 38
    .line 39
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 40
    .line 41
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingHistoryDisables:Landroid/util/SparseBooleanArray;

    .line 45
    .line 46
    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    const-class v0, Landroid/os/UserManager;

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Landroid/os/UserManager;

    .line 55
    .line 56
    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserManager:Landroid/os/UserManager;

    .line 57
    .line 58
    new-instance p1, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;

    .line 59
    .line 60
    invoke-direct {p1, p0, p2}, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;-><init>(Lcom/android/server/notification/NotificationHistoryManager;Lcom/android/server/notification/NotificationManagerService$WorkerHandler;)V

    .line 61
    .line 62
    .line 63
    iput-object p1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mSettingsObserver:Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;

    .line 64
    .line 65
    return-void
.end method


# virtual methods
.method public final disableHistory(ILcom/android/server/notification/NotificationHistoryDatabase;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p2, Lcom/android/server/notification/NotificationHistoryDatabase;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p2, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Landroid/util/AtomicFile;

    .line 23
    .line 24
    invoke-virtual {v3}, Landroid/util/AtomicFile;->delete()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    iget-object v2, p2, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryDir:Ljava/io/File;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 33
    .line 34
    .line 35
    iget-object p2, p2, Lcom/android/server/notification/NotificationHistoryDatabase;->mHistoryFiles:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    sget-object v0, Lcom/samsung/android/server/notification/NotificationHistoryImageProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    invoke-virtual {p2, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    iget-object p2, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingHistoryDisables:Landroid/util/SparseBooleanArray;

    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    invoke-virtual {p2, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 55
    .line 56
    .line 57
    iget-object p2, p0, Lcom/android/server/notification/NotificationHistoryManager;->mHistoryEnabled:Landroid/util/SparseBooleanArray;

    .line 58
    .line 59
    invoke-virtual {p2, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    .line 63
    .line 64
    invoke-virtual {p0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    throw p0
.end method

.method public doesHistoryExistForUser(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    monitor-exit v0

    .line 16
    return p0

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

.method public getPendingPackageRemovalsForUser(I)Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingPackageRemovals:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Ljava/util/List;

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-object p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method

.method public final getUserHistoryAndInitializeIfNeededLocked(I)Lcom/android/server/notification/NotificationHistoryDatabase;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mHistoryEnabled:Landroid/util/SparseBooleanArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "NotificationHistory"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    sget-boolean v0, Lcom/android/server/notification/NotificationHistoryManager;->DEBUG:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string v0, "History disabled for user "

    .line 17
    .line 18
    invoke-static {p1, v0, v1}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-virtual {p0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-object v2

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/android/server/notification/NotificationHistoryDatabase;

    .line 34
    .line 35
    if-nez v0, :cond_4

    .line 36
    .line 37
    new-instance v0, Ljava/io/File;

    .line 38
    .line 39
    invoke-static {p1}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const-string/jumbo v4, "notification_history"

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    new-instance v4, Lcom/android/server/notification/NotificationHistoryDatabase;

    .line 54
    .line 55
    invoke-direct {v4, v3, v0}, Lcom/android/server/notification/NotificationHistoryDatabase;-><init>(Landroid/os/Handler;Ljava/io/File;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    const-string v3, "Attempted to initialize service for stopped or removed user "

    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    :try_start_0
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationHistoryDatabase;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    .line 72
    .line 73
    invoke-virtual {p0, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    move-object v0, v4

    .line 77
    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserManager:Landroid/os/UserManager;

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    if-nez p0, :cond_2

    .line 86
    .line 87
    invoke-static {p1, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-object v2

    .line 91
    :cond_2
    throw v0

    .line 92
    :cond_3
    invoke-static {p1, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return-object v2

    .line 96
    :cond_4
    :goto_0
    return-object v0
.end method

.method public isUserUnlocked(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    monitor-exit v0

    .line 11
    return p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mSettingsObserver:Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationHistoryManager;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/notification/NotificationHistoryManager;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onUserStopped(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
.end method

.method public final onUserUnlocked(I)V
    .locals 6

    .line 1
    const-string v0, "Attempted to unlock gone/disabled user "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationHistoryManager;->getUserHistoryAndInitializeIfNeededLocked(I)Lcom/android/server/notification/NotificationHistoryDatabase;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    const-string p0, "NotificationHistory"

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    monitor-exit v1

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingPackageRemovals:Landroid/util/SparseArray;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ljava/util/List;

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-ge v3, v4, :cond_1

    .line 55
    .line 56
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Ljava/lang/String;

    .line 61
    .line 62
    new-instance v5, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;

    .line 63
    .line 64
    invoke-direct {v5, v2, v4}, Lcom/android/server/notification/NotificationHistoryDatabase$RemovePackageRunnable;-><init>(Lcom/android/server/notification/NotificationHistoryDatabase;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v4, v2, Lcom/android/server/notification/NotificationHistoryDatabase;->mFileWriteHandler:Landroid/os/Handler;

    .line 68
    .line 69
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    .line 71
    .line 72
    add-int/lit8 v3, v3, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingPackageRemovals:Landroid/util/SparseArray;

    .line 76
    .line 77
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 78
    .line 79
    .line 80
    :cond_2
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserPendingHistoryDisables:Landroid/util/SparseBooleanArray;

    .line 81
    .line 82
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_3

    .line 87
    .line 88
    invoke-virtual {p0, p1, v2}, Lcom/android/server/notification/NotificationHistoryManager;->disableHistory(ILcom/android/server/notification/NotificationHistoryDatabase;)V

    .line 89
    .line 90
    .line 91
    :cond_3
    monitor-exit v1

    .line 92
    return-void

    .line 93
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    throw p0
.end method

.method public final readFilteredNotificationHistoryForPackage(IILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationHistory;
    .locals 4

    .line 1
    const-string v0, "Attempted to read history for locked/gone/disabled user "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationHistoryManager;->getUserHistoryAndInitializeIfNeededLocked(I)Lcom/android/server/notification/NotificationHistoryDatabase;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    const-string p0, "NotificationHistory"

    .line 13
    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    new-instance p0, Landroid/app/NotificationHistory;

    .line 30
    .line 31
    invoke-direct {p0}, Landroid/app/NotificationHistory;-><init>()V

    .line 32
    .line 33
    .line 34
    monitor-exit v1

    .line 35
    return-object p0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_3

    .line 38
    :cond_0
    if-eqz p4, :cond_2

    .line 39
    .line 40
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/notification/NotificationHistoryDatabase;->readNotificationHistoryForPackage(ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationHistory;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/android/server/notification/NotificationHistoryDatabase;->readNotificationHistoryWithNullKeyHandling(ILjava/lang/String;)Landroid/app/NotificationHistory;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    :goto_1
    invoke-virtual {p1}, Landroid/app/NotificationHistory;->getNotificationsToWrite()Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    :cond_3
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result p3

    .line 68
    if-eqz p3, :cond_4

    .line 69
    .line 70
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    check-cast p3, Landroid/app/NotificationHistory$HistoricalNotification;

    .line 75
    .line 76
    invoke-virtual {p3}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    .line 77
    .line 78
    .line 79
    move-result-object p4

    .line 80
    if-nez p4, :cond_3

    .line 81
    .line 82
    const-string p4, "NotificationHistory"

    .line 83
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v2, "check notification to delete : "

    .line 90
    .line 91
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {p4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    invoke-virtual {p3}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p4

    .line 108
    invoke-virtual {p3}, Landroid/app/NotificationHistory$HistoricalNotification;->getPostedTimeMs()J

    .line 109
    .line 110
    .line 111
    move-result-wide v2

    .line 112
    new-instance p3, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;

    .line 113
    .line 114
    invoke-direct {p3, p0, p4, v2, v3}, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationHistoryDatabase;Ljava/lang/String;J)V

    .line 115
    .line 116
    .line 117
    iget-object p4, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mFileWriteHandler:Landroid/os/Handler;

    .line 118
    .line 119
    invoke-virtual {p4, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_4
    monitor-exit v1

    .line 124
    return-object p1

    .line 125
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    throw p0
.end method

.method public final readNotificationHistory([I)Landroid/app/NotificationHistory;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Landroid/app/NotificationHistory;

    .line 5
    .line 6
    invoke-direct {v1}, Landroid/app/NotificationHistory;-><init>()V

    .line 7
    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-object v1

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_2

    .line 15
    :cond_0
    array-length v2, p1

    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_0
    if-ge v3, v2, :cond_2

    .line 18
    .line 19
    aget v4, p1, v3

    .line 20
    .line 21
    invoke-virtual {p0, v4}, Lcom/android/server/notification/NotificationHistoryManager;->getUserHistoryAndInitializeIfNeededLocked(I)Lcom/android/server/notification/NotificationHistoryDatabase;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    if-nez v5, :cond_1

    .line 26
    .line 27
    const-string v5, "NotificationHistory"

    .line 28
    .line 29
    new-instance v6, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v7, "Attempted to read history for locked/gone/disabled user "

    .line 35
    .line 36
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationHistoryDatabase;->readNotificationHistory()Landroid/app/NotificationHistory;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v1, v4}, Landroid/app/NotificationHistory;->addNotificationsToWrite(Landroid/app/NotificationHistory;)V

    .line 55
    .line 56
    .line 57
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    monitor-exit v0

    .line 61
    return-object v1

    .line 62
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw p0
.end method

.method public replaceNotificationHistoryDatabase(ILcom/android/server/notification/NotificationHistoryDatabase;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method

.method public final updateCancelEvent(ILjava/lang/String;Z)V
    .locals 2

    .line 1
    const-string v0, "Attempted to update history for locked/gone/disabled user "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationHistoryManager;->getUserHistoryAndInitializeIfNeededLocked(I)Lcom/android/server/notification/NotificationHistoryDatabase;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    const-string p0, "NotificationHistory"

    .line 13
    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    monitor-exit v1

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/server/notification/NotificationHistoryDatabase;->updateCancelEvent(Ljava/lang/String;Z)V

    .line 34
    .line 35
    .line 36
    monitor-exit v1

    .line 37
    return-void

    .line 38
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0
.end method

.method public final updateNotificationItems(ILandroid/app/NotificationHistory$HistoricalNotification;)V
    .locals 3

    .line 1
    const-string v0, "Attempted to update history for locked/gone/disabled user "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationHistoryManager;->getUserHistoryAndInitializeIfNeededLocked(I)Lcom/android/server/notification/NotificationHistoryDatabase;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    const-string p0, "NotificationHistory"

    .line 13
    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    monitor-exit v1

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getSbnKey()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getText()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p2}, Landroid/app/NotificationHistory$HistoricalNotification;->getUri()Landroid/net/Uri;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    new-instance v2, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveImageRunnable;

    .line 46
    .line 47
    invoke-direct {v2, p0, p1, v0, p2}, Lcom/android/server/notification/NotificationHistoryDatabase$RemoveImageRunnable;-><init>(Lcom/android/server/notification/NotificationHistoryDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/notification/NotificationHistoryDatabase;->mFileWriteHandler:Landroid/os/Handler;

    .line 51
    .line 52
    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    monitor-exit v1

    .line 56
    return-void

    .line 57
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p0
.end method
