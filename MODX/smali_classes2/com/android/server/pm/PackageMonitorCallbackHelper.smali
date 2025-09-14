.class public final Lcom/android/server/pm/PackageMonitorCallbackHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mActivityManager:Landroid/app/IActivityManager;

.field public final mCallbacks:Landroid/os/RemoteCallbackList;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
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
    iput-object v0, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroid/os/RemoteCallbackList;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 17
    .line 18
    return-void
.end method

.method public static isAllowedCallbackAction(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 2
    .line 3
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 10
    .line 11
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 18
    .line 19
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    const-string v0, "android.intent.action.UID_REMOVED"

    .line 26
    .line 27
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    const-string v0, "android.intent.action.PACKAGES_SUSPENDED"

    .line 34
    .line 35
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    const-string v0, "android.intent.action.PACKAGES_UNSUSPENDED"

    .line 42
    .line 43
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    .line 50
    .line 51
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 58
    .line 59
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_1

    .line 64
    .line 65
    const-string v0, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 66
    .line 67
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_1

    .line 72
    .line 73
    const-string v0, "android.intent.action.PACKAGE_RESTARTED"

    .line 74
    .line 75
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_1

    .line 80
    .line 81
    const-string v0, "android.intent.action.PACKAGE_UNSTOPPED"

    .line 82
    .line 83
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    if-eqz p0, :cond_0

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_0
    const/4 p0, 0x0

    .line 91
    goto :goto_1

    .line 92
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 93
    :goto_1
    return p0
.end method


# virtual methods
.method public final doNotifyCallbacksByAction(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;[ILandroid/util/SparseArray;Landroid/os/Handler;Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p2

    .line 4
    .line 5
    move-object/from16 v9, p3

    .line 6
    .line 7
    move-object/from16 v10, p4

    .line 8
    .line 9
    move-object/from16 v11, p5

    .line 10
    .line 11
    iget-object v1, v0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    iget-object v12, v0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 15
    .line 16
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    array-length v13, v10

    .line 18
    const/4 v1, 0x0

    .line 19
    move v14, v1

    .line 20
    :goto_0
    if-ge v14, v13, :cond_4

    .line 21
    .line 22
    aget v4, v10, v14

    .line 23
    .line 24
    new-instance v6, Landroid/content/Intent;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    if-eqz v8, :cond_0

    .line 28
    .line 29
    const-string/jumbo v2, "package"

    .line 30
    .line 31
    .line 32
    invoke-static {v2, v8, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    move-object/from16 v15, p1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    move-object/from16 v15, p1

    .line 40
    .line 41
    move-object v2, v1

    .line 42
    :goto_1
    invoke-direct {v6, v15, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 43
    .line 44
    .line 45
    if-eqz v9, :cond_1

    .line 46
    .line 47
    invoke-virtual {v6, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    :cond_1
    const-string v2, "android.intent.extra.UID"

    .line 51
    .line 52
    const/4 v3, -0x1

    .line 53
    invoke-virtual {v6, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-ltz v2, :cond_2

    .line 58
    .line 59
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eq v3, v4, :cond_2

    .line 64
    .line 65
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    invoke-static {v4, v2}, Landroid/os/UserHandle;->getUid(II)I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    const-string v3, "android.intent.extra.UID"

    .line 74
    .line 75
    invoke-virtual {v6, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    :cond_2
    const-string v2, "android.intent.extra.user_handle"

    .line 79
    .line 80
    invoke-virtual {v6, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    .line 82
    .line 83
    if-eqz v11, :cond_3

    .line 84
    .line 85
    invoke-virtual {v11, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, [I

    .line 90
    .line 91
    :cond_3
    move-object v5, v1

    .line 92
    new-instance v7, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda0;

    .line 93
    .line 94
    move-object v1, v7

    .line 95
    move-object/from16 v2, p0

    .line 96
    .line 97
    move-object v3, v12

    .line 98
    move-object v0, v7

    .line 99
    move-object/from16 v7, p7

    .line 100
    .line 101
    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/PackageMonitorCallbackHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/PackageMonitorCallbackHelper;Landroid/os/RemoteCallbackList;I[ILandroid/content/Intent;Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;)V

    .line 102
    .line 103
    .line 104
    move-object/from16 v1, p6

    .line 105
    .line 106
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 107
    .line 108
    .line 109
    add-int/lit8 v14, v14, 0x1

    .line 110
    .line 111
    move-object/from16 v0, p0

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_4
    return-void

    .line 115
    :catchall_0
    move-exception v0

    .line 116
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    throw v0
.end method

.method public final notifyPackageMonitor(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;[I[ILandroid/util/SparseArray;Landroid/os/Handler;Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;)V
    .locals 8

    .line 1
    move-object v0, p0

    .line 2
    invoke-static {p1}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->isAllowedCallbackAction(Ljava/lang/String;)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    if-nez p4, :cond_3

    .line 10
    .line 11
    :try_start_0
    iget-object v1, v0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mActivityManager:Landroid/app/IActivityManager;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iput-object v1, v0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mActivityManager:Landroid/app/IActivityManager;

    .line 20
    .line 21
    :cond_1
    iget-object v1, v0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mActivityManager:Landroid/app/IActivityManager;

    .line 22
    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    invoke-interface {v1}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    move-object v4, v1

    .line 31
    goto :goto_0

    .line 32
    :cond_3
    move-object v4, p4

    .line 33
    :goto_0
    invoke-static {p5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_4

    .line 38
    .line 39
    move-object v0, p0

    .line 40
    move-object v1, p1

    .line 41
    move-object v2, p2

    .line 42
    move-object v3, p3

    .line 43
    move-object v5, p6

    .line 44
    move-object v6, p7

    .line 45
    move-object/from16 v7, p8

    .line 46
    .line 47
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->doNotifyCallbacksByAction(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;[ILandroid/util/SparseArray;Landroid/os/Handler;Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_4
    move-object v0, p0

    .line 52
    move-object v1, p1

    .line 53
    move-object v2, p2

    .line 54
    move-object v3, p3

    .line 55
    move-object v4, p5

    .line 56
    move-object v5, p6

    .line 57
    move-object v6, p7

    .line 58
    move-object/from16 v7, p8

    .line 59
    .line 60
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/PackageMonitorCallbackHelper;->doNotifyCallbacksByAction(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;[ILandroid/util/SparseArray;Landroid/os/Handler;Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda5;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    :catch_0
    :goto_1
    return-void
.end method

.method public final onUserRemoved(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    move v4, v2

    .line 13
    :goto_0
    if-ge v4, v1, :cond_2

    .line 14
    .line 15
    iget-object v5, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 16
    .line 17
    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    check-cast v5, Lcom/android/server/pm/PackageMonitorCallbackHelper$RegisterUser;

    .line 22
    .line 23
    iget v5, v5, Lcom/android/server/pm/PackageMonitorCallbackHelper$RegisterUser;->mUserId:I

    .line 24
    .line 25
    if-ne v5, p1, :cond_1

    .line 26
    .line 27
    iget-object v5, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 28
    .line 29
    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    check-cast v5, Landroid/os/IRemoteCallback;

    .line 34
    .line 35
    if-nez v3, :cond_0

    .line 36
    .line 37
    new-instance v3, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_3

    .line 45
    :cond_0
    :goto_1
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    if-eqz v3, :cond_3

    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-lez p1, :cond_3

    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    :goto_2
    if-ge v2, p1, :cond_3

    .line 65
    .line 66
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Landroid/os/IRemoteCallback;

    .line 71
    .line 72
    iget-object v1, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mLock:Ljava/lang/Object;

    .line 73
    .line 74
    monitor-enter v1

    .line 75
    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 76
    .line 77
    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 78
    .line 79
    .line 80
    monitor-exit v1

    .line 81
    add-int/lit8 v2, v2, 0x1

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :catchall_1
    move-exception p0

    .line 85
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 86
    throw p0

    .line 87
    :cond_3
    return-void

    .line 88
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    throw p0
.end method
