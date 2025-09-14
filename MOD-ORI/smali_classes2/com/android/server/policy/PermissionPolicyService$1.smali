.class public final Lcom/android/server/policy/PermissionPolicyService$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/pm/PackageManagerInternal$PackageListObserver;


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PermissionPolicyService;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PermissionPolicyService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$1;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPackageAdded(Ljava/lang/String;I)V
    .locals 5

    .line 1
    const-class p1, Lcom/android/server/pm/UserManagerInternal;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/android/server/pm/UserManagerInternal;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    array-length v0, p1

    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    if-ge v1, v0, :cond_1

    .line 16
    .line 17
    aget v2, p1, v1

    .line 18
    .line 19
    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$1;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    .line 20
    .line 21
    invoke-virtual {v3, v2}, Lcom/android/server/policy/PermissionPolicyService;->isStarted(I)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    invoke-static {v2, p2}, Landroid/os/UserHandle;->getUid(II)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {v3, v2}, Lcom/android/server/policy/PermissionPolicyService;->synchronizeUidPermissionsAndAppOps(I)V

    .line 32
    .line 33
    .line 34
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-void
.end method

.method public final onPackageChanged(ILjava/lang/String;)V
    .locals 5

    .line 1
    const-class p2, Lcom/android/server/pm/UserManagerInternal;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Lcom/android/server/pm/UserManagerInternal;

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    array-length v0, p2

    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    if-ge v1, v0, :cond_1

    .line 16
    .line 17
    aget v2, p2, v1

    .line 18
    .line 19
    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$1;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    .line 20
    .line 21
    invoke-virtual {v3, v2}, Lcom/android/server/policy/PermissionPolicyService;->isStarted(I)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    invoke-static {v2, p1}, Landroid/os/UserHandle;->getUid(II)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {v3, v2}, Lcom/android/server/policy/PermissionPolicyService;->synchronizeUidPermissionsAndAppOps(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v2}, Lcom/android/server/policy/PermissionPolicyService;->resetAppOpPermissionsIfNotRequestedForUid(I)V

    .line 35
    .line 36
    .line 37
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return-void
.end method

.method public final onPackageRemoved(Ljava/lang/String;I)V
    .locals 5

    .line 1
    const-class p1, Lcom/android/server/pm/UserManagerInternal;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/android/server/pm/UserManagerInternal;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    array-length v0, p1

    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    if-ge v1, v0, :cond_1

    .line 16
    .line 17
    aget v2, p1, v1

    .line 18
    .line 19
    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$1;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    .line 20
    .line 21
    invoke-virtual {v3, v2}, Lcom/android/server/policy/PermissionPolicyService;->isStarted(I)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    invoke-static {v2, p2}, Landroid/os/UserHandle;->getUid(II)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {v3, v2}, Lcom/android/server/policy/PermissionPolicyService;->resetAppOpPermissionsIfNotRequestedForUid(I)V

    .line 32
    .line 33
    .line 34
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return-void
.end method
