.class public final Lcom/android/server/pm/permission/UserPermissionState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mInstallPermissionsFixed:Landroid/util/ArraySet;

.field public final mUidStates:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/pm/permission/UserPermissionState;->mInstallPermissionsFixed:Landroid/util/ArraySet;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/pm/permission/UserPermissionState;->mUidStates:Landroid/util/SparseArray;

    .line 17
    .line 18
    return-void
.end method

.method public static checkAppId(I)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string v1, "Invalid app ID "

    .line 11
    .line 12
    invoke-static {p0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0
.end method


# virtual methods
.method public final getOrCreateUidState(I)Lcom/android/server/pm/permission/UidPermissionState;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/server/pm/permission/UserPermissionState;->checkAppId(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/pm/permission/UserPermissionState;->mUidStates:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/server/pm/permission/UidPermissionState;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lcom/android/server/pm/permission/UidPermissionState;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/pm/permission/UserPermissionState;->mUidStates:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-object v0
.end method

.method public final getUidState(I)Lcom/android/server/pm/permission/UidPermissionState;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/server/pm/permission/UserPermissionState;->checkAppId(I)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/pm/permission/UserPermissionState;->mUidStates:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/pm/permission/UidPermissionState;

    .line 11
    .line 12
    return-object p0
.end method

.method public final setInstallPermissionsFixed(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/permission/UserPermissionState;->mInstallPermissionsFixed:Landroid/util/ArraySet;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/permission/UserPermissionState;->mInstallPermissionsFixed:Landroid/util/ArraySet;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method
