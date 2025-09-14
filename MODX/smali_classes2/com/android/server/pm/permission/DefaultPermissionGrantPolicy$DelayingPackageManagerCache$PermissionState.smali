.class public final Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mOriginalFlags:Ljava/lang/Integer;

.field public mOriginalGranted:Ljava/lang/Boolean;

.field public final mPermission:Ljava/lang/String;

.field public mPkgRequestingPerm:Landroid/content/pm/PackageInfo;

.field public final mUser:Landroid/os/UserHandle;

.field public newFlags:Ljava/lang/Integer;

.field public newGranted:Ljava/lang/Boolean;

.field public final synthetic this$1:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->this$1:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mPermission:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mPkgRequestingPerm:Landroid/content/pm/PackageInfo;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mUser:Landroid/os/UserHandle;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final apply()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->newFlags:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mOriginalFlags:Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    not-int v1, v1

    .line 16
    and-int/2addr v0, v1

    .line 17
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mOriginalFlags:Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->newFlags:Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    not-int v2, v2

    .line 30
    and-int/2addr v1, v2

    .line 31
    move v4, v1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    move v4, v0

    .line 35
    :goto_0
    iget-object v7, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->this$1:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;

    .line 36
    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    iget-object v1, v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 40
    .line 41
    iget-object v1, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;

    .line 42
    .line 43
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mPkgRequestingPerm:Landroid/content/pm/PackageInfo;

    .line 44
    .line 45
    iget-object v6, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mUser:Landroid/os/UserHandle;

    .line 46
    .line 47
    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mPermission:Ljava/lang/String;

    .line 48
    .line 49
    const/4 v5, 0x0

    .line 50
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;->updatePermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;IILandroid/os/UserHandle;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    and-int/lit16 v11, v0, 0x3800

    .line 54
    .line 55
    if-eqz v11, :cond_2

    .line 56
    .line 57
    iget-object v1, v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 58
    .line 59
    iget-object v8, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;

    .line 60
    .line 61
    iget-object v10, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mPkgRequestingPerm:Landroid/content/pm/PackageInfo;

    .line 62
    .line 63
    iget-object v13, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mUser:Landroid/os/UserHandle;

    .line 64
    .line 65
    iget-object v9, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mPermission:Ljava/lang/String;

    .line 66
    .line 67
    const/4 v12, -0x1

    .line 68
    invoke-virtual/range {v8 .. v13}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;->updatePermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;IILandroid/os/UserHandle;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->newGranted:Ljava/lang/Boolean;

    .line 72
    .line 73
    if-eqz v1, :cond_4

    .line 74
    .line 75
    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mOriginalGranted:Ljava/lang/Boolean;

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-nez v1, :cond_4

    .line 82
    .line 83
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->newGranted:Ljava/lang/Boolean;

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mPermission:Ljava/lang/String;

    .line 90
    .line 91
    if-eqz v1, :cond_3

    .line 92
    .line 93
    iget-object v1, v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 94
    .line 95
    iget-object v1, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;

    .line 96
    .line 97
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mPkgRequestingPerm:Landroid/content/pm/PackageInfo;

    .line 98
    .line 99
    iget-object v4, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mUser:Landroid/os/UserHandle;

    .line 100
    .line 101
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;->grantPermission(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_3
    iget-object v1, v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 106
    .line 107
    iget-object v1, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;

    .line 108
    .line 109
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mPkgRequestingPerm:Landroid/content/pm/PackageInfo;

    .line 110
    .line 111
    iget-object v4, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mUser:Landroid/os/UserHandle;

    .line 112
    .line 113
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;->revokePermission(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)V

    .line 114
    .line 115
    .line 116
    :cond_4
    :goto_1
    and-int/lit16 v11, v0, -0x3801

    .line 117
    .line 118
    if-eqz v11, :cond_5

    .line 119
    .line 120
    iget-object v0, v7, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 121
    .line 122
    iget-object v8, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;

    .line 123
    .line 124
    iget-object v10, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mPkgRequestingPerm:Landroid/content/pm/PackageInfo;

    .line 125
    .line 126
    iget-object v13, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mUser:Landroid/os/UserHandle;

    .line 127
    .line 128
    iget-object v9, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mPermission:Ljava/lang/String;

    .line 129
    .line 130
    const/4 v12, -0x1

    .line 131
    invoke-virtual/range {v8 .. v13}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;->updatePermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;IILandroid/os/UserHandle;)V

    .line 132
    .line 133
    .line 134
    :cond_5
    return-void
.end method

.method public final initFlags()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->newFlags:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->this$1:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->NO_PM_CACHE:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mPkgRequestingPerm:Landroid/content/pm/PackageInfo;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mUser:Landroid/os/UserHandle;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mPermission:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$1;->getPermissionFlags(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mOriginalFlags:Ljava/lang/Integer;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->newFlags:Ljava/lang/Integer;

    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final initGranted()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->newGranted:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mUser:Landroid/os/UserHandle;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->this$1:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mUserContexts:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    if-ltz v2, :cond_0

    .line 21
    .line 22
    iget-object v0, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mUserContexts:Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/content/Context;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v2, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->this$0:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 32
    .line 33
    iget-object v2, v2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iget-object v1, v1, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache;->mUserContexts:Landroid/util/SparseArray;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    move-object v0, v2

    .line 49
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mPkgRequestingPerm:Landroid/content/pm/PackageInfo;

    .line 54
    .line 55
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mPermission:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_1

    .line 64
    .line 65
    const/4 v3, 0x1

    .line 66
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iput-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->mOriginalGranted:Ljava/lang/Boolean;

    .line 71
    .line 72
    iput-object v0, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DelayingPackageManagerCache$PermissionState;->newGranted:Ljava/lang/Boolean;

    .line 73
    .line 74
    :cond_2
    return-void
.end method
