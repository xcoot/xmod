.class public final Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final mDeviceId:I

.field public final mInnerLock:Ljava/lang/Object;

.field public mIsAlarmSet:Z

.field public mIsFinished:Z

.field public final mObserver:Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener$1;

.field public final mPackageName:Ljava/lang/String;

.field public mRevokeAfterKilledDelay:J

.field public mTimeout:J

.field public mTimerStart:J

.field public final mToken:Ljava/lang/Object;

.field public final mUid:I

.field public final synthetic this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;


# direct methods
.method public static -$$Nest$mcancel(Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mInnerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsFinished:Z

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsAlarmSet:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 14
    .line 15
    invoke-virtual {v1, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput-boolean v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsAlarmSet:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mIActivityManager:Landroid/app/IActivityManager;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mObserver:Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener$1;

    .line 26
    .line 27
    invoke-interface {v1, p0}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_1

    .line 33
    :catch_0
    move-exception p0

    .line 34
    :try_start_2
    const-string v1, "OneTimePermissionUserManager"

    .line 35
    .line 36
    const-string v2, "Unable to unregister uid observer."

    .line 37
    .line 38
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    .line 40
    .line 41
    :goto_0
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    throw p0
.end method

.method public constructor <init>(Lcom/android/server/pm/permission/OneTimePermissionUserManager;ILjava/lang/String;IJJ)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    .line 5
    .line 6
    const-wide/16 v0, -0x1

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mTimerStart:J

    .line 9
    .line 10
    new-instance v2, Ljava/lang/Object;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mInnerLock:Ljava/lang/Object;

    .line 16
    .line 17
    new-instance v2, Ljava/lang/Object;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mToken:Ljava/lang/Object;

    .line 23
    .line 24
    new-instance v2, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener$1;

    .line 25
    .line 26
    invoke-direct {v2, p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener$1;-><init>(Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;)V

    .line 27
    .line 28
    .line 29
    iput-object v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mObserver:Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener$1;

    .line 30
    .line 31
    const-string v3, "OneTimePermissionUserManager"

    .line 32
    .line 33
    const-string v4, "Start tracking "

    .line 34
    .line 35
    const-string v5, ". uid="

    .line 36
    .line 37
    const-string v6, " timeout="

    .line 38
    .line 39
    invoke-static {p2, v4, p3, v5, v6}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v5, " killedDelay="

    .line 47
    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    iput p2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mUid:I

    .line 62
    .line 63
    iput-object p3, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mPackageName:Ljava/lang/String;

    .line 64
    .line 65
    iput p4, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mDeviceId:I

    .line 66
    .line 67
    iput-wide p5, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mTimeout:J

    .line 68
    .line 69
    cmp-long p2, p7, v0

    .line 70
    .line 71
    if-nez p2, :cond_0

    .line 72
    .line 73
    const-string/jumbo p2, "permissions"

    .line 74
    .line 75
    .line 76
    const-string/jumbo p3, "one_time_permissions_killed_delay_millis"

    .line 77
    .line 78
    .line 79
    const-wide/16 p4, 0x1388

    .line 80
    .line 81
    invoke-static {p2, p3, p4, p5}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 82
    .line 83
    .line 84
    move-result-wide p7

    .line 85
    :cond_0
    iput-wide p7, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mRevokeAfterKilledDelay:J

    .line 86
    .line 87
    const/4 p2, 0x4

    .line 88
    :try_start_0
    iget-object p1, p1, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mIActivityManager:Landroid/app/IActivityManager;

    .line 89
    .line 90
    const/4 p3, 0x0

    .line 91
    const/4 p4, 0x3

    .line 92
    invoke-interface {p1, v2, p4, p2, p3}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catch_0
    move-exception p1

    .line 97
    const-string p3, "OneTimePermissionUserManager"

    .line 98
    .line 99
    const-string p4, "Couldn\'t check uid proc state"

    .line 100
    .line 101
    invoke-static {p3, p4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mInnerLock:Ljava/lang/Object;

    .line 105
    .line 106
    monitor-enter p1

    .line 107
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->onPackageInactiveLocked()V

    .line 108
    .line 109
    .line 110
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    :goto_0
    iget-object p1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    .line 112
    .line 113
    iget-object p1, p1, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 114
    .line 115
    iget p3, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mUid:I

    .line 116
    .line 117
    invoke-virtual {p1, p3}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    const/16 p3, 0x14

    .line 122
    .line 123
    if-ne p1, p3, :cond_1

    .line 124
    .line 125
    const/4 p1, 0x0

    .line 126
    goto :goto_1

    .line 127
    :cond_1
    if-le p1, p2, :cond_2

    .line 128
    .line 129
    const/4 p1, 0x1

    .line 130
    goto :goto_1

    .line 131
    :cond_2
    const/4 p1, 0x2

    .line 132
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->updateUidState(I)V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :catchall_0
    move-exception p0

    .line 137
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    throw p0
.end method


# virtual methods
.method public final onAlarm()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mInnerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsAlarmSet:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    iput-boolean v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsAlarmSet:Z

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->onPackageInactiveLocked()V

    .line 16
    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
.end method

.method public final onPackageInactiveLocked()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsFinished:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsFinished:Z

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsAlarmSet:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsAlarmSet:Z

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mHandler:Landroid/os/Handler;

    .line 26
    .line 27
    new-instance v1, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener$$ExternalSyntheticLambda0;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mIActivityManager:Landroid/app/IActivityManager;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mObserver:Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener$1;

    .line 41
    .line 42
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    const-string v1, "OneTimePermissionUserManager"

    .line 48
    .line 49
    const-string v2, "Unable to unregister uid observer."

    .line 50
    .line 51
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .line 53
    .line 54
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mLock:Ljava/lang/Object;

    .line 57
    .line 58
    monitor-enter v0

    .line 59
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    .line 60
    .line 61
    iget-object v1, v1, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mListeners:Landroid/util/SparseArray;

    .line 62
    .line 63
    iget p0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mUid:I

    .line 64
    .line 65
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 66
    .line 67
    .line 68
    monitor-exit v0

    .line 69
    return-void

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    throw p0
.end method

.method public final updateSessionParameters(JJ)V
    .locals 4

    .line 1
    const-string v0, "Updated params for "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mInnerLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mTimeout:J

    .line 7
    .line 8
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 9
    .line 10
    .line 11
    move-result-wide p1

    .line 12
    iput-wide p1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mTimeout:J

    .line 13
    .line 14
    iget-wide p1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mRevokeAfterKilledDelay:J

    .line 15
    .line 16
    const-wide/16 v2, -0x1

    .line 17
    .line 18
    cmp-long v2, p3, v2

    .line 19
    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    const-string/jumbo p3, "permissions"

    .line 23
    .line 24
    .line 25
    const-string/jumbo p4, "one_time_permissions_killed_delay_millis"

    .line 26
    .line 27
    .line 28
    const-wide/16 v2, 0x1388

    .line 29
    .line 30
    invoke-static {p3, p4, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 31
    .line 32
    .line 33
    move-result-wide p3

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_2

    .line 37
    :cond_0
    :goto_0
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    .line 38
    .line 39
    .line 40
    move-result-wide p1

    .line 41
    iput-wide p1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mRevokeAfterKilledDelay:J

    .line 42
    .line 43
    const-string p1, "OneTimePermissionUserManager"

    .line 44
    .line 45
    new-instance p2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object p3, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mPackageName:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p3, ", device ID "

    .line 56
    .line 57
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget p3, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mDeviceId:I

    .line 61
    .line 62
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string p3, ". timeout="

    .line 66
    .line 67
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget-wide p3, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mTimeout:J

    .line 71
    .line 72
    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p3, " killedDelay="

    .line 76
    .line 77
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget-wide p3, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mRevokeAfterKilledDelay:J

    .line 81
    .line 82
    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    .line 93
    .line 94
    iget-object p1, p1, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 95
    .line 96
    iget p2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mUid:I

    .line 97
    .line 98
    invoke-virtual {p1, p2}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    const/16 p2, 0x14

    .line 103
    .line 104
    if-ne p1, p2, :cond_1

    .line 105
    .line 106
    const/4 p1, 0x0

    .line 107
    goto :goto_1

    .line 108
    :cond_1
    const/4 p2, 0x4

    .line 109
    if-le p1, p2, :cond_2

    .line 110
    .line 111
    const/4 p1, 0x1

    .line 112
    goto :goto_1

    .line 113
    :cond_2
    const/4 p1, 0x2

    .line 114
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->updateUidState(I)V

    .line 115
    .line 116
    .line 117
    monitor-exit v1

    .line 118
    return-void

    .line 119
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    throw p0
.end method

.method public final updateUidState(I)V
    .locals 13

    .line 1
    const-string v0, "OneTimePermissionUserManager"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Updating state for "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mPackageName:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, " ("

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mUid:I

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, "). device ID="

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mDeviceId:I

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, ", state="

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mInnerLock:Ljava/lang/Object;

    .line 51
    .line 52
    monitor-enter v0

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    .line 54
    .line 55
    iget-object v1, v1, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mHandler:Landroid/os/Handler;

    .line 56
    .line 57
    iget-object v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mToken:Ljava/lang/Object;

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    if-nez p1, :cond_1

    .line 63
    .line 64
    iget-wide v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mRevokeAfterKilledDelay:J

    .line 65
    .line 66
    const-wide/16 v3, 0x0

    .line 67
    .line 68
    cmp-long p1, v1, v3

    .line 69
    .line 70
    if-nez p1, :cond_0

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->onPackageInactiveLocked()V

    .line 73
    .line 74
    .line 75
    monitor-exit v0

    .line 76
    return-void

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    goto :goto_1

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    .line 80
    .line 81
    iget-object p1, p1, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mHandler:Landroid/os/Handler;

    .line 82
    .line 83
    new-instance v3, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener$$ExternalSyntheticLambda0;

    .line 84
    .line 85
    const/4 v4, 0x1

    .line 86
    invoke-direct {v3, p0, v4}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;I)V

    .line 87
    .line 88
    .line 89
    iget-object p0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mToken:Ljava/lang/Object;

    .line 90
    .line 91
    invoke-virtual {p1, v3, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 92
    .line 93
    .line 94
    monitor-exit v0

    .line 95
    return-void

    .line 96
    :cond_1
    const-wide/16 v1, -0x1

    .line 97
    .line 98
    const/4 v3, 0x1

    .line 99
    if-ne p1, v3, :cond_4

    .line 100
    .line 101
    iget-wide v4, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mTimerStart:J

    .line 102
    .line 103
    cmp-long p1, v4, v1

    .line 104
    .line 105
    if-nez p1, :cond_5

    .line 106
    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 108
    .line 109
    .line 110
    move-result-wide v1

    .line 111
    iput-wide v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mTimerStart:J

    .line 112
    .line 113
    iget-boolean p1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsAlarmSet:Z

    .line 114
    .line 115
    if-eqz p1, :cond_2

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_2
    iget-wide v4, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mTimeout:J

    .line 119
    .line 120
    add-long v8, v1, v4

    .line 121
    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 123
    .line 124
    .line 125
    move-result-wide v1

    .line 126
    cmp-long p1, v8, v1

    .line 127
    .line 128
    if-lez p1, :cond_3

    .line 129
    .line 130
    iget-object p1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    .line 131
    .line 132
    iget-object v6, p1, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 133
    .line 134
    iget-object v12, p1, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mHandler:Landroid/os/Handler;

    .line 135
    .line 136
    const-string v10, "OneTimePermissionUserManager"

    .line 137
    .line 138
    const/4 v7, 0x0

    .line 139
    move-object v11, p0

    .line 140
    invoke-virtual/range {v6 .. v12}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 141
    .line 142
    .line 143
    iput-boolean v3, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsAlarmSet:Z

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_3
    iput-boolean v3, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsAlarmSet:Z

    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->onAlarm()V

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_4
    const/4 v3, 0x2

    .line 153
    if-ne p1, v3, :cond_5

    .line 154
    .line 155
    iput-wide v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mTimerStart:J

    .line 156
    .line 157
    iget-boolean p1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsAlarmSet:Z

    .line 158
    .line 159
    if-eqz p1, :cond_5

    .line 160
    .line 161
    iget-object p1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    .line 162
    .line 163
    iget-object p1, p1, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 164
    .line 165
    invoke-virtual {p1, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 166
    .line 167
    .line 168
    const/4 p1, 0x0

    .line 169
    iput-boolean p1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsAlarmSet:Z

    .line 170
    .line 171
    :cond_5
    :goto_0
    monitor-exit v0

    .line 172
    return-void

    .line 173
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    throw p0
.end method
