.class public final Lcom/android/server/locksettings/LockSettingsService$Injector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field public mHandlerThread:Lcom/android/server/ServiceThread;

.field public mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method public static getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 9
    return-object v0
.end method


# virtual methods
.method public final getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    .line 3
    const-string/jumbo v0, "device_policy"

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 12
    return-object p0
.end method

.method public final getPersonaService()Ljava/util/Optional;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-string/jumbo v0, "persona"

    .line 8
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISemPersonaManager;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/android/server/pm/PersonaManagerService;

    .line 18
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

    .line 20
    :cond_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mPersonaManagerService:Lcom/android/server/pm/PersonaManagerService;

    .line 22
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method
