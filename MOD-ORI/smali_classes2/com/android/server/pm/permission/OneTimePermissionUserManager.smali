.class public final Lcom/android/server/pm/permission/OneTimePermissionUserManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mIActivityManager:Landroid/app/IActivityManager;

.field public final mListeners:Landroid/util/SparseArray;

.field public final mLock:Ljava/lang/Object;

.field public final mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

.field public final mUninstallListener:Lcom/android/server/pm/permission/OneTimePermissionUserManager$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
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
    iput-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$1;-><init>(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mUninstallListener:Lcom/android/server/pm/permission/OneTimePermissionUserManager$1;

    .line 17
    .line 18
    new-instance v0, Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mListeners:Landroid/util/SparseArray;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mIActivityManager:Landroid/app/IActivityManager;

    .line 32
    .line 33
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 42
    .line 43
    const-class v0, Landroid/app/AlarmManager;

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Landroid/app/AlarmManager;

    .line 50
    .line 51
    iput-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 52
    .line 53
    new-instance v0, Landroid/permission/PermissionControllerManager;

    .line 54
    .line 55
    invoke-static {}, Lcom/android/server/PermissionThread;->getHandler()Landroid/os/Handler;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-direct {v0, p1, v1}, Landroid/permission/PermissionControllerManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mHandler:Landroid/os/Handler;

    .line 69
    .line 70
    return-void
.end method


# virtual methods
.method public final startPackageOneTimeSession(IJJLjava/lang/String;)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v4, p6

    .line 3
    .line 4
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v1, v4, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result v10
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    iget-object v11, v0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v11

    .line 18
    :try_start_1
    iget-object v1, v0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mListeners:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    move-wide v6, p2

    .line 29
    move-wide/from16 v8, p4

    .line 30
    .line 31
    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->updateSessionParameters(JJ)V

    .line 32
    .line 33
    .line 34
    monitor-exit v11

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move-wide v6, p2

    .line 39
    move-wide/from16 v8, p4

    .line 40
    .line 41
    new-instance v12, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;

    .line 42
    .line 43
    move-object v1, v12

    .line 44
    move-object v2, p0

    .line 45
    move v3, v10

    .line 46
    move-object/from16 v4, p6

    .line 47
    .line 48
    move v5, p1

    .line 49
    move-wide v6, p2

    .line 50
    move-wide/from16 v8, p4

    .line 51
    .line 52
    invoke-direct/range {v1 .. v9}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;-><init>(Lcom/android/server/pm/permission/OneTimePermissionUserManager;ILjava/lang/String;IJJ)V

    .line 53
    .line 54
    .line 55
    iget-object v0, v0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mListeners:Landroid/util/SparseArray;

    .line 56
    .line 57
    invoke-virtual {v0, v10, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    monitor-exit v11

    .line 61
    return-void

    .line 62
    :goto_0
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    throw v0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    const-string v1, "OneTimePermissionUserManager"

    .line 66
    .line 67
    const-string v2, "Unknown package name "

    .line 68
    .line 69
    const-string v3, ", device ID "

    .line 70
    .line 71
    move v5, p1

    .line 72
    invoke-static {p1, v2, v4, v3}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final stopPackageOneTimeSession(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mListeners:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mListeners:Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->-$$Nest$mcancel(Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :goto_0
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw p0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    const-string v0, "OneTimePermissionUserManager"

    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v2, "Unknown package name "

    .line 46
    .line 47
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    .line 59
    .line 60
    return-void
.end method
