.class public final Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;
.super Landroid/app/admin/DevicePolicyCache;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public volatile mCanGrantSensorsPermissions:Z

.field public final mContentProtectionPolicy:Landroid/util/SparseIntArray;

.field public mLauncherShortcutOverrides:Landroid/util/ArrayMap;

.field public final mLock:Ljava/lang/Object;

.field public final mPasswordQuality:Landroid/util/SparseIntArray;

.field public final mPermissionPolicy:Landroid/util/SparseIntArray;

.field public final mScreenCaptureDisallowedUsers:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/admin/DevicePolicyCache;-><init>()V

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
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mScreenCaptureDisallowedUsers:Ljava/util/Set;

    .line 17
    .line 18
    new-instance v0, Landroid/util/SparseIntArray;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mPasswordQuality:Landroid/util/SparseIntArray;

    .line 24
    .line 25
    new-instance v0, Landroid/util/SparseIntArray;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mPermissionPolicy:Landroid/util/SparseIntArray;

    .line 31
    .line 32
    new-instance v0, Landroid/util/ArrayMap;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mLauncherShortcutOverrides:Landroid/util/ArrayMap;

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mCanGrantSensorsPermissions:Z

    .line 41
    .line 42
    new-instance v0, Landroid/util/SparseIntArray;

    .line 43
    .line 44
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mContentProtectionPolicy:Landroid/util/SparseIntArray;

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final canAdminGrantSensorsPermissions()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mCanGrantSensorsPermissions:Z

    .line 2
    .line 3
    return p0
.end method

.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 7

    .line 1
    const-string v0, "Admin can grant sensors permission: "

    .line 2
    .line 3
    const-string v1, "Content protection policy: "

    .line 4
    .line 5
    const-string v2, "Permission policy: "

    .line 6
    .line 7
    const-string v3, "Password quality: "

    .line 8
    .line 9
    const-string v4, "Screen capture disallowed users: "

    .line 10
    .line 11
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v5

    .line 14
    :try_start_0
    const-string v6, "Device policy cache:"

    .line 15
    .line 16
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 20
    .line 21
    .line 22
    new-instance v6, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mScreenCaptureDisallowedUsers:Ljava/util/Set;

    .line 28
    .line 29
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mPasswordQuality:Landroid/util/SparseIntArray;

    .line 45
    .line 46
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mPermissionPolicy:Landroid/util/SparseIntArray;

    .line 62
    .line 63
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mContentProtectionPolicy:Landroid/util/SparseIntArray;

    .line 79
    .line 80
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mCanGrantSensorsPermissions:Z

    .line 96
    .line 97
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    const-string v0, "Shortcuts overrides: "

    .line 108
    .line 109
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mLauncherShortcutOverrides:Landroid/util/ArrayMap;

    .line 113
    .line 114
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 118
    .line 119
    .line 120
    monitor-exit v5

    .line 121
    return-void

    .line 122
    :catchall_0
    move-exception p0

    .line 123
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    throw p0
.end method

.method public final getContentProtectionPolicy(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mContentProtectionPolicy:Landroid/util/SparseIntArray;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    monitor-exit v0

    .line 12
    return p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public final getLauncherShortcutOverrides()Ljava/util/Map;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Landroid/util/ArrayMap;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mLauncherShortcutOverrides:Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-object v1

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public final getPasswordQuality(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mPasswordQuality:Landroid/util/SparseIntArray;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    monitor-exit v0

    .line 12
    return p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public final getPermissionPolicy(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mPermissionPolicy:Landroid/util/SparseIntArray;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    monitor-exit v0

    .line 12
    return p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public final isScreenCaptureAllowed(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mScreenCaptureDisallowedUsers:Ljava/util/Set;

    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast v1, Ljava/util/HashSet;

    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mScreenCaptureDisallowedUsers:Ljava/util/Set;

    .line 19
    .line 20
    const/4 p1, -0x1

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p0, Ljava/util/HashSet;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-nez p0, :cond_0

    .line 32
    .line 33
    const/4 p0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    const/4 p0, 0x0

    .line 38
    :goto_0
    monitor-exit v0

    .line 39
    return p0

    .line 40
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method

.method public final onUserRemoved(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mPasswordQuality:Landroid/util/SparseIntArray;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mPermissionPolicy:Landroid/util/SparseIntArray;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mContentProtectionPolicy:Landroid/util/SparseIntArray;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 17
    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method

.method public final setContentProtectionPolicy(ILjava/lang/Integer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mContentProtectionPolicy:Landroid/util/SparseIntArray;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;->mContentProtectionPolicy:Landroid/util/SparseIntArray;

    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    .line 22
    .line 23
    :goto_0
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method
