.class public final Lcom/android/server/permission/access/MutableExternalState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/permission/access/immutable/Immutable;


# instance fields
.field public final appIdPackageNamesReference:Lcom/android/server/permission/access/immutable/MutableReference;

.field public configPermissions:Ljava/util/Map;

.field public disabledSystemPackageStates:Ljava/util/Map;

.field public implicitToSourcePermissions:Lcom/android/server/permission/access/immutable/IndexedMap;

.field public isLeanback:Z

.field public isSystemReady:Z

.field public knownPackages:Lcom/android/server/permission/access/immutable/IntMap;

.field public packageStates:Ljava/util/Map;

.field public permissionAllowlist:Lcom/android/server/pm/permission/PermissionAllowlist;

.field public privilegedPermissionAllowlistPackages:Lcom/android/server/permission/access/immutable/IndexedListSet;

.field public final userIdsReference:Lcom/android/server/permission/access/immutable/MutableReference;


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/immutable/MutableReference;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/IntMap;ZLjava/util/Map;Lcom/android/server/permission/access/immutable/IndexedListSet;Lcom/android/server/pm/permission/PermissionAllowlist;Lcom/android/server/permission/access/immutable/IndexedMap;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/permission/access/MutableExternalState;->userIdsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/android/server/permission/access/MutableExternalState;->appIdPackageNamesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/android/server/permission/access/MutableExternalState;->disabledSystemPackageStates:Ljava/util/Map;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/permission/access/MutableExternalState;->knownPackages:Lcom/android/server/permission/access/immutable/IntMap;

    .line 13
    .line 14
    iput-boolean p6, p0, Lcom/android/server/permission/access/MutableExternalState;->isLeanback:Z

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/server/permission/access/MutableExternalState;->configPermissions:Ljava/util/Map;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/server/permission/access/MutableExternalState;->privilegedPermissionAllowlistPackages:Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/android/server/permission/access/MutableExternalState;->permissionAllowlist:Lcom/android/server/pm/permission/PermissionAllowlist;

    .line 21
    .line 22
    iput-object p10, p0, Lcom/android/server/permission/access/MutableExternalState;->implicitToSourcePermissions:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 23
    .line 24
    iput-boolean p11, p0, Lcom/android/server/permission/access/MutableExternalState;->isSystemReady:Z

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final getAppIdPackageNames()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/MutableExternalState;->appIdPackageNamesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableReference;->immutable:Lcom/android/server/permission/access/immutable/Immutable;

    .line 4
    .line 5
    check-cast p0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    .line 6
    .line 7
    return-object p0
.end method

.method public final getUserIds()Lcom/android/server/permission/access/immutable/MutableIntSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/MutableExternalState;->userIdsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableReference;->immutable:Lcom/android/server/permission/access/immutable/Immutable;

    .line 4
    .line 5
    check-cast p0, Lcom/android/server/permission/access/immutable/MutableIntSet;

    .line 6
    .line 7
    return-object p0
.end method

.method public final toMutable()Ljava/lang/Object;
    .locals 13

    .line 1
    new-instance v12, Lcom/android/server/permission/access/MutableExternalState;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/permission/access/MutableExternalState;->userIdsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/MutableReference;->toImmutable()Lcom/android/server/permission/access/immutable/MutableReference;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/android/server/permission/access/MutableExternalState;->packageStates:Ljava/util/Map;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/server/permission/access/MutableExternalState;->disabledSystemPackageStates:Ljava/util/Map;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/permission/access/MutableExternalState;->appIdPackageNamesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/MutableReference;->toImmutable()Lcom/android/server/permission/access/immutable/MutableReference;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    iget-object v5, p0, Lcom/android/server/permission/access/MutableExternalState;->knownPackages:Lcom/android/server/permission/access/immutable/IntMap;

    .line 20
    .line 21
    iget-boolean v6, p0, Lcom/android/server/permission/access/MutableExternalState;->isLeanback:Z

    .line 22
    .line 23
    iget-object v7, p0, Lcom/android/server/permission/access/MutableExternalState;->configPermissions:Ljava/util/Map;

    .line 24
    .line 25
    iget-object v8, p0, Lcom/android/server/permission/access/MutableExternalState;->privilegedPermissionAllowlistPackages:Lcom/android/server/permission/access/immutable/IndexedListSet;

    .line 26
    .line 27
    iget-object v9, p0, Lcom/android/server/permission/access/MutableExternalState;->permissionAllowlist:Lcom/android/server/pm/permission/PermissionAllowlist;

    .line 28
    .line 29
    iget-object v10, p0, Lcom/android/server/permission/access/MutableExternalState;->implicitToSourcePermissions:Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 30
    .line 31
    iget-boolean v11, p0, Lcom/android/server/permission/access/MutableExternalState;->isSystemReady:Z

    .line 32
    .line 33
    move-object v0, v12

    .line 34
    invoke-direct/range {v0 .. v11}, Lcom/android/server/permission/access/MutableExternalState;-><init>(Lcom/android/server/permission/access/immutable/MutableReference;Ljava/util/Map;Ljava/util/Map;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/IntMap;ZLjava/util/Map;Lcom/android/server/permission/access/immutable/IndexedListSet;Lcom/android/server/pm/permission/PermissionAllowlist;Lcom/android/server/permission/access/immutable/IndexedMap;Z)V

    .line 35
    .line 36
    .line 37
    return-object v12
.end method
