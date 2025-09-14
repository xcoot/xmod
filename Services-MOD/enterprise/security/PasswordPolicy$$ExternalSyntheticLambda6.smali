.class public final synthetic Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

.field public final synthetic f$1:Landroid/content/ComponentName;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;III)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 5
    iput-object p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$1:Landroid/content/ComponentName;

    .line 7
    iput p3, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$2:I

    .line 9
    iput p4, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$3:I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 8
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$1:Landroid/content/ComponentName;

    .line 10
    iget v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$2:I

    .line 12
    iget p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$3:I

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    :try_start_0
    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 19
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 22
    move-result p0

    .line 23
    invoke-interface {v0, v1, v2, p0}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumSymbolsMDM(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    const-string v0, "PasswordPolicy"

    .line 30
    const-string v1, "Failed talking with device policy service"

    .line 32
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    :goto_0
    return-void

    .line 36
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 38
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$1:Landroid/content/ComponentName;

    .line 40
    iget v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$2:I

    .line 42
    iget p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$3:I

    .line 44
    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 46
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 49
    move-result p0

    .line 50
    invoke-interface {v0, v1, v2, p0}, Landroid/app/admin/IDevicePolicyManager;->setKeyguardDisabledFeaturesMDM(Landroid/content/ComponentName;II)V

    .line 53
    return-void

    .line 54
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 56
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$1:Landroid/content/ComponentName;

    .line 58
    iget v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$2:I

    .line 60
    iget p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$3:I

    .line 62
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    :try_start_1
    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 67
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 70
    move-result p0

    .line 71
    invoke-interface {v0, v1, v2, p0}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumNumericMDM(Landroid/content/ComponentName;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 74
    goto :goto_1

    .line 75
    :catch_1
    move-exception p0

    .line 76
    const-string v0, "PasswordPolicy"

    .line 78
    const-string v1, "Failed talking with device policy service"

    .line 80
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    :goto_1
    return-void

    .line 84
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 86
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$1:Landroid/content/ComponentName;

    .line 88
    iget v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$2:I

    .line 90
    iget p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$3:I

    .line 92
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    :try_start_2
    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 97
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 100
    move-result p0

    .line 101
    invoke-interface {v0, v1, v2, p0}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLengthMDM(Landroid/content/ComponentName;II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 104
    goto :goto_2

    .line 105
    :catch_2
    move-exception p0

    .line 106
    const-string v0, "PasswordPolicy"

    .line 108
    const-string v1, "Failed talking with device policy service"

    .line 110
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    :goto_2
    return-void

    .line 114
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 116
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$1:Landroid/content/ComponentName;

    .line 118
    iget v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$2:I

    .line 120
    iget p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$3:I

    .line 122
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    :try_start_3
    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 127
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 130
    move-result p0

    .line 131
    invoke-interface {v0, v1, v2, p0}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLettersMDM(Landroid/content/ComponentName;II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 134
    goto :goto_3

    .line 135
    :catch_3
    move-exception p0

    .line 136
    const-string v0, "PasswordPolicy"

    .line 138
    const-string v1, "Failed talking with device policy service"

    .line 140
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    :goto_3
    return-void

    .line 144
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 146
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$1:Landroid/content/ComponentName;

    .line 148
    iget v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$2:I

    .line 150
    iget p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$3:I

    .line 152
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    :try_start_4
    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 157
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 160
    move-result p0

    .line 161
    invoke-interface {v0, v1, v2, p0}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumUpperCaseMDM(Landroid/content/ComponentName;II)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 164
    goto :goto_4

    .line 165
    :catch_4
    move-exception p0

    .line 166
    const-string v0, "PasswordPolicy"

    .line 168
    const-string v1, "Failed talking with device policy service"

    .line 170
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    :goto_4
    return-void

    .line 174
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 176
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$1:Landroid/content/ComponentName;

    .line 178
    iget v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$2:I

    .line 180
    iget p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$3:I

    .line 182
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    :try_start_5
    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 187
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 190
    move-result p0

    .line 191
    invoke-interface {v0, v1, v2, p0}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumNonLetterMDM(Landroid/content/ComponentName;II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 194
    goto :goto_5

    .line 195
    :catch_5
    move-exception p0

    .line 196
    const-string v0, "PasswordPolicy"

    .line 198
    const-string v1, "Failed talking with device policy service"

    .line 200
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 203
    :goto_5
    return-void

    .line 204
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 206
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$1:Landroid/content/ComponentName;

    .line 208
    iget v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$2:I

    .line 210
    iget p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$3:I

    .line 212
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    :try_start_6
    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 217
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 220
    move-result p0

    .line 221
    invoke-interface {v0, v1, v2, p0}, Landroid/app/admin/IDevicePolicyManager;->setPasswordHistoryLengthMDM(Landroid/content/ComponentName;II)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    .line 224
    goto :goto_6

    .line 225
    :catch_6
    move-exception p0

    .line 226
    const-string v0, "PasswordPolicy"

    .line 228
    const-string v1, "Failed talking with device policy service"

    .line 230
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    :goto_6
    return-void

    .line 234
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 236
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$1:Landroid/content/ComponentName;

    .line 238
    iget v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$2:I

    .line 240
    iget p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$3:I

    .line 242
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 245
    :try_start_7
    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 247
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 250
    move-result p0

    .line 251
    invoke-interface {v0, v1, v2, p0}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLowerCaseMDM(Landroid/content/ComponentName;II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    .line 254
    goto :goto_7

    .line 255
    :catch_7
    move-exception p0

    .line 256
    const-string v0, "PasswordPolicy"

    .line 258
    const-string v1, "Failed talking with device policy service"

    .line 260
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 263
    :goto_7
    return-void

    .line 264
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 266
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$1:Landroid/content/ComponentName;

    .line 268
    iget v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$2:I

    .line 270
    iget p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$3:I

    .line 272
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 275
    :try_start_8
    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 277
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 280
    move-result p0

    .line 281
    invoke-interface {v0, v1, v2, p0}, Landroid/app/admin/IDevicePolicyManager;->setPasswordQualityMDM(Landroid/content/ComponentName;II)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_8

    .line 284
    goto :goto_8

    .line 285
    :catch_8
    move-exception p0

    .line 286
    const-string v0, "PasswordPolicy"

    .line 288
    const-string v1, "Failed talking with device policy service"

    .line 290
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    :goto_8
    return-void

    .line 294
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 296
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$1:Landroid/content/ComponentName;

    .line 298
    iget v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$2:I

    .line 300
    iget p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$3:I

    .line 302
    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 304
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 307
    move-result p0

    .line 308
    invoke-interface {v0, v1, v2, p0}, Landroid/app/admin/IDevicePolicyManager;->setMaximumFailedPasswordsForWipeMDM(Landroid/content/ComponentName;II)V

    .line 311
    return-void

    .line 312
    nop

    .line 313
    :pswitch_data_0
    .packed-switch 0x0
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
