.class public final Lcom/android/server/devicepolicy/DeviceAdminServiceController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mConnections:Landroid/util/SparseArray;

.field public final mConstants:Lcom/android/server/devicepolicy/DevicePolicyConstants;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyConstants;)V
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
    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    new-instance p1, Landroid/os/Handler;

    .line 27
    .line 28
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mHandler:Landroid/os/Handler;

    .line 40
    .line 41
    iput-object p2, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConstants:Lcom/android/server/devicepolicy/DevicePolicyConstants;

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final disconnectServiceOnUserLocked(I)V
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;

    .line 10
    invoke-virtual {v1}, Lcom/android/server/am/PersistentConnection;->unbind()V

    goto :goto_0

    .line 11
    :cond_1
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public final disconnectServiceOnUserLocked(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/android/server/am/PersistentConnection;->unbind()V

    .line 4
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p2, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    return-void
.end method

.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_2

    .line 16
    :cond_0
    const-string v1, "Admin Services:"

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    :goto_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-ge v1, v2, :cond_2

    .line 32
    .line 33
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    .line 34
    .line 35
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const-string v3, "User: "

    .line 40
    .line 41
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 45
    .line 46
    .line 47
    iget-object v3, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    .line 48
    .line 49
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Ljava/util/Map;

    .line 54
    .line 55
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_1

    .line 68
    .line 69
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 76
    .line 77
    .line 78
    const-string v4, "Package: "

    .line 79
    .line 80
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v4, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    .line 87
    .line 88
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    check-cast v4, Ljava/util/Map;

    .line 93
    .line 94
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    check-cast v3, Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 101
    .line 102
    .line 103
    const-string v4, ""

    .line 104
    .line 105
    invoke-virtual {v3, v4, p1}, Lcom/android/server/am/PersistentConnection;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 119
    .line 120
    .line 121
    monitor-exit v0

    .line 122
    return-void

    .line 123
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    throw p0
.end method

.method public final startServiceForAdmin(ILjava/lang/String;)V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v14, p2

    .line 6
    .line 7
    iget-object v2, v1, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 13
    .line 14
    .line 15
    move-result-wide v16

    .line 16
    :try_start_0
    iget-object v15, v1, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 19
    :try_start_1
    const-class v6, Landroid/app/admin/DeviceAdminService;

    .line 20
    .line 21
    iget-object v2, v1, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    new-instance v8, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v4, "android.app.action.DEVICE_ADMIN_SERVICE"

    .line 36
    .line 37
    const-string v5, "android.permission.BIND_DEVICE_ADMIN"

    .line 38
    .line 39
    move-object/from16 v2, p2

    .line 40
    .line 41
    move/from16 v3, p1

    .line 42
    .line 43
    invoke-static/range {v2 .. v8}, Lcom/android/server/appbinding/AppBindingUtils;->findService(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;Landroid/content/pm/IPackageManager;Ljava/lang/StringBuilder;)Landroid/content/pm/ServiceInfo;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-nez v2, :cond_0

    .line 48
    .line 49
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->disconnectServiceOnUserLocked(ILjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    iget-object v0, v1, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    move-object/from16 v21, v15

    .line 64
    .line 65
    goto/16 :goto_2

    .line 66
    .line 67
    :cond_0
    :try_start_2
    iget-object v3, v1, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    .line 68
    .line 69
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->contains(I)Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-eqz v3, :cond_1

    .line 74
    .line 75
    iget-object v3, v1, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    .line 76
    .line 77
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    check-cast v3, Ljava/util/Map;

    .line 82
    .line 83
    invoke-interface {v3, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    check-cast v3, Lcom/android/server/am/PersistentConnection;

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    const/4 v3, 0x0

    .line 91
    :goto_0
    if-eqz v3, :cond_2

    .line 92
    .line 93
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->disconnectServiceOnUserLocked(ILjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :cond_2
    new-instance v12, Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;

    .line 97
    .line 98
    invoke-virtual {v2}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    iget-object v4, v1, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mContext:Landroid/content/Context;

    .line 103
    .line 104
    iget-object v5, v1, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mHandler:Landroid/os/Handler;

    .line 105
    .line 106
    iget-object v2, v1, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConstants:Lcom/android/server/devicepolicy/DevicePolicyConstants;

    .line 107
    .line 108
    iget-wide v8, v2, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_RECONNECT_BACKOFF_SEC:J

    .line 109
    .line 110
    iget-wide v10, v2, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_RECONNECT_BACKOFF_INCREASE:D

    .line 111
    .line 112
    iget-wide v13, v2, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_RECONNECT_MAX_BACKOFF_SEC:J

    .line 113
    .line 114
    iget-wide v2, v2, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_STABLE_CONNECTION_THRESHOLD_SEC:J

    .line 115
    .line 116
    const-string v6, "DevicePolicyManager"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    .line 118
    move-wide/from16 v18, v2

    .line 119
    .line 120
    move-object v2, v12

    .line 121
    move-object v3, v6

    .line 122
    move/from16 v6, p1

    .line 123
    .line 124
    move-object/from16 v20, v12

    .line 125
    .line 126
    move-wide v12, v13

    .line 127
    move-object/from16 v21, v15

    .line 128
    .line 129
    move-wide/from16 v14, v18

    .line 130
    .line 131
    :try_start_3
    invoke-direct/range {v2 .. v15}, Lcom/android/server/am/PersistentConnection;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;ILandroid/content/ComponentName;JDJJ)V

    .line 132
    .line 133
    .line 134
    iget-object v2, v1, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    .line 135
    .line 136
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->contains(I)Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-nez v2, :cond_3

    .line 141
    .line 142
    iget-object v2, v1, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    .line 143
    .line 144
    new-instance v3, Ljava/util/HashMap;

    .line 145
    .line 146
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :catchall_1
    move-exception v0

    .line 154
    goto :goto_2

    .line 155
    :cond_3
    :goto_1
    iget-object v2, v1, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    .line 156
    .line 157
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    check-cast v0, Ljava/util/Map;

    .line 162
    .line 163
    move-object/from16 v2, p2

    .line 164
    .line 165
    move-object/from16 v3, v20

    .line 166
    .line 167
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    iget-object v2, v3, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    .line 171
    .line 172
    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 173
    const/4 v0, 0x1

    .line 174
    :try_start_4
    iput-boolean v0, v3, Lcom/android/server/am/PersistentConnection;->mShouldBeBound:Z

    .line 175
    .line 176
    invoke-virtual {v3, v0}, Lcom/android/server/am/PersistentConnection;->bindInnerLocked(Z)V

    .line 177
    .line 178
    .line 179
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 180
    :try_start_5
    monitor-exit v21
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 181
    iget-object v0, v1, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 187
    .line 188
    .line 189
    return-void

    .line 190
    :catchall_2
    move-exception v0

    .line 191
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 192
    :try_start_7
    throw v0

    .line 193
    :goto_2
    monitor-exit v21
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 194
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 195
    :catchall_3
    move-exception v0

    .line 196
    iget-object v1, v1, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 197
    .line 198
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 202
    .line 203
    .line 204
    throw v0
.end method

.method public final stopServiceForAdmin(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->disconnectServiceOnUserLocked(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 29
    :catchall_1
    move-exception p1

    .line 30
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method public final stopServicesForUser(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->disconnectServiceOnUserLocked(I)V

    .line 14
    .line 15
    .line 16
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 29
    :catchall_1
    move-exception p1

    .line 30
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method
