.class public final synthetic Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/CompanionDeviceManagerService;

.field public final synthetic f$1:Landroid/content/pm/PackageInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/content/pm/PackageInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 6
    iput-object p2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda1;->f$1:Landroid/content/pm/PackageInfo;

    .line 8
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 3
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda1;->f$1:Landroid/content/pm/PackageInfo;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const-string v1, "Update SpAccess:"

    .line 10
    if-nez p0, :cond_0

    .line 12
    goto/16 :goto_7

    .line 14
    :cond_0
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 16
    const-string v3, "android.permission.RUN_IN_BACKGROUND"

    .line 18
    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x1

    .line 23
    const/4 v5, 0x0

    .line 24
    if-nez v3, :cond_2

    .line 26
    const-string v3, "android.permission.REQUEST_COMPANION_RUN_IN_BACKGROUND"

    .line 28
    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move v2, v5

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    :goto_0
    move v2, v4

    .line 38
    :goto_1
    const-string v3, "CDM_CompanionDeviceManagerService"

    .line 40
    if-eqz v2, :cond_3

    .line 42
    iget-object v1, v0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPowerExemptionManager:Landroid/os/PowerExemptionManager;

    .line 44
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 46
    invoke-virtual {v1, v2}, Landroid/os/PowerExemptionManager;->addToPermanentAllowList(Ljava/lang/String;)V

    .line 49
    goto :goto_3

    .line 50
    :cond_3
    const-string/jumbo v2, "deviceidle"

    .line 53
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 56
    move-result-object v2

    .line 57
    invoke-static {v2}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    .line 60
    move-result-object v2

    .line 61
    :try_start_0
    iget-object v6, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 63
    invoke-interface {v2, v6}, Landroid/os/IDeviceIdleController;->isPowerSaveWhitelistApp(Ljava/lang/String;)Z

    .line 66
    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 69
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 74
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, " Unrestricted:"

    .line 79
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object v1

    .line 89
    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 92
    goto :goto_2

    .line 93
    :catch_0
    move v2, v5

    .line 94
    :catch_1
    const-string v1, "RemoteException when calling isPowerSaveWhitelistApp"

    .line 96
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_2
    if-nez v2, :cond_4

    .line 101
    :try_start_2
    const-string v1, "Update SpAccess: remove from whitelist"

    .line 103
    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v1, v0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPowerExemptionManager:Landroid/os/PowerExemptionManager;

    .line 108
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 110
    invoke-virtual {v1, v2}, Landroid/os/PowerExemptionManager;->removeFromPermanentAllowList(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 113
    goto :goto_3

    .line 114
    :catch_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 116
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 121
    const-string v6, " can\'t be removed from power save whitelist. It might due to the package is whitelisted by the system."

    .line 123
    invoke-static {v1, v2, v6, v3}, Lcom/android/server/ProfileService$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_4
    :goto_3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 129
    move-result-object v1

    .line 130
    invoke-static {v1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    .line 133
    move-result-object v1

    .line 134
    :try_start_3
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 136
    const-string v6, "android.permission.USE_DATA_IN_BACKGROUND"

    .line 138
    const-string v7, "android.permission.REQUEST_COMPANION_USE_DATA_IN_BACKGROUND"

    .line 140
    invoke-static {v2, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 143
    move-result v6

    .line 144
    if-nez v6, :cond_6

    .line 146
    invoke-static {v2, v7}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 149
    move-result v2

    .line 150
    if-eqz v2, :cond_5

    .line 152
    goto :goto_4

    .line 153
    :cond_5
    move v4, v5

    .line 154
    :cond_6
    :goto_4
    const/4 v2, 0x4

    .line 155
    if-eqz v4, :cond_7

    .line 157
    iget-object v4, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 159
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 161
    invoke-virtual {v1, v4, v2}, Landroid/net/NetworkPolicyManager;->addUidPolicy(II)V

    .line 164
    goto :goto_6

    .line 165
    :catch_3
    move-exception v1

    .line 166
    goto :goto_5

    .line 167
    :cond_7
    iget-object v4, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 169
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 171
    invoke-virtual {v1, v4, v2}, Landroid/net/NetworkPolicyManager;->removeUidPolicy(II)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 174
    goto :goto_6

    .line 175
    :goto_5
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    .line 178
    move-result-object v1

    .line 179
    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :goto_6
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 184
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 186
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 188
    invoke-virtual {v0, p0, v1}, Lcom/android/server/companion/CompanionDeviceManagerService;->exemptFromAutoRevoke(ILjava/lang/String;)V

    .line 191
    :goto_7
    return-void
.end method
