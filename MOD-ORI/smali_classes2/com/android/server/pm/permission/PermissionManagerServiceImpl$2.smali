.class public final Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;
.super Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

.field public final synthetic val$asyncUpdatedUsers:Landroid/util/ArraySet;

.field public final synthetic val$revokedPermissions:Landroid/util/ArraySet;

.field public final synthetic val$syncUpdatedUsers:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;[Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->val$revokedPermissions:Landroid/util/ArraySet;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->val$syncUpdatedUsers:Landroid/util/ArraySet;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->val$asyncUpdatedUsers:Landroid/util/ArraySet;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onGidsChanged(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->onGidsChanged(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onInstallPermissionGranted()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->onInstallPermissionGranted()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onInstallPermissionUpdated()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->onInstallPermissionUpdated()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onPermissionGranted(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mDefaultPermissionCallback:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->onPermissionGranted(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onPermissionRevoked(Ljava/lang/String;IZILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->val$revokedPermissions:Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-static {p2, p4}, Lcom/android/internal/util/IntPair;->of(II)J

    .line 4
    .line 5
    .line 6
    move-result-wide p2

    .line 7
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->val$syncUpdatedUsers:Landroid/util/ArraySet;

    .line 15
    .line 16
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onPermissionUpdated([IZI)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    .line 4
    .line 5
    invoke-virtual {v0, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    .line 6
    .line 7
    .line 8
    array-length p3, p1

    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    if-ge v0, p3, :cond_2

    .line 11
    .line 12
    aget v1, p1, v0

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->val$syncUpdatedUsers:Landroid/util/ArraySet;

    .line 17
    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->val$asyncUpdatedUsers:Landroid/util/ArraySet;

    .line 26
    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->val$syncUpdatedUsers:Landroid/util/ArraySet;

    .line 36
    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const/4 v3, -0x1

    .line 46
    if-ne v2, v3, :cond_1

    .line 47
    .line 48
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$2;->val$asyncUpdatedUsers:Landroid/util/ArraySet;

    .line 49
    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    return-void
.end method
