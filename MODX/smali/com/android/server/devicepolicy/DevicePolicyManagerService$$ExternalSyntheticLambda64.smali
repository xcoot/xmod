.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda64;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(ILandroid/content/ComponentName;Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda64;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda64;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda64;->f$2:I

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda64;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;II)V
    .locals 0

    .line 2
    iput p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda64;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda64;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda64;->f$1:Ljava/lang/Object;

    iput p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda64;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;[BI)V
    .locals 1

    .line 3
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda64;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda64;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda64;->f$1:Ljava/lang/Object;

    iput p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda64;->f$2:I

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda64;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda64;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 8
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda64;->f$1:Ljava/lang/Object;

    .line 10
    check-cast v1, [B

    .line 12
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda64;->f$2:I

    .line 14
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v1, p0, v2}, Lcom/android/internal/widget/LockPatternUtils;->addEscrowToken([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    .line 20
    move-result-wide v0

    .line 21
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda64;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 28
    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda64;->f$2:I

    .line 30
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda64;->f$1:Ljava/lang/Object;

    .line 32
    check-cast p0, Landroid/content/ComponentName;

    .line 34
    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 36
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 39
    move-result-object v3

    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 44
    move-result-object v2

    .line 45
    const-class v3, Landroid/accounts/AccountManager;

    .line 47
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Landroid/accounts/AccountManager;

    .line 53
    invoke-virtual {v2}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    .line 56
    move-result-object v2

    .line 57
    array-length v2, v2

    .line 58
    if-nez v2, :cond_0

    .line 60
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 62
    goto :goto_3

    .line 63
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    .line 66
    move-result-object v2

    .line 67
    monitor-enter v2

    .line 68
    if-eqz p0, :cond_4

    .line 70
    :try_start_0
    invoke-virtual {v0, v1, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isAdminTestOnlyLocked(ILandroid/content/ComponentName;)Z

    .line 73
    move-result p0

    .line 74
    if-nez p0, :cond_1

    .line 76
    goto :goto_2

    .line 77
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    iget-object p0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasIncompatibleAccounts:Ljava/util/Map;

    .line 80
    if-nez p0, :cond_2

    .line 82
    const/4 p0, 0x1

    .line 83
    goto :goto_0

    .line 84
    :cond_2
    iget-object p0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasIncompatibleAccounts:Ljava/util/Map;

    .line 86
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    move-result-object v0

    .line 90
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 92
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    move-result-object p0

    .line 96
    check-cast p0, Ljava/lang/Boolean;

    .line 98
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 101
    move-result p0

    .line 102
    :goto_0
    xor-int/lit8 v0, p0, 0x1

    .line 104
    if-eqz v0, :cond_3

    .line 106
    const-string v0, "DevicePolicyManager"

    .line 108
    const-string v1, "All accounts are compatible"

    .line 110
    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    goto :goto_1

    .line 114
    :cond_3
    const-string v0, "DevicePolicyManager"

    .line 116
    const-string v1, "Found incompatible accounts"

    .line 118
    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 124
    move-result-object p0

    .line 125
    goto :goto_3

    .line 126
    :catchall_0
    move-exception p0

    .line 127
    goto :goto_4

    .line 128
    :cond_4
    :goto_2
    :try_start_1
    const-string p0, "DevicePolicyManager"

    .line 130
    const-string v0, "Non test-only owner can\'t be installed with existing accounts."

    .line 132
    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 137
    monitor-exit v2

    .line 138
    :goto_3
    return-object p0

    .line 139
    :goto_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    throw p0

    .line 141
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda64;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 143
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda64;->f$1:Ljava/lang/Object;

    .line 145
    check-cast v1, Landroid/content/ComponentName;

    .line 147
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda64;->f$2:I

    .line 149
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    new-instance v2, Ljava/util/ArrayList;

    .line 154
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 157
    invoke-virtual {v0, p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isDeviceOwner(ILandroid/content/ComponentName;)Z

    .line 160
    move-result v1

    .line 161
    if-nez v1, :cond_5

    .line 163
    invoke-virtual {v0, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->canUserBindToDeviceOwnerLocked(I)Z

    .line 166
    move-result p0

    .line 167
    if-eqz p0, :cond_7

    .line 169
    iget-object p0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    .line 171
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerUserId()I

    .line 174
    move-result p0

    .line 175
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 178
    move-result-object p0

    .line 179
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    goto :goto_6

    .line 183
    :cond_5
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 185
    invoke-virtual {v1}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    .line 188
    move-result-object v1

    .line 189
    const/4 v3, 0x0

    .line 190
    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 193
    move-result v4

    .line 194
    if-ge v3, v4, :cond_7

    .line 196
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 199
    move-result-object v4

    .line 200
    check-cast v4, Landroid/content/pm/UserInfo;

    .line 202
    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 204
    if-eq v4, p0, :cond_6

    .line 206
    invoke-virtual {v0, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->canUserBindToDeviceOwnerLocked(I)Z

    .line 209
    move-result v5

    .line 210
    if-eqz v5, :cond_6

    .line 212
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 215
    move-result-object v4

    .line 216
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 221
    goto :goto_5

    .line 222
    :cond_7
    :goto_6
    return-object v2

    .line 223
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda64;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 225
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda64;->f$1:Ljava/lang/Object;

    .line 227
    check-cast v1, Landroid/content/ComponentName;

    .line 229
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda64;->f$2:I

    .line 231
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 234
    :try_start_2
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 236
    const-wide/32 v2, 0xc8080

    .line 239
    invoke-interface {v0, v1, v2, v3, p0}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    .line 242
    move-result-object p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 243
    goto :goto_7

    .line 244
    :catch_0
    move-exception p0

    .line 245
    const-string v0, "DevicePolicyManager"

    .line 247
    const-string v1, "Error getting receiver info"

    .line 249
    invoke-static {v0, v1, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 252
    const/4 p0, 0x0

    .line 253
    :goto_7
    return-object p0

    .line 254
    nop

    .line 255
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
