.class public final Lcom/android/server/enterprise/common/EnterprisePermissionChecker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sInstance:Lcom/android/server/enterprise/common/EnterprisePermissionChecker;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;


# virtual methods
.method public final enforceAuthorization()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 3
    if-nez v0, :cond_0

    .line 5
    sget-object v0, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    .line 7
    const-class v1, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 15
    iput-object v0, p0, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 19
    check-cast v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_3

    .line 30
    const-string/jumbo v1, "version"

    .line 33
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    const-string v1, "2.0"

    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_3

    .line 45
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 48
    move-result v0

    .line 49
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 52
    move-result v1

    .line 53
    sget-boolean v2, Lcom/android/server/ServiceKeeper;->isActive:Z

    .line 55
    if-nez v2, :cond_1

    .line 57
    invoke-static {}, Lcom/android/server/ServiceKeeper;->authorizeLoadProcedure()Z

    .line 60
    :cond_1
    iget-object p0, p0, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->mContext:Landroid/content/Context;

    .line 62
    const-string v2, "AuditLogService"

    .line 64
    const-string v3, "AuditLogger"

    .line 66
    invoke-static {v1, v0, p0, v2, v3}, Lcom/android/server/ServiceKeeper;->isAuthorized(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    move-result p0

    .line 70
    if-nez p0, :cond_2

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 75
    const-string v0, "Method AuditLogger from service AuditLogService is not authorized to be called!!!"

    .line 77
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 80
    throw p0

    .line 81
    :cond_3
    :goto_0
    return-void
.end method
