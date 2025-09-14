.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda153;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda153;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda153;->f$0:Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda153;->f$1:Ljava/lang/Object;

    .line 7
    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda153;->f$2:Ljava/lang/Object;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda153;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda153;->f$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 10
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda153;->f$1:Ljava/lang/Object;

    .line 12
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 14
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda153;->f$2:Ljava/lang/Object;

    .line 16
    check-cast p0, Landroid/telephony/data/ApnSetting;

    .line 18
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 20
    invoke-virtual {v1, v0, p0}, Landroid/telephony/TelephonyManager;->addDevicePolicyOverrideApn(Landroid/content/Context;Landroid/telephony/data/ApnSetting;)I

    .line 23
    move-result p0

    .line 24
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda153;->f$0:Ljava/lang/Object;

    .line 31
    check-cast v0, Landroid/app/role/RoleManager;

    .line 33
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda153;->f$1:Ljava/lang/Object;

    .line 35
    check-cast v1, Ljava/lang/String;

    .line 37
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda153;->f$2:Ljava/lang/Object;

    .line 39
    check-cast p0, Landroid/os/UserHandle;

    .line 41
    invoke-virtual {v0, v1, p0}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    .line 44
    move-result-object p0

    .line 45
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_0

    .line 51
    const/4 p0, 0x0

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 v0, 0x0

    .line 54
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    move-result-object p0

    .line 58
    check-cast p0, Ljava/lang/String;

    .line 60
    :goto_0
    return-object p0

    .line 61
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda153;->f$0:Ljava/lang/Object;

    .line 63
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 65
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda153;->f$1:Ljava/lang/Object;

    .line 67
    check-cast v1, Lcom/android/server/devicepolicy/CallerIdentity;

    .line 69
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda153;->f$2:Ljava/lang/Object;

    .line 71
    check-cast p0, Landroid/os/Bundle;

    .line 73
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 75
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 77
    const-class v2, Landroid/net/wifi/WifiManager;

    .line 79
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 85
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getFactoryMacAddresses()[Ljava/lang/String;

    .line 88
    move-result-object v0

    .line 89
    const/4 v2, 0x0

    .line 90
    if-nez v0, :cond_1

    .line 92
    goto :goto_1

    .line 93
    :cond_1
    const/16 v3, 0x36

    .line 95
    invoke-static {v3}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    .line 98
    move-result-object v3

    .line 99
    iget-object v1, v1, Lcom/android/server/devicepolicy/CallerIdentity;->mPackageName:Ljava/lang/String;

    .line 101
    invoke-virtual {v3, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setAdmin(Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v1, p0}, Landroid/app/admin/DevicePolicyEventLogger;->setKnoxBundleValue(Landroid/os/Bundle;)Landroid/app/admin/DevicePolicyEventLogger;

    .line 108
    move-result-object p0

    .line 109
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 112
    array-length p0, v0

    .line 113
    if-lez p0, :cond_2

    .line 115
    const/4 p0, 0x0

    .line 116
    aget-object v2, v0, p0

    .line 118
    :cond_2
    :goto_1
    return-object v2

    .line 119
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda153;->f$0:Ljava/lang/Object;

    .line 121
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 123
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda153;->f$1:Ljava/lang/Object;

    .line 125
    check-cast v1, Lcom/android/server/devicepolicy/CallerIdentity;

    .line 127
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda153;->f$2:Ljava/lang/Object;

    .line 129
    check-cast p0, Ljava/util/List;

    .line 131
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    iget v2, v1, Lcom/android/server/devicepolicy/CallerIdentity;->mUid:I

    .line 136
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 139
    move-result v2

    .line 140
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    .line 143
    move-result-object v3

    .line 144
    monitor-enter v3

    .line 145
    :try_start_0
    invoke-virtual {v0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminPackagesLocked(I)Ljava/util/Set;

    .line 148
    move-result-object v4

    .line 149
    new-instance v5, Ljava/util/ArrayList;

    .line 151
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 154
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 157
    move-result v6

    .line 158
    add-int/lit8 v6, v6, -0x1

    .line 160
    :goto_2
    if-ltz v6, :cond_5

    .line 162
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 165
    move-result-object v7

    .line 166
    check-cast v7, Ljava/lang/String;

    .line 168
    move-object v8, v4

    .line 169
    check-cast v8, Landroid/util/ArraySet;

    .line 171
    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 174
    move-result v8

    .line 175
    if-eqz v8, :cond_3

    .line 177
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    goto :goto_3

    .line 181
    :catchall_0
    move-exception p0

    .line 182
    goto :goto_4

    .line 183
    :cond_3
    :try_start_1
    iget-object v8, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 185
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 191
    move-result-object v8

    .line 192
    invoke-interface {v8, v7, v2}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    .line 195
    move-result v8

    .line 196
    if-nez v8, :cond_4

    .line 198
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    :catch_0
    :cond_4
    :goto_3
    add-int/lit8 v6, v6, -0x1

    .line 203
    goto :goto_2

    .line 204
    :cond_5
    :try_start_2
    invoke-interface {p0, v5}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 207
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 208
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    .line 211
    move-result-object v2

    .line 212
    monitor-enter v2

    .line 213
    :try_start_3
    iget v3, v1, Lcom/android/server/devicepolicy/CallerIdentity;->mUid:I

    .line 215
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 218
    move-result v3

    .line 219
    invoke-virtual {v0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwnerOrDeviceOwnerLocked(I)Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 222
    move-result-object v3

    .line 223
    iput-object p0, v3, Lcom/android/server/devicepolicy/ActiveAdmin;->meteredDisabledPackages:Ljava/util/List;

    .line 225
    iget p0, v1, Lcom/android/server/devicepolicy/CallerIdentity;->mUid:I

    .line 227
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 230
    move-result p0

    .line 231
    const/4 v3, 0x0

    .line 232
    invoke-virtual {v0, p0, v3, v3, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(IZZZ)V

    .line 235
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 236
    iget p0, v1, Lcom/android/server/devicepolicy/CallerIdentity;->mUid:I

    .line 238
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 241
    move-result p0

    .line 242
    invoke-virtual {v0, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->pushMeteredDisabledPackages(I)V

    .line 245
    return-object v5

    .line 246
    :catchall_1
    move-exception p0

    .line 247
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 248
    throw p0

    .line 249
    :goto_4
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 250
    throw p0

    .line 251
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
