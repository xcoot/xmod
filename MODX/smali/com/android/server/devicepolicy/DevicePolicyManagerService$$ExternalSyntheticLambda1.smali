.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Lcom/android/server/devicepolicy/CallerIdentity;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/CallerIdentity;Ljava/lang/String;Landroid/util/ArrayMap;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/devicepolicy/CallerIdentity;

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/util/List;Lcom/android/server/devicepolicy/CallerIdentity;Lcom/android/server/devicepolicy/EnforcingAdmin;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/devicepolicy/CallerIdentity;

    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 8
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 10
    check-cast v1, Ljava/util/List;

    .line 12
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/devicepolicy/CallerIdentity;

    .line 14
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Object;

    .line 16
    move-object v5, p0

    .line 17
    check-cast v5, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_1

    .line 28
    invoke-virtual {v0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Lcom/android/server/devicepolicy/CallerIdentity;)Z

    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_0

    .line 34
    iget-object p0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDevicePolicyEngine:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 36
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_CONTROLLED_DISABLED_PACKAGES:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 38
    invoke-virtual {p0, v0, v5}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removeGlobalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object p0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDevicePolicyEngine:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 44
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_CONTROLLED_DISABLED_PACKAGES:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 46
    iget v1, v2, Lcom/android/server/devicepolicy/CallerIdentity;->mUid:I

    .line 48
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 51
    move-result v1

    .line 52
    invoke-virtual {p0, v0, v5, v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removeLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;I)V

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    new-instance p0, Ljava/util/HashSet;

    .line 58
    invoke-direct {p0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 61
    invoke-virtual {v0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(Lcom/android/server/devicepolicy/CallerIdentity;)Z

    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_2

    .line 67
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDevicePolicyEngine:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 69
    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_CONTROLLED_DISABLED_PACKAGES:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 71
    new-instance v2, Landroid/app/admin/PackageSetPolicyValue;

    .line 73
    invoke-direct {v2, p0}, Landroid/app/admin/PackageSetPolicyValue;-><init>(Ljava/util/Set;)V

    .line 76
    invoke-virtual {v0, v1, v5, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->setGlobalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;)V

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDevicePolicyEngine:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 82
    sget-object v4, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_CONTROLLED_DISABLED_PACKAGES:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 84
    new-instance v6, Landroid/app/admin/PackageSetPolicyValue;

    .line 86
    invoke-direct {v6, p0}, Landroid/app/admin/PackageSetPolicyValue;-><init>(Ljava/util/Set;)V

    .line 89
    iget p0, v2, Lcom/android/server/devicepolicy/CallerIdentity;->mUid:I

    .line 91
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 94
    move-result v7

    .line 95
    const/4 v8, 0x0

    .line 96
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->setLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;IZ)V

    .line 99
    :goto_0
    return-void

    .line 100
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 102
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/devicepolicy/CallerIdentity;

    .line 104
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 106
    check-cast v2, Ljava/lang/String;

    .line 108
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda1;->f$3:Ljava/lang/Object;

    .line 110
    check-cast p0, Landroid/util/ArrayMap;

    .line 112
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    const-string v3, "DevicePolicyManager"

    .line 117
    :try_start_0
    iget-object v4, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 119
    iget v5, v1, Lcom/android/server/devicepolicy/CallerIdentity;->mUid:I

    .line 121
    invoke-static {v5}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 124
    move-result-object v5

    .line 125
    invoke-static {v4, v5}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    .line 128
    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :try_start_1
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    .line 132
    move-result-object v5

    .line 133
    invoke-interface {v5, v2}, Landroid/security/IKeyChainService;->getGrants(Ljava/lang/String;)[I

    .line 136
    move-result-object v2

    .line 137
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 139
    iget v1, v1, Lcom/android/server/devicepolicy/CallerIdentity;->mUid:I

    .line 141
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 144
    move-result v1

    .line 145
    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getPackageManager(I)Landroid/content/pm/PackageManager;

    .line 148
    move-result-object v0

    .line 149
    array-length v1, v2

    .line 150
    const/4 v5, 0x0

    .line 151
    :goto_1
    if-ge v5, v1, :cond_4

    .line 153
    aget v6, v2, v5

    .line 155
    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 158
    move-result-object v7

    .line 159
    if-nez v7, :cond_3

    .line 161
    new-instance v7, Ljava/lang/StringBuilder;

    .line 163
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    const-string v8, "No packages found for uid "

    .line 168
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    move-result-object v6

    .line 178
    invoke-static {v3, v6}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    goto :goto_2

    .line 182
    :catchall_0
    move-exception p0

    .line 183
    goto :goto_3

    .line 184
    :cond_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 187
    move-result-object v6

    .line 188
    new-instance v8, Landroid/util/ArraySet;

    .line 190
    invoke-direct {v8, v7}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    .line 193
    invoke-virtual {p0, v6, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 198
    goto :goto_1

    .line 199
    :cond_4
    :try_start_2
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 202
    goto :goto_7

    .line 203
    :catch_0
    move-exception p0

    .line 204
    goto :goto_5

    .line 205
    :catch_1
    move-exception p0

    .line 206
    goto :goto_6

    .line 207
    :goto_3
    if-eqz v4, :cond_5

    .line 209
    :try_start_3
    invoke-virtual {v4}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 212
    goto :goto_4

    .line 213
    :catchall_1
    move-exception v0

    .line 214
    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 217
    :cond_5
    :goto_4
    throw p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 218
    :goto_5
    const-string v0, "Interrupted while querying keypair grants"

    .line 220
    invoke-static {v3, v0, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 226
    move-result-object p0

    .line 227
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 230
    goto :goto_7

    .line 231
    :goto_6
    const-string v0, "Querying keypair grants"

    .line 233
    invoke-static {v3, v0, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    :goto_7
    return-void

    .line 237
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
