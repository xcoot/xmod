.class public final Lcom/android/server/permission/access/MutableUserState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/permission/access/WritableState;
.implements Lcom/android/server/permission/access/immutable/Immutable;


# instance fields
.field public final appIdAppOpModesReference:Lcom/android/server/permission/access/immutable/MutableReference;

.field public final appIdDevicePermissionFlagsReference:Lcom/android/server/permission/access/immutable/MutableReference;

.field public final appIdPermissionFlagsReference:Lcom/android/server/permission/access/immutable/MutableReference;

.field public defaultPermissionGrantFingerprint:Ljava/lang/String;

.field public final packageAppOpModesReference:Lcom/android/server/permission/access/immutable/MutableReference;

.field public final packageVersionsReference:Lcom/android/server/permission/access/immutable/MutableReference;

.field public writeMode:I


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 9
    new-instance v1, Lcom/android/server/permission/access/immutable/MutableReference;

    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    invoke-direct {v0}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>()V

    .line 10
    invoke-direct {v1, v0, v0}, Lcom/android/server/permission/access/immutable/MutableReference;-><init>(Lcom/android/server/permission/access/immutable/Immutable;Lcom/android/server/permission/access/immutable/Immutable;)V

    .line 11
    new-instance v2, Lcom/android/server/permission/access/immutable/MutableReference;

    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    invoke-direct {v0}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;-><init>()V

    .line 12
    invoke-direct {v2, v0, v0}, Lcom/android/server/permission/access/immutable/MutableReference;-><init>(Lcom/android/server/permission/access/immutable/Immutable;Lcom/android/server/permission/access/immutable/Immutable;)V

    .line 13
    new-instance v3, Lcom/android/server/permission/access/immutable/MutableReference;

    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    invoke-direct {v0}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;-><init>()V

    .line 14
    invoke-direct {v3, v0, v0}, Lcom/android/server/permission/access/immutable/MutableReference;-><init>(Lcom/android/server/permission/access/immutable/Immutable;Lcom/android/server/permission/access/immutable/Immutable;)V

    .line 15
    new-instance v4, Lcom/android/server/permission/access/immutable/MutableReference;

    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    invoke-direct {v0}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;-><init>()V

    .line 16
    invoke-direct {v4, v0, v0}, Lcom/android/server/permission/access/immutable/MutableReference;-><init>(Lcom/android/server/permission/access/immutable/Immutable;Lcom/android/server/permission/access/immutable/Immutable;)V

    .line 17
    new-instance v5, Lcom/android/server/permission/access/immutable/MutableReference;

    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    invoke-direct {v0}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;-><init>()V

    .line 18
    invoke-direct {v5, v0, v0}, Lcom/android/server/permission/access/immutable/MutableReference;-><init>(Lcom/android/server/permission/access/immutable/Immutable;Lcom/android/server/permission/access/immutable/Immutable;)V

    const/4 v6, 0x0

    move-object v0, p0

    .line 19
    invoke-direct/range {v0 .. v6}, Lcom/android/server/permission/access/MutableUserState;-><init>(Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/server/permission/access/MutableUserState;->packageVersionsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 3
    iput-object p2, p0, Lcom/android/server/permission/access/MutableUserState;->appIdPermissionFlagsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 4
    iput-object p3, p0, Lcom/android/server/permission/access/MutableUserState;->appIdDevicePermissionFlagsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 5
    iput-object p4, p0, Lcom/android/server/permission/access/MutableUserState;->appIdAppOpModesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 6
    iput-object p5, p0, Lcom/android/server/permission/access/MutableUserState;->packageAppOpModesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 7
    iput-object p6, p0, Lcom/android/server/permission/access/MutableUserState;->defaultPermissionGrantFingerprint:Ljava/lang/String;

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/android/server/permission/access/MutableUserState;->writeMode:I

    return-void
.end method


# virtual methods
.method public final getAppIdAppOpModes()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/MutableUserState;->appIdAppOpModesReference:Lcom/android/server/permission/access/immutable/MutableReference;

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

.method public final getAppIdDevicePermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/MutableUserState;->appIdDevicePermissionFlagsReference:Lcom/android/server/permission/access/immutable/MutableReference;

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

.method public final getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/MutableUserState;->appIdPermissionFlagsReference:Lcom/android/server/permission/access/immutable/MutableReference;

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

.method public final getPackageAppOpModes()Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/MutableUserState;->packageAppOpModesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/MutableReference;->immutable:Lcom/android/server/permission/access/immutable/Immutable;

    .line 4
    .line 5
    check-cast p0, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    .line 6
    .line 7
    return-object p0
.end method

.method public final getWriteMode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/permission/access/MutableUserState;->writeMode:I

    .line 2
    .line 3
    return p0
.end method

.method public final mutatePackageVersions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/permission/access/MutableUserState;->packageVersionsReference:Lcom/android/server/permission/access/immutable/MutableReference;

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

.method public final requestWriteMode(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/permission/access/MutableUserState;->writeMode:I

    .line 2
    .line 3
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput p1, p0, Lcom/android/server/permission/access/MutableUserState;->writeMode:I

    .line 8
    .line 9
    return-void
.end method

.method public final toMutable()Ljava/lang/Object;
    .locals 8

    .line 1
    new-instance v7, Lcom/android/server/permission/access/MutableUserState;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/permission/access/MutableUserState;->packageVersionsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/MutableReference;->toImmutable()Lcom/android/server/permission/access/immutable/MutableReference;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v0, p0, Lcom/android/server/permission/access/MutableUserState;->appIdPermissionFlagsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/MutableReference;->toImmutable()Lcom/android/server/permission/access/immutable/MutableReference;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v0, p0, Lcom/android/server/permission/access/MutableUserState;->appIdDevicePermissionFlagsReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/MutableReference;->toImmutable()Lcom/android/server/permission/access/immutable/MutableReference;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    iget-object v0, p0, Lcom/android/server/permission/access/MutableUserState;->appIdAppOpModesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/MutableReference;->toImmutable()Lcom/android/server/permission/access/immutable/MutableReference;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    iget-object v0, p0, Lcom/android/server/permission/access/MutableUserState;->packageAppOpModesReference:Lcom/android/server/permission/access/immutable/MutableReference;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/MutableReference;->toImmutable()Lcom/android/server/permission/access/immutable/MutableReference;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    iget-object v6, p0, Lcom/android/server/permission/access/MutableUserState;->defaultPermissionGrantFingerprint:Ljava/lang/String;

    .line 34
    .line 35
    move-object v0, v7

    .line 36
    invoke-direct/range {v0 .. v6}, Lcom/android/server/permission/access/MutableUserState;-><init>(Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Lcom/android/server/permission/access/immutable/MutableReference;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-object v7
.end method
