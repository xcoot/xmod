.class public final Lcom/android/server/permission/access/MutableSystemState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/permission/access/WritableState;
.implements Lcom/android/server/permission/access/immutable/Immutable;


# instance fields
.field public final permissionGroupsReference:Lcom/android/server/permission/access/immutable/MutableReference;

.field public final permissionTreesReference:Lcom/android/server/permission/access/immutable/MutableReference;

.field public final permissionsReference:Lcom/android/server/permission/access/immutable/MutableReference;

.field public writeMode:I


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/permission/access/MutableSystemState;->permissionGroupsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/permission/access/MutableSystemState;->permissionTreesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/permission/access/MutableSystemState;->permissionsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/android/server/permission/access/MutableSystemState;->writeMode:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final getPermissionGroups()Lcom/android/server/permission/access/immutable/IndexedMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/MutableSystemState;->permissionGroupsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableReference;->immutable:Lcom/android/server/permission/access/immutable/Immutable;

    .line 4
    .line 5
    check-cast p0, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 6
    .line 7
    return-object p0
.end method

.method public final getPermissionTrees()Lcom/android/server/permission/access/immutable/IndexedMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/MutableSystemState;->permissionTreesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableReference;->immutable:Lcom/android/server/permission/access/immutable/Immutable;

    .line 4
    .line 5
    check-cast p0, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 6
    .line 7
    return-object p0
.end method

.method public final getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/MutableSystemState;->permissionsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableReference;->immutable:Lcom/android/server/permission/access/immutable/Immutable;

    .line 4
    .line 5
    check-cast p0, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 6
    .line 7
    return-object p0
.end method

.method public final getWriteMode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/permission/access/MutableSystemState;->writeMode:I

    .line 2
    .line 3
    return p0
.end method

.method public final mutatePermissions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/MutableSystemState;->permissionsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    .line 8
    .line 9
    return-object p0
.end method

.method public final toMutable()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/permission/access/MutableSystemState;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/permission/access/MutableSystemState;->permissionGroupsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/android/server/permission/access/immutable/MutableReference;->toImmutable()Lcom/android/server/permission/access/immutable/MutableReference;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/android/server/permission/access/MutableSystemState;->permissionTreesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/android/server/permission/access/immutable/MutableReference;->toImmutable()Lcom/android/server/permission/access/immutable/MutableReference;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object p0, p0, Lcom/android/server/permission/access/MutableSystemState;->permissionsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->toImmutable()Lcom/android/server/permission/access/immutable/MutableReference;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-direct {v0, v1, v2, p0}, Lcom/android/server/permission/access/MutableSystemState;-><init>(Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method
