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

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$1:Landroid/content/ComponentName;

    .line 6
    .line 7
    iput p3, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$2:I

    .line 8
    .line 9
    iput p4, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$3:I

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$1:Landroid/content/ComponentName;

    .line 9
    .line 10
    iget v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$2:I

    .line 11
    .line 12
    iget p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$3:I

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    :try_start_0
    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 18
    .line 19
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    invoke-interface {v0, v1, v2, p0}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumSymbolsMDM(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    const-string v0, "PasswordPolicy"

    .line 29
    .line 30
    const-string v1, "Failed talking with device policy service"

    .line 31
    .line 32
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void

    .line 36
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$1:Landroid/content/ComponentName;

    .line 39
    .line 40
    iget v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$2:I

    .line 41
    .line 42
    iget p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$3:I

    .line 43
    .line 44
    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 45
    .line 46
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    invoke-interface {v0, v1, v2, p0}, Landroid/app/admin/IDevicePolicyManager;->setKeyguardDisabledFeaturesMDM(Landroid/content/ComponentName;II)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$1:Landroid/content/ComponentName;

    .line 57
    .line 58
    iget v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$2:I

    .line 59
    .line 60
    iget p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$3:I

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    :try_start_1
    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 66
    .line 67
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    invoke-interface {v0, v1, v2, p0}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumNumericMDM(Landroid/content/ComponentName;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :catch_1
    move-exception p0

    .line 76
    const-string v0, "PasswordPolicy"

    .line 77
    .line 78
    const-string v1, "Failed talking with device policy service"

    .line 79
    .line 80
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .line 82
    .line 83
    :goto_1
    return-void

    .line 84
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 85
    .line 86
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$1:Landroid/content/ComponentName;

    .line 87
    .line 88
    iget v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$2:I

    .line 89
    .line 90
    iget p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$3:I

    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    :try_start_2
    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 96
    .line 97
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    invoke-interface {v0, v1, v2, p0}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLengthMDM(Landroid/content/ComponentName;II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :catch_2
    move-exception p0

    .line 106
    const-string v0, "PasswordPolicy"

    .line 107
    .line 108
    const-string v1, "Failed talking with device policy service"

    .line 109
    .line 110
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    .line 112
    .line 113
    :goto_2
    return-void

    .line 114
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 115
    .line 116
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$1:Landroid/content/ComponentName;

    .line 117
    .line 118
    iget v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$2:I

    .line 119
    .line 120
    iget p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$3:I

    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    :try_start_3
    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 126
    .line 127
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 128
    .line 129
    .line 130
    move-result p0

    .line 131
    invoke-interface {v0, v1, v2, p0}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLettersMDM(Landroid/content/ComponentName;II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 132
    .line 133
    .line 134
    goto :goto_3

    .line 135
    :catch_3
    move-exception p0

    .line 136
    const-string v0, "PasswordPolicy"

    .line 137
    .line 138
    const-string v1, "Failed talking with device policy service"

    .line 139
    .line 140
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    .line 142
    .line 143
    :goto_3
    return-void

    .line 144
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 145
    .line 146
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$1:Landroid/content/ComponentName;

    .line 147
    .line 148
    iget v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$2:I

    .line 149
    .line 150
    iget p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$3:I

    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    :try_start_4
    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 156
    .line 157
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 158
    .line 159
    .line 160
    move-result p0

    .line 161
    invoke-interface {v0, v1, v2, p0}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumUpperCaseMDM(Landroid/content/ComponentName;II)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 162
    .line 163
    .line 164
    goto :goto_4

    .line 165
    :catch_4
    move-exception p0

    .line 166
    const-string v0, "PasswordPolicy"

    .line 167
    .line 168
    const-string v1, "Failed talking with device policy service"

    .line 169
    .line 170
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    .line 172
    .line 173
    :goto_4
    return-void

    .line 174
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 175
    .line 176
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$1:Landroid/content/ComponentName;

    .line 177
    .line 178
    iget v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$2:I

    .line 179
    .line 180
    iget p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$3:I

    .line 181
    .line 182
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    :try_start_5
    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 186
    .line 187
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 188
    .line 189
    .line 190
    move-result p0

    .line 191
    invoke-interface {v0, v1, v2, p0}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumNonLetterMDM(Landroid/content/ComponentName;II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 192
    .line 193
    .line 194
    goto :goto_5

    .line 195
    :catch_5
    move-exception p0

    .line 196
    const-string v0, "PasswordPolicy"

    .line 197
    .line 198
    const-string v1, "Failed talking with device policy service"

    .line 199
    .line 200
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    .line 202
    .line 203
    :goto_5
    return-void

    .line 204
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 205
    .line 206
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$1:Landroid/content/ComponentName;

    .line 207
    .line 208
    iget v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$2:I

    .line 209
    .line 210
    iget p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$3:I

    .line 211
    .line 212
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    :try_start_6
    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 216
    .line 217
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 218
    .line 219
    .line 220
    move-result p0

    .line 221
    invoke-interface {v0, v1, v2, p0}, Landroid/app/admin/IDevicePolicyManager;->setPasswordHistoryLengthMDM(Landroid/content/ComponentName;II)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    .line 222
    .line 223
    .line 224
    goto :goto_6

    .line 225
    :catch_6
    move-exception p0

    .line 226
    const-string v0, "PasswordPolicy"

    .line 227
    .line 228
    const-string v1, "Failed talking with device policy service"

    .line 229
    .line 230
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    .line 232
    .line 233
    :goto_6
    return-void

    .line 234
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 235
    .line 236
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$1:Landroid/content/ComponentName;

    .line 237
    .line 238
    iget v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$2:I

    .line 239
    .line 240
    iget p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$3:I

    .line 241
    .line 242
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    :try_start_7
    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 246
    .line 247
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 248
    .line 249
    .line 250
    move-result p0

    .line 251
    invoke-interface {v0, v1, v2, p0}, Landroid/app/admin/IDevicePolicyManager;->setPasswordMinimumLowerCaseMDM(Landroid/content/ComponentName;II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    .line 252
    .line 253
    .line 254
    goto :goto_7

    .line 255
    :catch_7
    move-exception p0

    .line 256
    const-string v0, "PasswordPolicy"

    .line 257
    .line 258
    const-string v1, "Failed talking with device policy service"

    .line 259
    .line 260
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 261
    .line 262
    .line 263
    :goto_7
    return-void

    .line 264
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 265
    .line 266
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$1:Landroid/content/ComponentName;

    .line 267
    .line 268
    iget v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$2:I

    .line 269
    .line 270
    iget p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$3:I

    .line 271
    .line 272
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 273
    .line 274
    .line 275
    :try_start_8
    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 276
    .line 277
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 278
    .line 279
    .line 280
    move-result p0

    .line 281
    invoke-interface {v0, v1, v2, p0}, Landroid/app/admin/IDevicePolicyManager;->setPasswordQualityMDM(Landroid/content/ComponentName;II)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_8

    .line 282
    .line 283
    .line 284
    goto :goto_8

    .line 285
    :catch_8
    move-exception p0

    .line 286
    const-string v0, "PasswordPolicy"

    .line 287
    .line 288
    const-string v1, "Failed talking with device policy service"

    .line 289
    .line 290
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    .line 292
    .line 293
    :goto_8
    return-void

    .line 294
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 295
    .line 296
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$1:Landroid/content/ComponentName;

    .line 297
    .line 298
    iget v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$2:I

    .line 299
    .line 300
    iget p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda6;->f$3:I

    .line 301
    .line 302
    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 303
    .line 304
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 305
    .line 306
    .line 307
    move-result p0

    .line 308
    invoke-interface {v0, v1, v2, p0}, Landroid/app/admin/IDevicePolicyManager;->setMaximumFailedPasswordsForWipeMDM(Landroid/content/ComponentName;II)V

    .line 309
    .line 310
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
