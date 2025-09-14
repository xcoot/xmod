.class public final Lcom/android/server/permission/access/permission/Permission;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final appId:I

.field public final areGidsPerUser:Z

.field public final gids:[I

.field public final isReconciled:Z

.field public final permissionInfo:Landroid/content/pm/PermissionInfo;

.field public final type:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/PermissionInfo;ZII)V
    .locals 7

    .line 8
    sget-object v5, Llibcore/util/EmptyArray;->INT:[I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 9
    invoke-direct/range {v0 .. v6}, Lcom/android/server/permission/access/permission/Permission;-><init>(Landroid/content/pm/PermissionInfo;ZII[IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PermissionInfo;ZII[IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 3
    iput-boolean p2, p0, Lcom/android/server/permission/access/permission/Permission;->isReconciled:Z

    .line 4
    iput p3, p0, Lcom/android/server/permission/access/permission/Permission;->type:I

    .line 5
    iput p4, p0, Lcom/android/server/permission/access/permission/Permission;->appId:I

    .line 6
    iput-object p5, p0, Lcom/android/server/permission/access/permission/Permission;->gids:[I

    .line 7
    iput-boolean p6, p0, Lcom/android/server/permission/access/permission/Permission;->areGidsPerUser:Z

    return-void
.end method

.method public static copy$default(Lcom/android/server/permission/access/permission/Permission;Landroid/content/pm/PermissionInfo;ZI)Lcom/android/server/permission/access/permission/Permission;
    .locals 8

    .line 1
    new-instance v7, Lcom/android/server/permission/access/permission/Permission;

    .line 2
    .line 3
    iget v3, p0, Lcom/android/server/permission/access/permission/Permission;->type:I

    .line 4
    .line 5
    iget-object v5, p0, Lcom/android/server/permission/access/permission/Permission;->gids:[I

    .line 6
    .line 7
    iget-boolean v6, p0, Lcom/android/server/permission/access/permission/Permission;->areGidsPerUser:Z

    .line 8
    .line 9
    move-object v0, v7

    .line 10
    move-object v1, p1

    .line 11
    move v2, p2

    .line 12
    move v4, p3

    .line 13
    invoke-direct/range {v0 .. v6}, Lcom/android/server/permission/access/permission/Permission;-><init>(Landroid/content/pm/PermissionInfo;ZII[IZ)V

    .line 14
    .line 15
    .line 16
    return-object v7
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/server/permission/access/permission/Permission;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/server/permission/access/permission/Permission;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/permission/access/permission/Permission;->isReconciled:Z

    .line 25
    .line 26
    iget-boolean v3, p1, Lcom/android/server/permission/access/permission/Permission;->isReconciled:Z

    .line 27
    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget v1, p0, Lcom/android/server/permission/access/permission/Permission;->type:I

    .line 32
    .line 33
    iget v3, p1, Lcom/android/server/permission/access/permission/Permission;->type:I

    .line 34
    .line 35
    if-eq v1, v3, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    iget v1, p0, Lcom/android/server/permission/access/permission/Permission;->appId:I

    .line 39
    .line 40
    iget v3, p1, Lcom/android/server/permission/access/permission/Permission;->appId:I

    .line 41
    .line 42
    if-eq v1, v3, :cond_5

    .line 43
    .line 44
    return v2

    .line 45
    :cond_5
    iget-object v1, p0, Lcom/android/server/permission/access/permission/Permission;->gids:[I

    .line 46
    .line 47
    iget-object v3, p1, Lcom/android/server/permission/access/permission/Permission;->gids:[I

    .line 48
    .line 49
    invoke-static {v1, v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_6

    .line 54
    .line 55
    return v2

    .line 56
    :cond_6
    iget-boolean p0, p0, Lcom/android/server/permission/access/permission/Permission;->areGidsPerUser:Z

    .line 57
    .line 58
    iget-boolean p1, p1, Lcom/android/server/permission/access/permission/Permission;->areGidsPerUser:Z

    .line 59
    .line 60
    if-eq p0, p1, :cond_7

    .line 61
    .line 62
    return v2

    .line 63
    :cond_7
    return v0
.end method

.method public final getGidsForUser(I)[I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/permission/access/permission/Permission;->areGidsPerUser:Z

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/permission/access/permission/Permission;->gids:[I

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    array-length v0, p0

    .line 8
    new-array v1, v0, [I

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v0, :cond_1

    .line 12
    .line 13
    aget v3, p0, v2

    .line 14
    .line 15
    invoke-static {p1, v3}, Landroid/os/UserHandle;->getUid(II)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    aput v3, v1, v2

    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    array-length p1, p0

    .line 25
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string p0, "copyOf(...)"

    .line 30
    .line 31
    invoke-static {p0, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-object v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/android/server/permission/access/permission/Permission;->isReconciled:Z

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    iget v0, p0, Lcom/android/server/permission/access/permission/Permission;->type:I

    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget v1, p0, Lcom/android/server/permission/access/permission/Permission;->appId:I

    .line 28
    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v1, v0

    .line 34
    mul-int/lit8 v1, v1, 0x1f

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/permission/access/permission/Permission;->gids:[I

    .line 37
    .line 38
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    add-int/2addr v0, v1

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget-boolean p0, p0, Lcom/android/server/permission/access/permission/Permission;->areGidsPerUser:Z

    .line 46
    .line 47
    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    add-int/2addr p0, v0

    .line 52
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/permission/access/permission/Permission;->permissionInfo:Landroid/content/pm/PermissionInfo;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/permission/access/permission/Permission;->gids:[I

    .line 4
    .line 5
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v3, "Permission(permissionInfo="

    .line 12
    .line 13
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v0, ", isReconciled="

    .line 20
    .line 21
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/android/server/permission/access/permission/Permission;->isReconciled:Z

    .line 25
    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v0, ", type="

    .line 30
    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget v0, p0, Lcom/android/server/permission/access/permission/Permission;->type:I

    .line 35
    .line 36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v0, ", appId="

    .line 40
    .line 41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget v0, p0, Lcom/android/server/permission/access/permission/Permission;->appId:I

    .line 45
    .line 46
    const-string v3, ", gids="

    .line 47
    .line 48
    const-string v4, ", areGidsPerUser="

    .line 49
    .line 50
    invoke-static {v0, v3, v1, v4, v2}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 51
    .line 52
    .line 53
    iget-boolean p0, p0, Lcom/android/server/permission/access/permission/Permission;->areGidsPerUser:Z

    .line 54
    .line 55
    const-string v0, ")"

    .line 56
    .line 57
    invoke-static {v0, v2, p0}, Landroid/hardware/biometrics/face/V1_0/OptionalBool$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0
.end method
