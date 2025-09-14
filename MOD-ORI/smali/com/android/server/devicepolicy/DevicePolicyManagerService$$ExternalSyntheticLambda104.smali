.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda104;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:I

.field public final synthetic f$3:Z

.field public final synthetic f$4:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;ILcom/android/server/devicepolicy/ActiveAdmin;ZLandroid/content/ComponentName;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda104;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda104;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda104;->f$2:I

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda104;->f$1:Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda104;->f$3:Z

    iput-object p5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda104;->f$4:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/ActiveAdmin;ILcom/android/server/devicepolicy/CallerIdentity;Z)V
    .locals 1

    .line 2
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda104;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda104;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda104;->f$1:Ljava/lang/Object;

    iput p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda104;->f$2:I

    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda104;->f$4:Ljava/lang/Object;

    iput-boolean p5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda104;->f$3:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;IZLjava/util/List;)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda104;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda104;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda104;->f$1:Ljava/lang/Object;

    iput p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda104;->f$2:I

    iput-boolean p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda104;->f$3:Z

    iput-object p5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda104;->f$4:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;ZLandroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    .line 4
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda104;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda104;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-boolean p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda104;->f$3:Z

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda104;->f$1:Ljava/lang/Object;

    iput p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda104;->f$2:I

    iput-object p5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda104;->f$4:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda104;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda104;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda104;->f$1:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 11
    .line 12
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda104;->f$2:I

    .line 13
    .line 14
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda104;->f$4:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v3, Lcom/android/server/devicepolicy/CallerIdentity;

    .line 17
    .line 18
    iget-boolean p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda104;->f$3:Z

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    iput v2, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordComplexity:I

    .line 24
    .line 25
    new-instance v2, Landroid/app/admin/PasswordPolicy;

    .line 26
    .line 27
    invoke-direct {v2}, Landroid/app/admin/PasswordPolicy;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v2, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordPolicy:Landroid/app/admin/PasswordPolicy;

    .line 31
    .line 32
    iget v1, v3, Lcom/android/server/devicepolicy/CallerIdentity;->mUid:I

    .line 33
    .line 34
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {v0, v1, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updatePasswordValidityCheckpointLocked(IZ)Ljava/util/Set;

    .line 39
    .line 40
    .line 41
    iget p0, v3, Lcom/android/server/devicepolicy/CallerIdentity;->mUid:I

    .line 42
    .line 43
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->updatePasswordQualityCacheForUserGroup(I)V

    .line 48
    .line 49
    .line 50
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-virtual {v0, p0, v1, v1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(IZZZ)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda104;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 60
    .line 61
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda104;->f$3:Z

    .line 62
    .line 63
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda104;->f$1:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v2, Landroid/content/Intent;

    .line 66
    .line 67
    iget v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda104;->f$2:I

    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda104;->f$4:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast p0, Landroid/os/Bundle;

    .line 72
    .line 73
    if-eqz v1, :cond_0

    .line 74
    .line 75
    iget-object p0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 76
    .line 77
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 82
    .line 83
    new-instance v1, Landroid/os/UserHandle;

    .line 84
    .line 85
    invoke-direct {v1, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 86
    .line 87
    .line 88
    const/4 v3, 0x0

    .line 89
    invoke-virtual {v0, v2, v1, v3, p0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 90
    .line 91
    .line 92
    :goto_0
    return-void

    .line 93
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda104;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 94
    .line 95
    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda104;->f$2:I

    .line 96
    .line 97
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda104;->f$1:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v2, Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 100
    .line 101
    iget-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda104;->f$3:Z

    .line 102
    .line 103
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda104;->f$4:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast p0, Landroid/content/ComponentName;

    .line 106
    .line 107
    iget-object v4, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 108
    .line 109
    invoke-virtual {v4, v1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    if-eqz v4, :cond_1

    .line 114
    .line 115
    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->maybeSetDefaultRestrictionsForAdminLocked(ILcom/android/server/devicepolicy/ActiveAdmin;)V

    .line 116
    .line 117
    .line 118
    const/4 v4, 0x1

    .line 119
    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->ensureUnknownSourcesRestrictionForProfileOwnerLocked(ILcom/android/server/devicepolicy/ActiveAdmin;Z)V

    .line 120
    .line 121
    .line 122
    if-eqz v3, :cond_1

    .line 123
    .line 124
    invoke-static {v1, p0}, Lcom/android/server/devicepolicy/EnforcingAdmin;->createEnterpriseEnforcingAdmin(ILandroid/content/ComponentName;)Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    const-string/jumbo v2, "no_debugging_features"

    .line 129
    .line 130
    .line 131
    const/4 v3, 0x0

    .line 132
    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setLocalUserRestrictionInternal(Lcom/android/server/devicepolicy/EnforcingAdmin;Ljava/lang/String;ZI)V

    .line 133
    .line 134
    .line 135
    :cond_1
    const-string p0, "android.app.action.PROFILE_OWNER_CHANGED"

    .line 136
    .line 137
    invoke-virtual {v0, v1, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendOwnerChangedBroadcast(ILjava/lang/String;)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda104;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 142
    .line 143
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda104;->f$1:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast v1, Ljava/lang/String;

    .line 146
    .line 147
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda104;->f$2:I

    .line 148
    .line 149
    iget-boolean v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda104;->f$3:Z

    .line 150
    .line 151
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda104;->f$4:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast p0, Ljava/util/List;

    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    const/4 v4, 0x1

    .line 159
    const-string v5, "DevicePolicyManager"

    .line 160
    .line 161
    if-eqz v1, :cond_3

    .line 162
    .line 163
    invoke-virtual {v0, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isPackageInstalledForUser(ILjava/lang/String;)Z

    .line 164
    .line 165
    .line 166
    move-result v6

    .line 167
    if-eqz v6, :cond_2

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_2
    const-string p0, "Non-existent VPN package specified: "

    .line 171
    .line 172
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    invoke-static {v5, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    new-instance p0, Landroid/os/ServiceSpecificException;

    .line 180
    .line 181
    invoke-direct {p0, v4, v1}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 182
    .line 183
    .line 184
    throw p0

    .line 185
    :cond_3
    :goto_1
    if-eqz v1, :cond_5

    .line 186
    .line 187
    if-eqz v3, :cond_5

    .line 188
    .line 189
    if-eqz p0, :cond_5

    .line 190
    .line 191
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 196
    .line 197
    .line 198
    move-result v7

    .line 199
    if-eqz v7, :cond_5

    .line 200
    .line 201
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v7

    .line 205
    check-cast v7, Ljava/lang/String;

    .line 206
    .line 207
    invoke-virtual {v0, v2, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isPackageInstalledForUser(ILjava/lang/String;)Z

    .line 208
    .line 209
    .line 210
    move-result v8

    .line 211
    if-eqz v8, :cond_4

    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    const-string v0, "Non-existent package in VPN allowlist: "

    .line 217
    .line 218
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p0

    .line 228
    invoke-static {v5, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .line 230
    .line 231
    new-instance p0, Landroid/os/ServiceSpecificException;

    .line 232
    .line 233
    invoke-direct {p0, v4, v7}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    .line 234
    .line 235
    .line 236
    throw p0

    .line 237
    :cond_5
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 238
    .line 239
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 240
    .line 241
    const-class v4, Landroid/net/VpnManager;

    .line 242
    .line 243
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    check-cast v0, Landroid/net/VpnManager;

    .line 248
    .line 249
    invoke-virtual {v0, v2, v1, v3, p0}, Landroid/net/VpnManager;->setAlwaysOnVpnPackageForUser(ILjava/lang/String;ZLjava/util/List;)Z

    .line 250
    .line 251
    .line 252
    move-result p0

    .line 253
    if-eqz p0, :cond_6

    .line 254
    .line 255
    return-void

    .line 256
    :cond_6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 257
    .line 258
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 259
    .line 260
    .line 261
    throw p0

    .line 262
    nop

    .line 263
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
