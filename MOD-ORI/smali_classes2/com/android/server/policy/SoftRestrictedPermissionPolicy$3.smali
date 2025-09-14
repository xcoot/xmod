.class public final Lcom/android/server/policy/SoftRestrictedPermissionPolicy$3;
.super Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic val$isWhiteListed:Z

.field public final synthetic val$targetSDK:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$3;->val$isWhiteListed:Z

    .line 5
    .line 6
    iput p1, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$3;->val$targetSDK:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final mayGrantPermission()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$3;->val$isWhiteListed:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$3;->val$targetSDK:I

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
