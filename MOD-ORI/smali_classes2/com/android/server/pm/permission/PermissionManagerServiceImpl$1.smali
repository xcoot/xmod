.class public final Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;
.super Lcom/android/server/pm/permission/PermissionManagerServiceImpl$PermissionCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getSecureInt(ILjava/lang/String;)Ljava/util/Optional;
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 18
    .line 19
    .line 20
    move-result-object p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return-object p0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    sget-object p1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->EMPTY_INT_ARRAY:[I

    .line 24
    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v0, "Setting "

    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p2, " not found"

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string p2, "PermissionManagerServiceImpl"

    .line 45
    .line 46
    invoke-static {p2, p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    .line 48
    .line 49
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method

.method public final onGidsChanged(II)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda6;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$$ExternalSyntheticLambda6;-><init>(III)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onInstallPermissionGranted()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onInstallPermissionUpdated()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onPermissionGranted(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    .line 4
    .line 5
    invoke-virtual {p2, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onPermissionRevoked(Ljava/lang/String;IZILjava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    .line 4
    .line 5
    invoke-virtual {v1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManagerInternal;->writeSettings(Z)V

    .line 12
    .line 13
    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object p3, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 18
    .line 19
    new-instance v6, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    move-object v0, v6

    .line 22
    move-object v1, p0

    .line 23
    move-object v2, p5

    .line 24
    move v3, p2

    .line 25
    move-object v4, p1

    .line 26
    move v5, p4

    .line 27
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;Ljava/lang/String;ILjava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final onPermissionUpdated([IZI)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    .line 3
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    aget v1, p1, v0

    .line 8
    .line 9
    invoke-static {v1, p3}, Landroid/os/UserHandle;->getUid(II)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mOnPermissionChangeListeners:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    .line 16
    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p0, v2, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 22
    .line 23
    xor-int/lit8 p2, p2, 0x1

    .line 24
    .line 25
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManagerInternal;->writePermissionSettings([IZ)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
