.class public final Lcom/android/server/locksettings/RebootEscrowManager$Injector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mKeyStoreManager:Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

.field public mRebootEscrowProvider:Lcom/android/server/locksettings/RebootEscrowProviderInterface;

.field public final mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/locksettings/LockSettingsStorage;Lcom/android/server/pm/UserManagerInternal;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mContext:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 8
    new-instance p1, Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

    .line 10
    invoke-direct {p1}, Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mKeyStoreManager:Lcom/android/server/locksettings/RebootEscrowKeyStoreManager;

    .line 15
    iput-object p3, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 17
    return-void
.end method


# virtual methods
.method public final createRebootEscrowProviderIfNeeded()Lcom/android/server/locksettings/RebootEscrowProviderInterface;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mRebootEscrowProvider:Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    .line 3
    if-nez v0, :cond_8

    .line 5
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->serverBasedResumeOnReboot()Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const-string v2, "RebootEscrowManager"

    .line 12
    if-eqz v0, :cond_6

    .line 14
    const-string v0, "Using server based resume on reboot"

    .line 16
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    new-instance v0, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;

    .line 21
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mContext:Landroid/content/Context;

    .line 23
    new-instance v3, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;

    .line 25
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v1, v3, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;->mServiceConnection:Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;

    .line 30
    new-instance v4, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider;

    .line 32
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 35
    move-result-object v5

    .line 36
    invoke-direct {v4, v2, v5}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    .line 39
    new-instance v2, Landroid/content/Intent;

    .line 41
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 44
    const-string v5, "android.service.resumeonreboot.ResumeOnRebootService"

    .line 46
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const-string/jumbo v5, "persist.sys.resume_on_reboot_provider_package"

    .line 52
    const-string v6, ""

    .line 54
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 61
    move-result v7

    .line 62
    if-nez v7, :cond_0

    .line 64
    const-string v6, "Using test app: "

    .line 66
    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object v6

    .line 70
    const-string v7, "ResumeOnRebootServiceProvider"

    .line 72
    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const/4 v5, 0x4

    .line 79
    goto :goto_0

    .line 80
    :cond_0
    sget-object v5, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider;->PROVIDER_PACKAGE:Ljava/lang/String;

    .line 82
    if-eqz v5, :cond_1

    .line 84
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    move-result v6

    .line 88
    if-nez v6, :cond_1

    .line 90
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    :cond_1
    const v5, 0x100004

    .line 96
    :goto_0
    iget-object v6, v4, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 98
    invoke-virtual {v6, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 101
    move-result-object v2

    .line 102
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 105
    move-result-object v2

    .line 106
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    move-result v5

    .line 110
    if-eqz v5, :cond_3

    .line 112
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    move-result-object v5

    .line 116
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 118
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 120
    if-eqz v6, :cond_2

    .line 122
    const-string v7, "android.permission.BIND_RESUME_ON_REBOOT_SERVICE"

    .line 124
    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 126
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    move-result v6

    .line 130
    if-eqz v6, :cond_2

    .line 132
    iget-object v2, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 134
    goto :goto_1

    .line 135
    :cond_3
    move-object v2, v1

    .line 136
    :goto_1
    if-nez v2, :cond_4

    .line 138
    move-object v5, v1

    .line 139
    goto :goto_2

    .line 140
    :cond_4
    new-instance v5, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;

    .line 142
    iget-object v4, v4, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider;->mContext:Landroid/content/Context;

    .line 144
    invoke-virtual {v2}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 147
    move-result-object v2

    .line 148
    invoke-direct {v5, v4, v2}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 151
    :goto_2
    iput-object v5, v3, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;->mServiceConnection:Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;

    .line 153
    if-nez v5, :cond_5

    .line 155
    const-string v2, "RebootEscrowProviderServerBased"

    .line 157
    const-string v4, "Failed to resolve resume on reboot server service."

    .line 159
    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_5
    iget-object v2, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 164
    invoke-direct {v0, v2, v3}, Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl;-><init>(Lcom/android/server/locksettings/LockSettingsStorage;Lcom/android/server/locksettings/RebootEscrowProviderServerBasedImpl$Injector;)V

    .line 167
    goto :goto_3

    .line 168
    :cond_6
    const-string v0, "Using HAL based resume on reboot"

    .line 170
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v0, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl;

    .line 175
    invoke-direct {v0}, Lcom/android/server/locksettings/RebootEscrowProviderHalImpl;-><init>()V

    .line 178
    :goto_3
    invoke-interface {v0}, Lcom/android/server/locksettings/RebootEscrowProviderInterface;->hasRebootEscrowSupport()Z

    .line 181
    move-result v2

    .line 182
    if-eqz v2, :cond_7

    .line 184
    move-object v1, v0

    .line 185
    :cond_7
    iput-object v1, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mRebootEscrowProvider:Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    .line 187
    :cond_8
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mRebootEscrowProvider:Lcom/android/server/locksettings/RebootEscrowProviderInterface;

    .line 189
    return-object p0
.end method

.method public getLoadEscrowTimeoutMillis()I
    .locals 0

    .line 1
    const p0, 0x2bf20

    .line 4
    return p0
.end method

.method public getWakeLockTimeoutMillis()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getLoadEscrowTimeoutMillis()I

    .line 4
    move-result p0

    .line 5
    add-int/lit16 p0, p0, 0x1388

    .line 7
    return p0
.end method

.method public final serverBasedResumeOnReboot()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    move-result-object p0

    .line 7
    const-string v0, "android.hardware.reboot_escrow"

    .line 9
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_0

    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_0
    const-string/jumbo p0, "server_based_ror_enabled"

    .line 20
    const/4 v0, 0x0

    .line 21
    const-string/jumbo v1, "ota"

    .line 24
    invoke-static {v1, p0, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 27
    move-result p0

    .line 28
    return p0
.end method
