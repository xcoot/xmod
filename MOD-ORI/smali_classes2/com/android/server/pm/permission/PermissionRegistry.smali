.class public final Lcom/android/server/pm/permission/PermissionRegistry;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAppOpPermissionPackages:Landroid/util/ArrayMap;

.field public final mPermissionGroups:Landroid/util/ArrayMap;

.field public final mPermissionTrees:Landroid/util/ArrayMap;

.field public final mPermissions:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissions:Landroid/util/ArrayMap;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissionTrees:Landroid/util/ArrayMap;

    .line 17
    .line 18
    new-instance v0, Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissionGroups:Landroid/util/ArrayMap;

    .line 24
    .line 25
    new-instance v0, Landroid/util/ArrayMap;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final enforcePermissionTree(ILjava/lang/String;)Lcom/android/server/pm/permission/Permission;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissionTrees:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-static {p2, p0}, Lcom/android/server/pm/permission/Permission;->findPermissionTree(Ljava/lang/String;Ljava/util/Collection;)Lcom/android/server/pm/permission/Permission;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    iget p2, p0, Lcom/android/server/pm/permission/Permission;->mUid:I

    .line 16
    .line 17
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-ne p2, v0, :cond_0

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 25
    .line 26
    const-string p2, "Calling uid "

    .line 27
    .line 28
    const-string v0, " is not allowed to add to or remove from the permission tree"

    .line 29
    .line 30
    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public final getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissions:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/pm/permission/Permission;

    .line 8
    .line 9
    return-object p0
.end method

.method public final transferPermissions(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/4 v2, 0x2

    .line 4
    if-ge v1, v2, :cond_3

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissionTrees:Landroid/util/ArrayMap;

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionRegistry;->mPermissions:Landroid/util/ArrayMap;

    .line 12
    .line 13
    :goto_1
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_2

    .line 26
    .line 27
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/android/server/pm/permission/Permission;

    .line 32
    .line 33
    iget-object v4, v3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 34
    .line 35
    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-nez v4, :cond_1

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_1
    new-instance v4, Landroid/content/pm/PermissionInfo;

    .line 45
    .line 46
    invoke-direct {v4}, Landroid/content/pm/PermissionInfo;-><init>()V

    .line 47
    .line 48
    .line 49
    iget-object v5, v3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 50
    .line 51
    iget-object v6, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 52
    .line 53
    iput-object v6, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 54
    .line 55
    iput-object p2, v4, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 56
    .line 57
    iget v5, v5, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 58
    .line 59
    iput v5, v4, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 60
    .line 61
    iput-object v4, v3, Lcom/android/server/pm/permission/Permission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 62
    .line 63
    iput-boolean v0, v3, Lcom/android/server/pm/permission/Permission;->mReconciled:Z

    .line 64
    .line 65
    iput v0, v3, Lcom/android/server/pm/permission/Permission;->mUid:I

    .line 66
    .line 67
    sget-object v4, Llibcore/util/EmptyArray;->INT:[I

    .line 68
    .line 69
    iput-object v4, v3, Lcom/android/server/pm/permission/Permission;->mGids:[I

    .line 70
    .line 71
    iput-boolean v0, v3, Lcom/android/server/pm/permission/Permission;->mGidsPerUser:Z

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    return-void
.end method
