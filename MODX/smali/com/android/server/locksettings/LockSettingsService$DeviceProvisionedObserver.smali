.class public final Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDeviceProvisionedUri:Landroid/net/Uri;

.field public mRegistered:Z

.field public final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/LockSettingsService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 7
    const-string/jumbo p1, "device_provisioned"

    .line 10
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->mDeviceProvisionedUri:Landroid/net/Uri;

    .line 16
    return-void
.end method


# virtual methods
.method public final isProvisioned()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 3
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    move-result-object p0

    .line 9
    const-string/jumbo v0, "device_provisioned"

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 19
    const/4 v1, 0x1

    .line 20
    :cond_0
    return v1
.end method

.method public final onChange(ZLandroid/net/Uri;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->mDeviceProvisionedUri:Landroid/net/Uri;

    .line 3
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->updateRegistration()V

    .line 12
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->isProvisioned()Z

    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_1

    .line 18
    const-string p1, "Reporting device setup complete to IGateKeeperService"

    .line 20
    const-string p2, "LockSettingsService"

    .line 22
    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :try_start_0
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 27
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    .line 30
    move-result-object p1

    .line 31
    invoke-interface {p1}, Landroid/service/gatekeeper/IGateKeeperService;->reportDeviceSetupComplete()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p1

    .line 36
    const-string p3, "Failure reporting to IGateKeeperService"

    .line 38
    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    :goto_0
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 43
    iget-object p1, p1, Lcom/android/server/locksettings/LockSettingsService;->mUserManager:Landroid/os/UserManager;

    .line 45
    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 48
    move-result-object p1

    .line 49
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 52
    move-result-object p1

    .line 53
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    move-result p3

    .line 57
    if-eqz p3, :cond_1

    .line 59
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    move-result-object p3

    .line 63
    check-cast p3, Landroid/content/pm/UserInfo;

    .line 65
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 67
    iget-object v0, v0, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 69
    invoke-static {v0, p3}, Lcom/android/internal/widget/LockPatternUtils;->userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_0

    .line 75
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 77
    iget v0, p3, Landroid/content/pm/UserInfo;->id:I

    .line 79
    invoke-virtual {p1, v0}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    .line 82
    move-result p1

    .line 83
    if-nez p1, :cond_1

    .line 85
    iget p1, p3, Landroid/content/pm/UserInfo;->id:I

    .line 87
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    move-result-object p1

    .line 91
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 94
    move-result-object p1

    .line 95
    const-string v0, "Clearing FRP credential tied to user %d"

    .line 97
    invoke-static {p2, v0, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 102
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 104
    iget p1, p3, Landroid/content/pm/UserInfo;->id:I

    .line 106
    const/4 p2, 0x0

    .line 107
    const/4 p3, 0x0

    .line 108
    invoke-virtual {p0, p3, p1, p3, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->writePersistentDataBlock(III[B)V

    .line 111
    :cond_1
    return-void
.end method

.method public final updateRegistration()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->isProvisioned()Z

    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 7
    iget-boolean v1, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->mRegistered:Z

    .line 9
    if-ne v0, v1, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    if-eqz v0, :cond_1

    .line 14
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 16
    iget-object v1, v1, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 18
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->mDeviceProvisionedUri:Landroid/net/Uri;

    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-virtual {v1, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    .line 31
    iget-object v1, v1, Lcom/android/server/locksettings/LockSettingsService;->mContext:Landroid/content/Context;

    .line 33
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 40
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsService$DeviceProvisionedObserver;->mRegistered:Z

    .line 42
    return-void
.end method
