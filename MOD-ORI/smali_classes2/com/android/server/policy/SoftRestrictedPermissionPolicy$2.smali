.class public final Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;
.super Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic val$hasLegacyExternalStorage:Z

.field public final synthetic val$hasRequestedLegacyExternalStorage:Z

.field public final synthetic val$hasRequestedPreserveLegacyExternalStorage:Z

.field public final synthetic val$hasWriteMediaStorageGrantedForUid:Z

.field public final synthetic val$isForcedScopedStorage:Z

.field public final synthetic val$isWhiteListed:Z

.field public final synthetic val$shouldApplyRestriction:Z

.field public final synthetic val$targetSDK:I


# direct methods
.method public constructor <init>(ZIZZZZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$isWhiteListed:Z

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$targetSDK:I

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$shouldApplyRestriction:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$isForcedScopedStorage:Z

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$hasWriteMediaStorageGrantedForUid:Z

    .line 13
    .line 14
    iput-boolean p6, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$hasLegacyExternalStorage:Z

    .line 15
    .line 16
    iput-boolean p7, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$hasRequestedLegacyExternalStorage:Z

    .line 17
    .line 18
    iput-boolean p8, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$hasRequestedPreserveLegacyExternalStorage:Z

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final getExtraAppOpCode()I
    .locals 0

    .line 1
    const/16 p0, 0x57

    .line 2
    .line 3
    return p0
.end method

.method public final mayAllowExtraAppOp()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$shouldApplyRestriction:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$isForcedScopedStorage:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    return v1

    .line 12
    :cond_1
    iget v0, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$targetSDK:I

    .line 13
    .line 14
    const/16 v2, 0x1e

    .line 15
    .line 16
    if-lt v0, v2, :cond_2

    .line 17
    .line 18
    return v1

    .line 19
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$hasWriteMediaStorageGrantedForUid:Z

    .line 20
    .line 21
    if-nez v0, :cond_3

    .line 22
    .line 23
    iget-boolean v0, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$hasLegacyExternalStorage:Z

    .line 24
    .line 25
    if-nez v0, :cond_3

    .line 26
    .line 27
    iget-boolean p0, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$hasRequestedLegacyExternalStorage:Z

    .line 28
    .line 29
    if-eqz p0, :cond_4

    .line 30
    .line 31
    :cond_3
    const/4 v1, 0x1

    .line 32
    :cond_4
    return v1
.end method

.method public final mayDenyExtraAppOpIfGranted()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$targetSDK:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->mayAllowExtraAppOp()Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    xor-int/2addr p0, v2

    .line 13
    return p0

    .line 14
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$shouldApplyRestriction:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    return v2

    .line 19
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$isForcedScopedStorage:Z

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-boolean p0, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$hasRequestedPreserveLegacyExternalStorage:Z

    .line 25
    .line 26
    if-nez p0, :cond_3

    .line 27
    .line 28
    return v2

    .line 29
    :cond_3
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public final mayGrantPermission()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$isWhiteListed:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;->val$targetSDK:I

    .line 6
    .line 7
    const/16 v0, 0x1d

    .line 8
    .line 9
    if-lt p0, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    :goto_1
    return p0
.end method
