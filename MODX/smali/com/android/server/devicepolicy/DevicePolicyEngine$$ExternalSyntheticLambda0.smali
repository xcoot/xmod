.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    iput p2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda0;->f$2:I

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput p3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 14

    .line 1
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 8
    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda0;->f$2:I

    .line 10
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 12
    check-cast v2, Ljava/lang/String;

    .line 14
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    .line 16
    check-cast p0, Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getEnforcingAdminsOnUser(I)Ljava/util/Set;

    .line 21
    move-result-object v3

    .line 22
    if-eqz v2, :cond_1

    .line 24
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object v4

    .line 28
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_1

    .line 34
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v5

    .line 38
    check-cast v5, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 40
    iget-object v6, v5, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    .line 42
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v6

    .line 46
    if-eqz v6, :cond_0

    .line 48
    invoke-virtual {v0, v5}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removePoliciesForAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    .line 51
    goto/16 :goto_5

    .line 53
    :cond_1
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 56
    move-result-object v2

    .line 57
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    move-result v3

    .line 61
    const-string v4, "Error handling package changes"

    .line 63
    const-wide/16 v5, 0x0

    .line 65
    const-string v7, "DevicePolicyEngine"

    .line 67
    if-eqz v3, :cond_5

    .line 69
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 75
    if-eqz p0, :cond_3

    .line 77
    iget-object v8, v3, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    .line 79
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result v8

    .line 83
    if-eqz v8, :cond_2

    .line 85
    :cond_3
    iget-object v8, v3, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    .line 87
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 90
    move-result-object v9

    .line 91
    invoke-interface {v9, v8, v5, v6, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 94
    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    if-eqz v4, :cond_4

    .line 97
    goto :goto_0

    .line 98
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    move-result-object p0

    .line 102
    iget-object v1, v3, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    .line 104
    filled-new-array {v1, p0}, [Ljava/lang/Object;

    .line 107
    move-result-object p0

    .line 108
    const-string v1, "Admin package %s not found for user %d, removing admin policies"

    .line 110
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 113
    move-result-object p0

    .line 114
    invoke-static {v7, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {v0, v3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removePoliciesForAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    .line 120
    goto/16 :goto_5

    .line 122
    :catch_0
    move-exception v3

    .line 123
    invoke-static {v7, v4, v3}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    goto :goto_0

    .line 127
    :cond_5
    if-eqz p0, :cond_d

    .line 129
    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getEnforcingAdminsOnUser(I)Ljava/util/Set;

    .line 132
    move-result-object v2

    .line 133
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 136
    move-result-object v2

    .line 137
    :cond_6
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    move-result v3

    .line 141
    if-eqz v3, :cond_8

    .line 143
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    move-result-object v3

    .line 147
    check-cast v3, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 149
    const-string/jumbo v8, "enterprise"

    .line 152
    invoke-virtual {v3, v8}, Lcom/android/server/devicepolicy/EnforcingAdmin;->hasAuthority(Ljava/lang/String;)Z

    .line 155
    move-result v8

    .line 156
    if-eqz v8, :cond_7

    .line 158
    goto :goto_1

    .line 159
    :cond_7
    iget-object v3, v3, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    .line 161
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    move-result v3

    .line 165
    if-eqz v3, :cond_6

    .line 167
    iget-object v3, v0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mDeviceAdminServiceController:Lcom/android/server/devicepolicy/DeviceAdminServiceController;

    .line 169
    invoke-virtual {v3, v1, p0}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->startServiceForAdmin(ILjava/lang/String;)V

    .line 172
    goto :goto_1

    .line 173
    :cond_8
    sget-object v2, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_PERSISTENT_PREFERRED_ACTIVITY:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 175
    invoke-virtual {v0, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getLocalPolicyKeysSetByAllAdmins(Lcom/android/server/devicepolicy/PolicyDefinition;I)Ljava/util/Set;

    .line 178
    move-result-object v2

    .line 179
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 182
    move-result-object v2

    .line 183
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 186
    move-result v3

    .line 187
    if-eqz v3, :cond_d

    .line 189
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 192
    move-result-object v3

    .line 193
    check-cast v3, Landroid/app/admin/PolicyKey;

    .line 195
    instance-of v8, v3, Landroid/app/admin/IntentFilterPolicyKey;

    .line 197
    if-eqz v8, :cond_c

    .line 199
    check-cast v3, Landroid/app/admin/IntentFilterPolicyKey;

    .line 201
    invoke-virtual {v3}, Landroid/app/admin/IntentFilterPolicyKey;->getIntentFilter()Landroid/content/IntentFilter;

    .line 204
    move-result-object v3

    .line 205
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-static {v3}, Lcom/android/server/devicepolicy/PolicyDefinition;->PERSISTENT_PREFERRED_ACTIVITY(Landroid/content/IntentFilter;)Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 211
    move-result-object v3

    .line 212
    invoke-virtual {v0, v3, v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getLocalPoliciesSetByAdmins(Lcom/android/server/devicepolicy/PolicyDefinition;I)Ljava/util/LinkedHashMap;

    .line 215
    move-result-object v8

    .line 216
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 219
    move-result-object v9

    .line 220
    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 223
    move-result-object v10

    .line 224
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 227
    move-result-object v10

    .line 228
    :cond_a
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 231
    move-result v11

    .line 232
    if-eqz v11, :cond_9

    .line 234
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 237
    move-result-object v11

    .line 238
    check-cast v11, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 240
    invoke-virtual {v8, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    move-result-object v12

    .line 244
    check-cast v12, Landroid/app/admin/PolicyValue;

    .line 246
    invoke-virtual {v12}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    .line 249
    move-result-object v12

    .line 250
    if-eqz v12, :cond_a

    .line 252
    invoke-virtual {v8, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    move-result-object v12

    .line 256
    check-cast v12, Landroid/app/admin/PolicyValue;

    .line 258
    invoke-virtual {v12}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    .line 261
    move-result-object v12

    .line 262
    check-cast v12, Landroid/content/ComponentName;

    .line 264
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 267
    move-result-object v12

    .line 268
    invoke-virtual {v12, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 271
    move-result v12

    .line 272
    if-eqz v12, :cond_a

    .line 274
    :try_start_1
    invoke-interface {v9, p0, v5, v6, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 277
    move-result-object v12

    .line 278
    if-eqz v12, :cond_b

    .line 280
    invoke-virtual {v8, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    move-result-object v12

    .line 284
    check-cast v12, Landroid/app/admin/PolicyValue;

    .line 286
    invoke-virtual {v12}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    .line 289
    move-result-object v12

    .line 290
    check-cast v12, Landroid/content/ComponentName;

    .line 292
    invoke-interface {v9, v12, v5, v6, v1}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    .line 295
    move-result-object v12

    .line 296
    if-nez v12, :cond_a

    .line 298
    goto :goto_3

    .line 299
    :catch_1
    move-exception v11

    .line 300
    goto :goto_4

    .line 301
    :cond_b
    :goto_3
    const-string v12, "Persistent preferred activity in package %s not found for user %d, removing policy for admin"

    .line 303
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 306
    move-result-object v13

    .line 307
    filled-new-array {p0, v13}, [Ljava/lang/Object;

    .line 310
    move-result-object v13

    .line 311
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 314
    move-result-object v12

    .line 315
    invoke-static {v7, v12}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual {v0, v3, v11, v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removeLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 321
    goto :goto_2

    .line 322
    :goto_4
    invoke-static {v7, v4, v11}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 325
    goto :goto_2

    .line 326
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 328
    const-string v0, "PolicyKey for PERSISTENT_PREFERRED_ACTIVITY is not of type IntentFilterPolicyKey"

    .line 330
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 333
    throw p0

    .line 334
    :cond_d
    :goto_5
    return-void

    .line 335
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 337
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 339
    check-cast v1, Landroid/content/Intent;

    .line 341
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda0;->f$2:I

    .line 343
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda0;->f$3:Ljava/lang/Object;

    .line 345
    check-cast p0, Landroid/os/Bundle;

    .line 347
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mContext:Landroid/content/Context;

    .line 349
    new-instance v3, Landroid/os/UserHandle;

    .line 351
    invoke-direct {v3, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 354
    const/4 v2, 0x0

    .line 355
    invoke-virtual {v0, v1, v3, v2, p0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 358
    return-void

    .line 359
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
