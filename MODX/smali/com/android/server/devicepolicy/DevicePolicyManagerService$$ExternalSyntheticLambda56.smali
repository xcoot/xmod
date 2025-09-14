.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda56;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Landroid/content/ComponentName;

.field public final synthetic f$2:I

.field public final synthetic f$3:Z

.field public final synthetic f$4:Landroid/app/admin/DeviceAdminInfo;

.field public final synthetic f$5:Lcom/android/server/devicepolicy/DevicePolicyData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;IZLandroid/app/admin/DeviceAdminInfo;Lcom/android/server/devicepolicy/DevicePolicyData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda56;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 6
    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda56;->f$1:Landroid/content/ComponentName;

    .line 8
    iput p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda56;->f$2:I

    .line 10
    iput-boolean p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda56;->f$3:Z

    .line 12
    iput-object p5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda56;->f$4:Landroid/app/admin/DeviceAdminInfo;

    .line 14
    iput-object p6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda56;->f$5:Lcom/android/server/devicepolicy/DevicePolicyData;

    .line 16
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda56;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 3
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda56;->f$1:Landroid/content/ComponentName;

    .line 5
    iget v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda56;->f$2:I

    .line 7
    iget-boolean v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda56;->f$3:Z

    .line 9
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda56;->f$4:Landroid/app/admin/DeviceAdminInfo;

    .line 11
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda56;->f$5:Lcom/android/server/devicepolicy/DevicePolicyData;

    .line 13
    invoke-virtual {v0, v8, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminUncheckedLocked(ILandroid/content/ComponentName;)Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 16
    move-result-object v4

    .line 17
    if-nez v2, :cond_1

    .line 19
    if-nez v4, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 24
    const-string v0, "Admin is already added"

    .line 26
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    throw p0

    .line 30
    :cond_1
    :goto_0
    new-instance v9, Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 32
    const/4 v10, 0x0

    .line 33
    invoke-direct {v9, v3, v10}, Lcom/android/server/devicepolicy/ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;Z)V

    .line 36
    if-eqz v4, :cond_2

    .line 38
    iget-boolean v2, v4, Lcom/android/server/devicepolicy/ActiveAdmin;->testOnlyAdmin:Z

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 44
    move-result-object v2

    .line 45
    :try_start_0
    iget-object v4, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 47
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 53
    move-result-object v4

    .line 54
    const-wide/32 v5, 0xc0000

    .line 57
    invoke-interface {v4, v2, v5, v6, v8}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 60
    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 61
    if-eqz v4, :cond_8

    .line 63
    iget v2, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 65
    and-int/lit16 v2, v2, 0x100

    .line 67
    if-eqz v2, :cond_3

    .line 69
    const/4 v2, 0x1

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    move v2, v10

    .line 72
    :goto_1
    iput-boolean v2, v9, Lcom/android/server/devicepolicy/ActiveAdmin;->testOnlyAdmin:Z

    .line 74
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    .line 76
    invoke-virtual {v2, v1, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 81
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 84
    move-result v2

    .line 85
    move v4, v10

    .line 86
    :goto_2
    const/4 v5, -0x1

    .line 87
    if-ge v4, v2, :cond_5

    .line 89
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 91
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 94
    move-result-object v6

    .line 95
    check-cast v6, Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 97
    iget-object v6, v6, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 99
    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    .line 102
    move-result-object v6

    .line 103
    invoke-virtual {v6, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 106
    move-result v6

    .line 107
    if-eqz v6, :cond_4

    .line 109
    goto :goto_3

    .line 110
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 112
    goto :goto_2

    .line 113
    :cond_5
    move v4, v5

    .line 114
    :goto_3
    if-ne v4, v5, :cond_7

    .line 116
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 118
    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    .line 124
    move-result-object v3

    .line 125
    :try_start_1
    iget-object p0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 127
    const-wide/32 v4, 0x8000

    .line 130
    invoke-interface {p0, v3, v4, v5, v8}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 133
    move-result-object p0

    .line 134
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    .line 136
    const/4 v2, 0x4

    .line 137
    if-ne p0, v2, :cond_6

    .line 139
    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 141
    const-string v7, "DevicePolicyManager"

    .line 143
    const/4 v4, 0x0

    .line 144
    const/4 v5, 0x1

    .line 145
    move v6, v8

    .line 146
    invoke-interface/range {v2 .. v7}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 149
    :catch_0
    :cond_6
    iget-object p0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 151
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 154
    move-result-object v1

    .line 155
    check-cast p0, Lcom/android/server/usage/UsageStatsService$LocalService;

    .line 157
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 159
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 161
    invoke-interface {p0, v1, v8}, Lcom/android/server/usage/AppStandbyInternal;->addActiveDeviceAdmin(Ljava/lang/String;I)V

    .line 164
    goto :goto_4

    .line 165
    :cond_7
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    .line 167
    invoke-virtual {p0, v4, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 170
    :goto_4
    iget-boolean p0, v9, Lcom/android/server/devicepolicy/ActiveAdmin;->allowWifi:Z

    .line 172
    iput-boolean p0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->oldAllowWifi:Z

    .line 174
    invoke-virtual {v0, v8, v10, v10, v10}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(IZZZ)V

    .line 177
    const/4 v3, 0x0

    .line 178
    const/4 v4, 0x0

    .line 179
    const-string v2, "android.app.action.DEVICE_ADMIN_ENABLED"

    .line 181
    const/4 v5, 0x0

    .line 182
    move-object v1, v9

    .line 183
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/ActiveAdmin;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;Z)Z

    .line 186
    return-void

    .line 187
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 189
    const-string v0, "Couldn\'t find package: "

    .line 191
    const-string v1, " on user "

    .line 193
    invoke-static {v8, v0, v2, v1}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 196
    move-result-object v0

    .line 197
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 200
    throw p0

    .line 201
    :catch_1
    move-exception p0

    .line 202
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 204
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 207
    throw v0
.end method
