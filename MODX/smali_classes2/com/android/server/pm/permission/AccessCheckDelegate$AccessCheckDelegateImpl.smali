.class public final Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;


# instance fields
.field public mDelegateAllPermissions:Z

.field public mDelegateAndOwnerUid:I

.field public mDelegatePackage:Ljava/lang/String;

.field public mDelegatePermissions:[Ljava/lang/String;

.field public mOverridePermissionStates:Landroid/util/SparseArray;


# virtual methods
.method public final addOverridePermissionState(IILjava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mOverridePermissionStates:Landroid/util/SparseArray;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAndOwnerUid:I

    .line 6
    .line 7
    new-instance p1, Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mOverridePermissionStates:Landroid/util/SparseArray;

    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mOverridePermissionStates:Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-gez p1, :cond_1

    .line 21
    .line 22
    new-instance p1, Landroid/util/ArrayMap;

    .line 23
    .line 24
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mOverridePermissionStates:Landroid/util/SparseArray;

    .line 28
    .line 29
    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mOverridePermissionStates:Landroid/util/SparseArray;

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    move-object p1, p0

    .line 40
    check-cast p1, Landroid/util/ArrayMap;

    .line 41
    .line 42
    :goto_0
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p1, p3, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final checkAudioOperation(IIILjava/lang/String;Lcom/android/internal/util/function/QuadFunction;)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAndOwnerUid:I

    .line 2
    .line 3
    if-ne p3, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->isDelegateOp(I)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    const/16 p3, 0x7d0

    .line 16
    .line 17
    invoke-static {p0, p3}, Landroid/os/UserHandle;->getUid(II)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 22
    .line 23
    .line 24
    move-result-wide p3

    .line 25
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string v0, "com.android.shell"

    .line 38
    .line 39
    invoke-interface {p5, p1, p2, p0, v0}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Ljava/lang/Integer;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 50
    .line 51
    .line 52
    return p0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 55
    .line 56
    .line 57
    throw p0

    .line 58
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-interface {p5, p0, p1, p2, p4}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    check-cast p0, Ljava/lang/Integer;

    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    return p0
.end method

.method public final checkOperation(IILjava/lang/String;Ljava/lang/String;IZLcom/android/internal/util/function/HexFunction;)I
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAndOwnerUid:I

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->isDelegateOp(I)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    const/16 p2, 0x7d0

    .line 16
    .line 17
    invoke-static {p0, p2}, Landroid/os/UserHandle;->getUid(II)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 22
    .line 23
    .line 24
    move-result-wide p2

    .line 25
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-string v3, "com.android.shell"

    .line 34
    .line 35
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    const/4 v4, 0x0

    .line 44
    move-object v0, p7

    .line 45
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/util/function/HexFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Ljava/lang/Integer;

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    .line 57
    .line 58
    return p0

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 61
    .line 62
    .line 63
    throw p0

    .line 64
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    move-object v0, p7

    .line 81
    move-object v3, p3

    .line 82
    move-object v4, p4

    .line 83
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/util/function/HexFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    check-cast p0, Ljava/lang/Integer;

    .line 88
    .line 89
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    return p0
.end method

.method public final checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda0;)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegatePackage:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "com.android.shell"

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->isDelegatePermission(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    :try_start_0
    const-string v3, "com.android.shell"

    .line 28
    .line 29
    move-object v2, p0

    .line 30
    move-object v4, p2

    .line 31
    move-object v5, p3

    .line 32
    move v6, p4

    .line 33
    move-object v7, p5

    .line 34
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda0;)I

    .line 35
    .line 36
    .line 37
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    .line 40
    .line 41
    return p0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    .line 45
    .line 46
    throw p0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mOverridePermissionStates:Landroid/util/SparseArray;

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 58
    .line 59
    const-wide/16 v1, 0x0

    .line 60
    .line 61
    invoke-virtual {v0, p1, v1, v2, p4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-ltz v0, :cond_1

    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mOverridePermissionStates:Landroid/util/SparseArray;

    .line 68
    .line 69
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    check-cast p0, Ljava/util/Map;

    .line 74
    .line 75
    if-eqz p0, :cond_1

    .line 76
    .line 77
    invoke-interface {p0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_1

    .line 82
    .line 83
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    check-cast p0, Ljava/lang/Integer;

    .line 88
    .line 89
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    return p0

    .line 94
    :cond_1
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-virtual {p5, p1, p2, p3, p0}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda0;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    check-cast p0, Ljava/lang/Integer;

    .line 103
    .line 104
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    return p0
.end method

.method public final checkUidPermission(ILjava/lang/String;Ljava/lang/String;Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda1;)I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAndOwnerUid:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x7d0

    .line 6
    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->isDelegatePermission(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    :try_start_0
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->checkUidPermission(ILjava/lang/String;Ljava/lang/String;Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda1;)I

    .line 20
    .line 21
    .line 22
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 24
    .line 25
    .line 26
    return p0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    .line 30
    .line 31
    throw p0

    .line 32
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mOverridePermissionStates:Landroid/util/SparseArray;

    .line 33
    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Ljava/util/Map;

    .line 41
    .line 42
    if-eqz p0, :cond_1

    .line 43
    .line 44
    invoke-interface {p0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    check-cast p0, Ljava/lang/Integer;

    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    return p0

    .line 61
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p4, p0, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService$$ExternalSyntheticLambda1;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    check-cast p0, Ljava/lang/Integer;

    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    return p0
.end method

.method public final finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ILcom/android/internal/util/function/HexConsumer;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAndOwnerUid:I

    .line 2
    .line 3
    if-ne p3, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p2}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->isDelegateOp(I)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    const/16 p3, 0x7d0

    .line 16
    .line 17
    invoke-static {p0, p3}, Landroid/os/UserHandle;->getUid(II)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 22
    .line 23
    .line 24
    move-result-wide p3

    .line 25
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const-string v4, "com.android.shell"

    .line 34
    .line 35
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    move-object v0, p7

    .line 40
    move-object v1, p1

    .line 41
    move-object v5, p5

    .line 42
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/util/function/HexConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    move-object v0, p7

    .line 67
    move-object v1, p1

    .line 68
    move-object v4, p4

    .line 69
    move-object v5, p5

    .line 70
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/util/function/HexConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final finishProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZLcom/android/internal/util/function/QuadFunction;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p5

    .line 6
    .line 7
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getUid()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    iget v4, v0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAndOwnerUid:I

    .line 12
    .line 13
    if-ne v3, v4, :cond_0

    .line 14
    .line 15
    move/from16 v3, p2

    .line 16
    .line 17
    invoke-virtual {v0, v3}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->isDelegateOp(I)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getUid()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/16 v4, 0x7d0

    .line 32
    .line 33
    invoke-static {v0, v4}, Landroid/os/UserHandle;->getUid(II)I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 38
    .line 39
    .line 40
    move-result-wide v14

    .line 41
    :try_start_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    new-instance v3, Landroid/content/AttributionSource;

    .line 46
    .line 47
    const-string v8, "com.android.shell"

    .line 48
    .line 49
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v9

    .line 53
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    .line 54
    .line 55
    .line 56
    move-result-object v10

    .line 57
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getDeviceId()I

    .line 58
    .line 59
    .line 60
    move-result v12

    .line 61
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    .line 62
    .line 63
    .line 64
    move-result-object v13

    .line 65
    const/4 v7, -0x1

    .line 66
    const/4 v11, 0x0

    .line 67
    move-object v5, v3

    .line 68
    invoke-direct/range {v5 .. v13}, Landroid/content/AttributionSource;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;[Ljava/lang/String;ILandroid/content/AttributionSource;)V

    .line 69
    .line 70
    .line 71
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-interface {v2, v1, v0, v3, v4}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .line 77
    .line 78
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :catchall_0
    move-exception v0

    .line 83
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 84
    .line 85
    .line 86
    throw v0

    .line 87
    :cond_0
    move/from16 v3, p2

    .line 88
    .line 89
    :cond_1
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    move-object/from16 v4, p3

    .line 98
    .line 99
    invoke-interface {v2, v1, v0, v4, v3}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method public final hasDelegateOrOverrides()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAllPermissions:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegatePermissions:[Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mOverridePermissionStates:Landroid/util/SparseArray;

    .line 11
    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 p0, 0x0

    .line 16
    goto :goto_1

    .line 17
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 18
    :goto_1
    return p0
.end method

.method public final isDelegateAndOwnerUid(I)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAndOwnerUid:I

    .line 2
    .line 3
    if-ne p1, p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public final isDelegateOp(I)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAllPermissions:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    return v1

    .line 14
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->isDelegatePermission(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public final isDelegatePermission(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAndOwnerUid:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAllPermissions:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegatePermissions:[Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    :cond_0
    const/4 p0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p0, 0x0

    .line 21
    :goto_0
    return p0
.end method

.method public final noteOperation(IILjava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZLcom/android/internal/util/function/OctFunction;)Landroid/app/SyncNotedAppOp;
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    iget v1, v0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAndOwnerUid:I

    .line 3
    .line 4
    move v2, p2

    .line 5
    if-ne v2, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->isDelegateOp(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/16 v1, 0x7d0

    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 24
    .line 25
    .line 26
    move-result-wide v1

    .line 27
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    const-string v6, "com.android.shell"

    .line 36
    .line 37
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    move-result-object v9

    .line 45
    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    .line 47
    .line 48
    move-result-object v11

    .line 49
    move-object/from16 v3, p9

    .line 50
    .line 51
    move-object/from16 v7, p4

    .line 52
    .line 53
    move-object/from16 v10, p7

    .line 54
    .line 55
    invoke-interface/range {v3 .. v11}, Lcom/android/internal/util/function/OctFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Landroid/app/SyncNotedAppOp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 62
    .line 63
    .line 64
    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 67
    .line 68
    .line 69
    throw v0

    .line 70
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 87
    .line 88
    .line 89
    move-result-object v11

    .line 90
    move-object/from16 v3, p9

    .line 91
    .line 92
    move-object v6, p3

    .line 93
    move-object/from16 v7, p4

    .line 94
    .line 95
    move-object/from16 v10, p7

    .line 96
    .line 97
    invoke-interface/range {v3 .. v11}, Lcom/android/internal/util/function/OctFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Landroid/app/SyncNotedAppOp;

    .line 102
    .line 103
    return-object v0
.end method

.method public final noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZLcom/android/internal/util/function/HexFunction;)Landroid/app/SyncNotedAppOp;
    .locals 13

    .line 1
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    move-object v1, p0

    .line 6
    iget v2, v1, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAndOwnerUid:I

    .line 7
    .line 8
    if-ne v0, v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->isDelegateOp(I)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getUid()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/16 v1, 0x7d0

    .line 25
    .line 26
    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 31
    .line 32
    .line 33
    move-result-wide v11

    .line 34
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v1, Landroid/content/AttributionSource;

    .line 39
    .line 40
    const-string v5, "com.android.shell"

    .line 41
    .line 42
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getDeviceId()I

    .line 51
    .line 52
    .line 53
    move-result v9

    .line 54
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    .line 55
    .line 56
    .line 57
    move-result-object v10

    .line 58
    const/4 v4, -0x1

    .line 59
    const/4 v8, 0x0

    .line 60
    move-object v2, v1

    .line 61
    invoke-direct/range {v2 .. v10}, Landroid/content/AttributionSource;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;[Ljava/lang/String;ILandroid/content/AttributionSource;)V

    .line 62
    .line 63
    .line 64
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 73
    .line 74
    .line 75
    move-result-object v10

    .line 76
    move-object/from16 v4, p7

    .line 77
    .line 78
    move-object v5, v0

    .line 79
    move-object v6, v1

    .line 80
    move-object/from16 v8, p4

    .line 81
    .line 82
    invoke-interface/range {v4 .. v10}, Lcom/android/internal/util/function/HexFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Landroid/app/SyncNotedAppOp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .line 88
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 89
    .line 90
    .line 91
    return-object v0

    .line 92
    :catchall_0
    move-exception v0

    .line 93
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 94
    .line 95
    .line 96
    throw v0

    .line 97
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    move-object/from16 v1, p7

    .line 114
    .line 115
    move-object v3, p2

    .line 116
    move-object/from16 v5, p4

    .line 117
    .line 118
    invoke-interface/range {v1 .. v7}, Lcom/android/internal/util/function/HexFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Landroid/app/SyncNotedAppOp;

    .line 123
    .line 124
    return-object v0
.end method

.method public final startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;IZZLjava/lang/String;ZIILcom/android/internal/util/function/DodecFunction;)Landroid/app/SyncNotedAppOp;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAndOwnerUid:I

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    if-ne v2, v1, :cond_0

    .line 8
    .line 9
    move/from16 v1, p2

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->isDelegateOp(I)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/16 v2, 0x7d0

    .line 22
    .line 23
    invoke-static {v0, v2}, Landroid/os/UserHandle;->getUid(II)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    :try_start_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    const-string v8, "com.android.shell"

    .line 40
    .line 41
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v10

    .line 45
    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    .line 47
    .line 48
    move-result-object v11

    .line 49
    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 50
    .line 51
    .line 52
    move-result-object v12

    .line 53
    invoke-static/range {p10 .. p10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 54
    .line 55
    .line 56
    move-result-object v14

    .line 57
    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v15

    .line 61
    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v16

    .line 65
    move-object/from16 v4, p13

    .line 66
    .line 67
    move-object/from16 v5, p1

    .line 68
    .line 69
    move-object/from16 v9, p5

    .line 70
    .line 71
    move-object/from16 v13, p9

    .line 72
    .line 73
    invoke-interface/range {v4 .. v16}, Lcom/android/internal/util/function/DodecFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Landroid/app/SyncNotedAppOp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .line 79
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    .line 81
    .line 82
    return-object v0

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 85
    .line 86
    .line 87
    throw v0

    .line 88
    :cond_0
    move/from16 v1, p2

    .line 89
    .line 90
    :cond_1
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v10

    .line 102
    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 103
    .line 104
    .line 105
    move-result-object v11

    .line 106
    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 107
    .line 108
    .line 109
    move-result-object v12

    .line 110
    invoke-static/range {p10 .. p10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 111
    .line 112
    .line 113
    move-result-object v14

    .line 114
    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v15

    .line 118
    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v16

    .line 122
    move-object/from16 v4, p13

    .line 123
    .line 124
    move-object/from16 v5, p1

    .line 125
    .line 126
    move-object/from16 v8, p4

    .line 127
    .line 128
    move-object/from16 v9, p5

    .line 129
    .line 130
    move-object/from16 v13, p9

    .line 131
    .line 132
    invoke-interface/range {v4 .. v16}, Lcom/android/internal/util/function/DodecFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Landroid/app/SyncNotedAppOp;

    .line 137
    .line 138
    return-object v0
.end method

.method public final startProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIIILcom/android/internal/util/function/UndecFunction;)Landroid/app/SyncNotedAppOp;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getUid()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget v2, v0, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->mDelegateAndOwnerUid:I

    .line 8
    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    move/from16 v1, p2

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/android/server/pm/permission/AccessCheckDelegate$AccessCheckDelegateImpl;->isDelegateOp(I)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getUid()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/16 v2, 0x7d0

    .line 28
    .line 29
    invoke-static {v0, v2}, Landroid/os/UserHandle;->getUid(II)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 34
    .line 35
    .line 36
    move-result-wide v12

    .line 37
    :try_start_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v16

    .line 41
    new-instance v17, Landroid/content/AttributionSource;

    .line 42
    .line 43
    const-string v6, "com.android.shell"

    .line 44
    .line 45
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getDeviceId()I

    .line 54
    .line 55
    .line 56
    move-result v10

    .line 57
    invoke-virtual/range {p3 .. p3}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    .line 58
    .line 59
    .line 60
    move-result-object v11

    .line 61
    const/4 v5, -0x1

    .line 62
    const/4 v9, 0x0

    .line 63
    move-object/from16 v3, v17

    .line 64
    .line 65
    invoke-direct/range {v3 .. v11}, Landroid/content/AttributionSource;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;[Ljava/lang/String;ILandroid/content/AttributionSource;)V

    .line 66
    .line 67
    .line 68
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 69
    .line 70
    .line 71
    move-result-object v18

    .line 72
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 73
    .line 74
    .line 75
    move-result-object v19

    .line 76
    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 77
    .line 78
    .line 79
    move-result-object v21

    .line 80
    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 81
    .line 82
    .line 83
    move-result-object v22

    .line 84
    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v23

    .line 88
    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v24

    .line 92
    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v25

    .line 96
    move-object/from16 v14, p12

    .line 97
    .line 98
    move-object/from16 v15, p1

    .line 99
    .line 100
    move-object/from16 v20, p6

    .line 101
    .line 102
    invoke-interface/range {v14 .. v25}, Lcom/android/internal/util/function/UndecFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Landroid/app/SyncNotedAppOp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .line 108
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 109
    .line 110
    .line 111
    return-object v0

    .line 112
    :catchall_0
    move-exception v0

    .line 113
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 114
    .line 115
    .line 116
    throw v0

    .line 117
    :cond_0
    move/from16 v1, p2

    .line 118
    .line 119
    :cond_1
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v16

    .line 123
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 124
    .line 125
    .line 126
    move-result-object v18

    .line 127
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 128
    .line 129
    .line 130
    move-result-object v19

    .line 131
    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 132
    .line 133
    .line 134
    move-result-object v21

    .line 135
    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 136
    .line 137
    .line 138
    move-result-object v22

    .line 139
    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v23

    .line 143
    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v24

    .line 147
    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v25

    .line 151
    move-object/from16 v14, p12

    .line 152
    .line 153
    move-object/from16 v15, p1

    .line 154
    .line 155
    move-object/from16 v17, p3

    .line 156
    .line 157
    move-object/from16 v20, p6

    .line 158
    .line 159
    invoke-interface/range {v14 .. v25}, Lcom/android/internal/util/function/UndecFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    check-cast v0, Landroid/app/SyncNotedAppOp;

    .line 164
    .line 165
    return-object v0
.end method
