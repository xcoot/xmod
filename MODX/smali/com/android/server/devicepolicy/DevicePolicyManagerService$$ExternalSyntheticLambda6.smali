.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 5
    iput p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda6;->f$1:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 8
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda6;->f$1:I

    .line 10
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 12
    invoke-virtual {v0, p0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isDemo()Z

    .line 19
    move-result p0

    .line 20
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 27
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda6;->f$1:I

    .line 29
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 31
    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    .line 34
    move-result p0

    .line 35
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 42
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda6;->f$1:I

    .line 44
    invoke-virtual {v0, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyData;

    .line 47
    move-result-object p0

    .line 48
    return-object p0

    .line 49
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 51
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda6;->f$1:I

    .line 53
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 58
    move-result-object v0

    .line 59
    const-string/jumbo v1, "managed_provisioning_dpc_downloaded"

    .line 62
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 65
    move-result p0

    .line 66
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 69
    move-result-object p0

    .line 70
    return-object p0

    .line 71
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 73
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda6;->f$1:I

    .line 75
    invoke-virtual {v0, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updatePersonalAppsSuspension(I)Z

    .line 78
    move-result p0

    .line 79
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 82
    move-result-object p0

    .line 83
    return-object p0

    .line 84
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 86
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda6;->f$1:I

    .line 88
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 90
    invoke-virtual {v0, p0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 93
    move-result-object p0

    .line 94
    return-object p0

    .line 95
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 97
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda6;->f$1:I

    .line 99
    invoke-virtual {v0, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    .line 102
    move-result-object p0

    .line 103
    return-object p0

    .line 104
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 106
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda6;->f$1:I

    .line 108
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 110
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 113
    move-result-object v1

    .line 114
    sget-object v0, Landroid/provider/Telephony$Carriers;->DPC_URI:Landroid/net/Uri;

    .line 116
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 119
    move-result-object p0

    .line 120
    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 123
    move-result-object v2

    .line 124
    const/4 v5, 0x0

    .line 125
    const-string/jumbo v6, "name ASC"

    .line 128
    const/4 v3, 0x0

    .line 129
    const/4 v4, 0x0

    .line 130
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 133
    move-result-object p0

    .line 134
    return-object p0

    .line 135
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 137
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda6;->f$1:I

    .line 139
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 141
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 144
    move-result-object v0

    .line 145
    sget-object v1, Landroid/provider/Telephony$Carriers;->DPC_URI:Landroid/net/Uri;

    .line 147
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 150
    move-result-object p0

    .line 151
    invoke-static {v1, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 154
    move-result-object p0

    .line 155
    const/4 v1, 0x0

    .line 156
    invoke-virtual {v0, p0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 159
    move-result p0

    .line 160
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    move-result-object p0

    .line 164
    return-object p0

    .line 165
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 167
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda6;->f$1:I

    .line 169
    invoke-virtual {v0, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updatePersonalAppsSuspension(I)Z

    .line 172
    move-result p0

    .line 173
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 176
    move-result-object p0

    .line 177
    return-object p0

    .line 178
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 180
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda6;->f$1:I

    .line 182
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 184
    invoke-virtual {v0, p0}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 187
    move-result-object v0

    .line 188
    if-eqz v0, :cond_0

    .line 190
    iget p0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 192
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    move-result-object p0

    .line 196
    return-object p0

    .line 197
    :pswitch_a
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 199
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda6;->f$1:I

    .line 201
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 203
    invoke-virtual {v1, p0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    .line 206
    move-result-object p0

    .line 207
    new-instance v1, Ljava/util/ArrayList;

    .line 209
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 212
    const/4 v2, 0x0

    .line 213
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 216
    move-result v3

    .line 217
    if-ge v2, v3, :cond_3

    .line 219
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 222
    move-result-object v3

    .line 223
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 225
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 228
    move-result v4

    .line 229
    if-eqz v4, :cond_2

    .line 231
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    .line 233
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    .line 236
    move-result-object v5

    .line 237
    monitor-enter v5

    .line 238
    :try_start_0
    iget-object v6, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    .line 240
    invoke-virtual {v6, v4}, Lcom/android/server/devicepolicy/Owners;->hasProfileOwner(I)Z

    .line 243
    move-result v4

    .line 244
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    if-eqz v4, :cond_2

    .line 247
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    .line 250
    move-result v4

    .line 251
    if-eqz v4, :cond_1

    .line 253
    goto :goto_1

    .line 254
    :cond_1
    new-instance v4, Landroid/os/UserHandle;

    .line 256
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 258
    invoke-direct {v4, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 261
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    goto :goto_1

    .line 265
    :catchall_0
    move-exception p0

    .line 266
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    throw p0

    .line 268
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 270
    goto :goto_0

    .line 271
    :cond_3
    return-object v1

    .line 272
    :pswitch_b
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 274
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda6;->f$1:I

    .line 276
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 278
    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    .line 281
    move-result p0

    .line 282
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 285
    move-result-object p0

    .line 286
    return-object p0

    .line 287
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
