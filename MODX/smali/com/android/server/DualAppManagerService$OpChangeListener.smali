.class public final Lcom/android/server/DualAppManagerService$OpChangeListener;
.super Landroid/app/AppOpsManager$OnOpChangedInternalListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final onOpChanged(ILjava/lang/String;)V
    .locals 4

    const/16 p0, 0x18

    if-ne p1, p0, :cond_0

    return-void

    .line 2
    :cond_0
    sget p0, Lcom/android/server/DualAppManagerService;->inOpsCallback:I

    if-eqz p0, :cond_1

    .line 3
    const-string p0, "DualAppManagerService"

    const-string/jumbo p1, "onOpChanged() is in progress"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 p0, 0x1

    .line 4
    sput p0, Lcom/android/server/DualAppManagerService;->inOpsCallback:I

    const/4 p0, 0x0

    .line 5
    :try_start_0
    sget-object v0, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 6
    sget-object v1, Lcom/android/server/DualAppManagerService;->mInstalledWhitelistedPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 7
    sput p0, Lcom/android/server/DualAppManagerService;->inOpsCallback:I

    return-void

    .line 8
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-virtual {v0, p1, v2, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v2

    .line 9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, p1, v3, p2, v2}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 10
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const-string v1, "Permission related app op changed"

    invoke-interface {p1, p2, v0, v1}, Landroid/app/IActivityManager;->killUid(IILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :catch_0
    sput p0, Lcom/android/server/DualAppManagerService;->inOpsCallback:I

    goto :goto_0

    :catchall_0
    move-exception p1

    sput p0, Lcom/android/server/DualAppManagerService;->inOpsCallback:I

    .line 12
    throw p1

    :goto_0
    return-void
.end method

.method public final onOpChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onOpChanged() "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DualAppManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
