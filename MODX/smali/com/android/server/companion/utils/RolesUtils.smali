.class public abstract Lcom/android/server/companion/utils/RolesUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static addRoleHolderForAssociation(Landroid/content/Context;Landroid/companion/AssociationInfo;Ljava/util/function/Consumer;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    .line 4
    move-result-object v1

    .line 5
    if-nez v1, :cond_0

    .line 7
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 9
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 12
    return-void

    .line 13
    :cond_0
    const-class v0, Landroid/app/role/RoleManager;

    .line 15
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/app/role/RoleManager;

    .line 21
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 28
    move-result p1

    .line 29
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 32
    move-result-object v4

    .line 33
    const/4 v3, 0x1

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 37
    move-result-object v5

    .line 38
    move-object v6, p2

    .line 39
    invoke-virtual/range {v0 .. v6}, Landroid/app/role/RoleManager;->addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 42
    return-void
.end method
