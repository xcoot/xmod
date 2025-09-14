.class public final Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/permission/access/permission/AppIdPermissionPolicy$OnPermissionFlagsChangedListener;
.implements Lcom/android/server/permission/access/permission/DevicePermissionPolicy$OnDevicePermissionFlagsChangedListener;


# instance fields
.field public final gidsChangedUids:Lcom/android/server/permission/access/immutable/MutableIntSet;

.field public isKillRuntimePermissionRevokedUidsSkipped:Z

.field public isPermissionFlagsChanged:Z

.field public final killRuntimePermissionRevokedUidsReasons:Landroid/util/ArraySet;

.field public final runtimePermissionChangedUidDevices:Lcom/android/server/permission/access/immutable/MutableIntMap;

.field public final runtimePermissionRevokedUids:Landroid/util/SparseBooleanArray;

.field public final synthetic this$0:Lcom/android/server/permission/access/permission/PermissionService;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/permission/PermissionService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    .line 5
    .line 6
    new-instance p1, Lcom/android/server/permission/access/immutable/MutableIntMap;

    .line 7
    .line 8
    invoke-direct {p1}, Lcom/android/server/permission/access/immutable/MutableIntMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionChangedUidDevices:Lcom/android/server/permission/access/immutable/MutableIntMap;

    .line 12
    .line 13
    new-instance p1, Landroid/util/SparseBooleanArray;

    .line 14
    .line 15
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionRevokedUids:Landroid/util/SparseBooleanArray;

    .line 19
    .line 20
    new-instance p1, Lcom/android/server/permission/access/immutable/MutableIntSet;

    .line 21
    .line 22
    invoke-direct {p1}, Lcom/android/server/permission/access/immutable/MutableIntSet;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->gidsChangedUids:Lcom/android/server/permission/access/immutable/MutableIntSet;

    .line 26
    .line 27
    new-instance p1, Landroid/util/ArraySet;

    .line 28
    .line 29
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->killRuntimePermissionRevokedUidsReasons:Landroid/util/ArraySet;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final getSecureInt(ILjava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    sget-object p1, Lcom/android/server/permission/access/permission/PermissionService;->FULLER_PERMISSIONS:Landroid/util/ArrayMap;

    .line 20
    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v0, "Setting "

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p2, " not found"

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string p2, "PermissionService"

    .line 41
    .line 42
    invoke-static {p2, p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    :goto_0
    return-object p0
.end method

.method public final onDevicePermissionFlagsChanged(IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->isPermissionFlagsChanged:Z

    .line 3
    .line 4
    invoke-static {p2, p1}, Landroid/os/UserHandle;->getUid(II)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iget-object p2, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    .line 9
    .line 10
    iget-object v1, p2, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 11
    .line 12
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_8

    .line 17
    .line 18
    iget-object p2, p2, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/MutableSystemState;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p2}, Lcom/android/server/permission/access/MutableSystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    iget-object p2, p2, Lcom/android/server/permission/access/immutable/IndexedMap;->map:Landroid/util/ArrayMap;

    .line 32
    .line 33
    invoke-virtual {p2, p5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    check-cast p2, Lcom/android/server/permission/access/permission/Permission;

    .line 38
    .line 39
    if-nez p2, :cond_0

    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    invoke-static {p3}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    .line 43
    .line 44
    .line 45
    move-result p3

    .line 46
    invoke-static {p6}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    .line 47
    .line 48
    .line 49
    move-result p6

    .line 50
    iget-object v1, p2, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->getProtection()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    const/4 v2, 0x0

    .line 57
    if-ne v1, v0, :cond_5

    .line 58
    .line 59
    if-eqz p3, :cond_2

    .line 60
    .line 61
    if-nez p6, :cond_2

    .line 62
    .line 63
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionRevokedUids:Landroid/util/SparseBooleanArray;

    .line 64
    .line 65
    sget-object v3, Lcom/android/server/permission/access/permission/PermissionService;->NOTIFICATIONS_PERMISSIONS:Landroid/util/ArraySet;

    .line 66
    .line 67
    invoke-virtual {v3, p5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p5

    .line 71
    if-eqz p5, :cond_1

    .line 72
    .line 73
    iget-object p5, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionRevokedUids:Landroid/util/SparseBooleanArray;

    .line 74
    .line 75
    invoke-virtual {p5, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 76
    .line 77
    .line 78
    move-result p5

    .line 79
    if-eqz p5, :cond_1

    .line 80
    .line 81
    move p5, v0

    .line 82
    goto :goto_0

    .line 83
    :cond_1
    move p5, v2

    .line 84
    :goto_0
    invoke-virtual {v1, p1, p5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 85
    .line 86
    .line 87
    :cond_2
    iget-object p5, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionChangedUidDevices:Lcom/android/server/permission/access/immutable/MutableIntMap;

    .line 88
    .line 89
    iget-object v1, p5, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    .line 90
    .line 91
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    if-eqz v1, :cond_3

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 99
    .line 100
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 101
    .line 102
    .line 103
    iget-object p5, p5, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    .line 104
    .line 105
    invoke-virtual {p5, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-ltz v3, :cond_4

    .line 110
    .line 111
    invoke-virtual {p5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p5, v3, v1}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_4
    invoke-virtual {p5, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    :goto_1
    check-cast v1, Ljava/util/Collection;

    .line 122
    .line 123
    invoke-interface {v1, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    :cond_5
    iget-object p2, p2, Lcom/android/server/permission/access/permission/Permission;->gids:[I

    .line 127
    .line 128
    array-length p2, p2

    .line 129
    if-nez p2, :cond_6

    .line 130
    .line 131
    move v2, v0

    .line 132
    :cond_6
    xor-int/lit8 p2, v2, 0x1

    .line 133
    .line 134
    if-eqz p2, :cond_7

    .line 135
    .line 136
    if-nez p3, :cond_7

    .line 137
    .line 138
    if-eqz p6, :cond_7

    .line 139
    .line 140
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->gidsChangedUids:Lcom/android/server/permission/access/immutable/MutableIntSet;

    .line 141
    .line 142
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    .line 143
    .line 144
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 145
    .line 146
    .line 147
    :cond_7
    return-void

    .line 148
    :cond_8
    const-string/jumbo p0, "state"

    .line 149
    .line 150
    .line 151
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    const/4 p0, 0x0

    .line 155
    throw p0
.end method

.method public final onPermissionFlagsChanged(IIIILjava/lang/String;)V
    .locals 7

    .line 1
    const-string v4, "default:0"

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move v1, p1

    .line 5
    move v2, p2

    .line 6
    move v3, p3

    .line 7
    move-object v5, p5

    .line 8
    move v6, p4

    .line 9
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->onDevicePermissionFlagsChanged(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onStateMutated()V
    .locals 16

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    iget-boolean v0, v6, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->isPermissionFlagsChanged:Z

    .line 4
    .line 5
    const/4 v7, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    .line 9
    .line 10
    .line 11
    iput-boolean v7, v6, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->isPermissionFlagsChanged:Z

    .line 12
    .line 13
    :cond_0
    iget-object v0, v6, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionChangedUidDevices:Lcom/android/server/permission/access/immutable/MutableIntMap;

    .line 14
    .line 15
    iget-object v1, v0, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    move v2, v7

    .line 22
    :goto_0
    iget-object v8, v6, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    const/4 v9, 0x0

    .line 26
    if-ge v2, v1, :cond_4

    .line 27
    .line 28
    iget-object v4, v0, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    .line 29
    .line 30
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    iget-object v5, v0, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    .line 35
    .line 36
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    check-cast v5, Ljava/util/Set;

    .line 41
    .line 42
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v10

    .line 50
    if-eqz v10, :cond_3

    .line 51
    .line 52
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v10

    .line 56
    check-cast v10, Ljava/lang/String;

    .line 57
    .line 58
    iget-object v11, v8, Lcom/android/server/permission/access/permission/PermissionService;->onPermissionsChangeListeners:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;

    .line 59
    .line 60
    if-eqz v11, :cond_2

    .line 61
    .line 62
    iget-object v12, v11, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;->listeners:Landroid/os/RemoteCallbackList;

    .line 63
    .line 64
    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 65
    .line 66
    .line 67
    move-result v12

    .line 68
    if-lez v12, :cond_1

    .line 69
    .line 70
    invoke-virtual {v11, v3, v4, v7, v10}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 71
    .line 72
    .line 73
    move-result-object v10

    .line 74
    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    const-string/jumbo v0, "onPermissionsChangeListeners"

    .line 79
    .line 80
    .line 81
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw v9

    .line 85
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_4
    iget-object v0, v0, Lcom/android/server/permission/access/immutable/IntMap;->array:Landroid/util/SparseArray;

    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 91
    .line 92
    .line 93
    iget-boolean v0, v6, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->isKillRuntimePermissionRevokedUidsSkipped:Z

    .line 94
    .line 95
    const-string v10, "handler"

    .line 96
    .line 97
    if-nez v0, :cond_9

    .line 98
    .line 99
    iget-object v0, v6, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->killRuntimePermissionRevokedUidsReasons:Landroid/util/ArraySet;

    .line 100
    .line 101
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    xor-int/2addr v0, v3

    .line 106
    if-eqz v0, :cond_7

    .line 107
    .line 108
    iget-object v0, v6, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->killRuntimePermissionRevokedUidsReasons:Landroid/util/ArraySet;

    .line 109
    .line 110
    const-string v1, "<this>"

    .line 111
    .line 112
    invoke-static {v1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    const-string v2, ""

    .line 121
    .line 122
    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 123
    .line 124
    .line 125
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    move v4, v7

    .line 130
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    if-eqz v5, :cond_6

    .line 135
    .line 136
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    add-int/2addr v4, v3

    .line 141
    if-le v4, v3, :cond_5

    .line 142
    .line 143
    const-string v11, ", "

    .line 144
    .line 145
    invoke-interface {v1, v11}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 146
    .line 147
    .line 148
    :cond_5
    invoke-static {v1, v5, v9}, Lcom/android/server/permission/jarjar/kotlin/text/StringsKt__AppendableKt;->appendElement(Ljava/lang/Appendable;Ljava/lang/Object;Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function1;)V

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_6
    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    const-string/jumbo v1, "toString(...)"

    .line 160
    .line 161
    .line 162
    invoke-static {v1, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    :goto_3
    move-object v11, v0

    .line 166
    goto :goto_4

    .line 167
    :cond_7
    const-string/jumbo v0, "permissions revoked"

    .line 168
    .line 169
    .line 170
    goto :goto_3

    .line 171
    :goto_4
    iget-object v12, v6, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionRevokedUids:Landroid/util/SparseBooleanArray;

    .line 172
    .line 173
    invoke-virtual {v12}, Landroid/util/SparseBooleanArray;->size()I

    .line 174
    .line 175
    .line 176
    move-result v13

    .line 177
    move v14, v7

    .line 178
    :goto_5
    if-ge v14, v13, :cond_9

    .line 179
    .line 180
    invoke-virtual {v12, v14}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    invoke-virtual {v12, v14}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    iget-object v15, v8, Lcom/android/server/permission/access/permission/PermissionService;->handler:Landroid/os/Handler;

    .line 189
    .line 190
    if-eqz v15, :cond_8

    .line 191
    .line 192
    new-instance v5, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;

    .line 193
    .line 194
    move-object v0, v5

    .line 195
    move-object/from16 v2, p0

    .line 196
    .line 197
    move-object v4, v8

    .line 198
    move-object v7, v5

    .line 199
    move-object v5, v11

    .line 200
    invoke-direct/range {v0 .. v5}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;-><init>(ZLcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;ILcom/android/server/permission/access/permission/PermissionService;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v15, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 204
    .line 205
    .line 206
    add-int/lit8 v14, v14, 0x1

    .line 207
    .line 208
    const/4 v7, 0x0

    .line 209
    goto :goto_5

    .line 210
    :cond_8
    invoke-static {v10}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    throw v9

    .line 214
    :cond_9
    iget-object v0, v6, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->runtimePermissionRevokedUids:Landroid/util/SparseBooleanArray;

    .line 215
    .line 216
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 217
    .line 218
    .line 219
    iget-object v0, v6, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->gidsChangedUids:Lcom/android/server/permission/access/immutable/MutableIntSet;

    .line 220
    .line 221
    iget-object v1, v0, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    .line 222
    .line 223
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    const/4 v2, 0x0

    .line 228
    :goto_6
    if-ge v2, v1, :cond_b

    .line 229
    .line 230
    iget-object v3, v0, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    .line 231
    .line 232
    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 233
    .line 234
    .line 235
    move-result v3

    .line 236
    iget-object v4, v8, Lcom/android/server/permission/access/permission/PermissionService;->handler:Landroid/os/Handler;

    .line 237
    .line 238
    if-eqz v4, :cond_a

    .line 239
    .line 240
    new-instance v5, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$3$1;

    .line 241
    .line 242
    invoke-direct {v5, v8, v3}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$3$1;-><init>(Lcom/android/server/permission/access/permission/PermissionService;I)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 246
    .line 247
    .line 248
    add-int/lit8 v2, v2, 0x1

    .line 249
    .line 250
    goto :goto_6

    .line 251
    :cond_a
    invoke-static {v10}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    throw v9

    .line 255
    :cond_b
    iget-object v0, v0, Lcom/android/server/permission/access/immutable/MutableIntSet;->array:Landroid/util/SparseBooleanArray;

    .line 256
    .line 257
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 258
    .line 259
    .line 260
    const/4 v0, 0x0

    .line 261
    iput-boolean v0, v6, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->isKillRuntimePermissionRevokedUidsSkipped:Z

    .line 262
    .line 263
    iget-object v0, v6, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->killRuntimePermissionRevokedUidsReasons:Landroid/util/ArraySet;

    .line 264
    .line 265
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 266
    .line 267
    .line 268
    return-void
.end method
