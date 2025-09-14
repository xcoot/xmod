.class public final Lcom/android/server/biometrics/AuthService$AuthServiceImpl;
.super Landroid/hardware/biometrics/IAuthService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/AuthService;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/AuthService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/biometrics/IAuthService$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static authenticateFastFail(Ljava/lang/String;Landroid/hardware/biometrics/IBiometricServiceReceiver;)V
    .locals 2

    .line 1
    const-string v0, "authenticateFastFail: "

    .line 2
    .line 3
    const-string v1, "AuthService"

    .line 4
    .line 5
    invoke-static {v0, p0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p0, 0x5

    .line 9
    const/4 v0, 0x0

    .line 10
    :try_start_0
    invoke-interface {p1, v0, p0, v0}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    const-string p1, "authenticateFastFail failed to notify caller"

    .line 16
    .line 17
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method


# virtual methods
.method public final authenticate(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;)J
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v4, p4

    .line 3
    .line 4
    move-object/from16 v5, p5

    .line 5
    .line 6
    move-object/from16 v12, p6

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "authenticate: ["

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, "] from pkg="

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "AuthService"

    .line 31
    .line 32
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 44
    .line 45
    .line 46
    move-result v13

    .line 47
    if-ne v4, v1, :cond_0

    .line 48
    .line 49
    iget-object v1, v0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 50
    .line 51
    invoke-static {v1}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const-string v6, "User "

    .line 56
    .line 57
    const-string v7, " is requesting authentication of userid: "

    .line 58
    .line 59
    invoke-static {v1, v4, v6, v7, v2}, Lcom/android/server/am/PendingIntentController$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v1, v0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 63
    .line 64
    invoke-static {v1}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 65
    .line 66
    .line 67
    :goto_0
    iget-object v1, v0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 68
    .line 69
    iget-object v2, v1, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v2, v1}, Lcom/android/server/biometrics/AuthService$Injector;->getAppOps(Landroid/content/Context;)Landroid/app/AppOpsManager;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    const/4 v10, 0x0

    .line 80
    const-string v11, "authenticate()"

    .line 81
    .line 82
    const/16 v7, 0x4e

    .line 83
    .line 84
    move v8, v3

    .line 85
    move-object/from16 v9, p6

    .line 86
    .line 87
    invoke-virtual/range {v6 .. v11}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    const-wide/16 v6, -0x1

    .line 92
    .line 93
    if-nez v1, :cond_a

    .line 94
    .line 95
    if-eqz p1, :cond_9

    .line 96
    .line 97
    if-eqz v5, :cond_9

    .line 98
    .line 99
    if-eqz v12, :cond_9

    .line 100
    .line 101
    if-nez p7, :cond_1

    .line 102
    .line 103
    goto/16 :goto_3

    .line 104
    .line 105
    :cond_1
    invoke-static {v3, v13}, Lcom/android/server/biometrics/Utils;->isForeground(II)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_2

    .line 110
    .line 111
    const-string v0, "Caller is not foreground: "

    .line 112
    .line 113
    invoke-virtual {v0, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {v0, v5}, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->authenticateFastFail(Ljava/lang/String;Landroid/hardware/biometrics/IBiometricServiceReceiver;)V

    .line 118
    .line 119
    .line 120
    return-wide v6

    .line 121
    :cond_2
    invoke-virtual/range {p7 .. p7}, Landroid/hardware/biometrics/PromptInfo;->requiresTestOrInternalPermission()Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_3

    .line 126
    .line 127
    iget-object v1, v0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 128
    .line 129
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    const-string v2, "android.permission.TEST_BIOMETRIC"

    .line 134
    .line 135
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-eqz v1, :cond_3

    .line 140
    .line 141
    iget-object v1, v0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 142
    .line 143
    invoke-static {v1}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 144
    .line 145
    .line 146
    :cond_3
    invoke-virtual/range {p7 .. p7}, Landroid/hardware/biometrics/PromptInfo;->requiresInternalPermission()Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-eqz v1, :cond_4

    .line 151
    .line 152
    iget-object v1, v0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 153
    .line 154
    invoke-static {v1}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 155
    .line 156
    .line 157
    :cond_4
    invoke-virtual/range {p7 .. p7}, Landroid/hardware/biometrics/PromptInfo;->requiresAdvancedPermission()Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-eqz v1, :cond_5

    .line 162
    .line 163
    iget-object v1, v0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 164
    .line 165
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    const-string v2, "android.permission.SET_BIOMETRIC_DIALOG_ADVANCED"

    .line 170
    .line 171
    const-string v6, "Must have SET_BIOMETRIC_DIALOG_ADVANCED permission"

    .line 172
    .line 173
    invoke-virtual {v1, v2, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    :cond_5
    invoke-virtual/range {p7 .. p7}, Landroid/hardware/biometrics/PromptInfo;->semGetPrivilegedFlag()I

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-nez v1, :cond_6

    .line 181
    .line 182
    invoke-virtual/range {p7 .. p7}, Landroid/hardware/biometrics/PromptInfo;->semGetBiometricType()I

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    if-eqz v1, :cond_7

    .line 187
    .line 188
    :cond_6
    iget-object v1, v0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 189
    .line 190
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    const-string/jumbo v2, "com.samsung.android.permission.BIOMETRICS_PRIVILEGED"

    .line 195
    .line 196
    .line 197
    const-string v6, "Must have BIOMETRICS_PRIVILEGED permission"

    .line 198
    .line 199
    invoke-virtual {v1, v2, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 203
    .line 204
    .line 205
    move-result-wide v8

    .line 206
    :try_start_0
    iget-object v1, v0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 207
    .line 208
    const-class v2, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 209
    .line 210
    invoke-virtual {v1, v2}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    check-cast v1, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 215
    .line 216
    if-eqz v1, :cond_8

    .line 217
    .line 218
    invoke-virtual {v1, v3}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->onAuthenticationPrompt(I)V

    .line 219
    .line 220
    .line 221
    goto :goto_1

    .line 222
    :catchall_0
    move-exception v0

    .line 223
    goto :goto_2

    .line 224
    :cond_8
    :goto_1
    iget-object v0, v0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 225
    .line 226
    iget-object v0, v0, Lcom/android/server/biometrics/AuthService;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    .line 227
    .line 228
    move-object v1, p1

    .line 229
    move-wide/from16 v2, p2

    .line 230
    .line 231
    move/from16 v4, p4

    .line 232
    .line 233
    move-object/from16 v5, p5

    .line 234
    .line 235
    move-object/from16 v6, p6

    .line 236
    .line 237
    move-object/from16 v7, p7

    .line 238
    .line 239
    invoke-interface/range {v0 .. v7}, Landroid/hardware/biometrics/IBiometricService;->authenticate(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;)J

    .line 240
    .line 241
    .line 242
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 244
    .line 245
    .line 246
    return-wide v0

    .line 247
    :goto_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 248
    .line 249
    .line 250
    throw v0

    .line 251
    :cond_9
    :goto_3
    const-string v0, "Unable to authenticate, one or more null arguments"

    .line 252
    .line 253
    invoke-static {v0, v5}, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->authenticateFastFail(Ljava/lang/String;Landroid/hardware/biometrics/IBiometricServiceReceiver;)V

    .line 254
    .line 255
    .line 256
    return-wide v6

    .line 257
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    const-string v1, "Denied by app ops: "

    .line 260
    .line 261
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-static {v0, v5}, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->authenticateFastFail(Ljava/lang/String;Landroid/hardware/biometrics/IBiometricServiceReceiver;)V

    .line 272
    .line 273
    .line 274
    return-wide v6
.end method

.method public final canAuthenticate(Ljava/lang/String;II)I
    .locals 5

    .line 1
    const-string/jumbo v0, "canAuthenticate, userId: "

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eq p2, v1, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 11
    .line 12
    invoke-static {v2}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v2, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 17
    .line 18
    invoke-static {v2}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    .line 28
    .line 29
    invoke-interface {p0, p1, p2, v1, p3}, Landroid/hardware/biometrics/IBiometricService;->canAuthenticate(Ljava/lang/String;III)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    const-string p1, "AuthService"

    .line 34
    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p2, ", callingUserId: "

    .line 44
    .line 45
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string p2, ", authenticators: "

    .line 52
    .line 53
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string p2, ", result: "

    .line 60
    .line 61
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .line 73
    .line 74
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 75
    .line 76
    .line 77
    return p0

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    .line 81
    .line 82
    throw p0
.end method

.method public final cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;J)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "cancelAuthentication: ["

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, "], ["

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, "]"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "AuthService"

    .line 30
    .line 31
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 37
    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    if-nez p2, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    .line 51
    .line 52
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/biometrics/IBiometricService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 61
    .line 62
    .line 63
    throw p0

    .line 64
    :cond_1
    :goto_0
    const-string p0, "Unable to cancel authentication, one or more null arguments"

    .line 65
    .line 66
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/hardware/biometrics/IAuthService$Stub;->createTestSession_enforcePermission()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string/jumbo v1, "createTestSession: "

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "AuthService"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService$Injector;->getBiometricService()Landroid/hardware/biometrics/IBiometricService;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/biometrics/IBiometricService;->createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;

    .line 37
    .line 38
    .line 39
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 41
    .line 42
    .line 43
    return-object p0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    .line 47
    .line 48
    throw p0
.end method

.method public final getAuthenticatorIds(I)[J
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    .line 14
    .line 15
    const-string v2, "Must have android.permission.USE_BIOMETRIC_INTERNAL permission."

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    .line 27
    .line 28
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/IBiometricService;->getAuthenticatorIds(I)[J

    .line 29
    .line 30
    .line 31
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 33
    .line 34
    .line 35
    return-object p0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    .line 39
    .line 40
    throw p0
.end method

.method public final getButtonLabel(ILjava/lang/String;I)Ljava/lang/CharSequence;
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/biometrics/AuthService;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    .line 25
    .line 26
    invoke-interface {v3, p2, p1, v0, p3}, Landroid/hardware/biometrics/IBiometricService;->getCurrentModality(Ljava/lang/String;III)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    const/4 p2, 0x1

    .line 31
    if-ne p1, p2, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    and-int/lit8 p1, p1, -0x2

    .line 35
    .line 36
    :goto_1
    if-eqz p1, :cond_5

    .line 37
    .line 38
    if-eq p1, p2, :cond_4

    .line 39
    .line 40
    const/4 p2, 0x2

    .line 41
    if-eq p1, p2, :cond_3

    .line 42
    .line 43
    const/16 p2, 0x8

    .line 44
    .line 45
    if-eq p1, p2, :cond_2

    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const p1, 0x1040233

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    goto :goto_2

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_3

    .line 63
    :cond_2
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    const p1, 0x1040536

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    goto :goto_2

    .line 77
    :cond_3
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    const p1, 0x104056f

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    goto :goto_2

    .line 91
    :cond_4
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    const p1, 0x1040d31

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    goto :goto_2

    .line 105
    :cond_5
    const/4 p0, 0x0

    .line 106
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 107
    .line 108
    .line 109
    return-object p0

    .line 110
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 111
    .line 112
    .line 113
    throw p0
.end method

.method public final getLastAuthenticationTime(II)J
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    :try_start_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->lastAuthenticationTime()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    .line 31
    .line 32
    invoke-interface {p0, p1, p2}, Landroid/hardware/biometrics/IBiometricService;->getLastAuthenticationTime(II)J

    .line 33
    .line 34
    .line 35
    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 37
    .line 38
    .line 39
    return-wide p0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 43
    .line 44
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 45
    .line 46
    .line 47
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    throw p0
.end method

.method public final getPromptMessage(ILjava/lang/String;I)Ljava/lang/CharSequence;
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/biometrics/AuthService;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    .line 25
    .line 26
    invoke-interface {v3, p2, p1, v0, p3}, Landroid/hardware/biometrics/IBiometricService;->getCurrentModality(Ljava/lang/String;III)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-static {p3}, Lcom/android/server/biometrics/Utils;->isCredentialRequested(I)Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    const/4 p3, 0x1

    .line 35
    if-ne p1, p3, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    and-int/lit8 p1, p1, -0x2

    .line 39
    .line 40
    :goto_1
    if-eqz p1, :cond_8

    .line 41
    .line 42
    if-eq p1, p3, :cond_7

    .line 43
    .line 44
    const/4 p3, 0x2

    .line 45
    if-eq p1, p3, :cond_5

    .line 46
    .line 47
    const/16 p3, 0x8

    .line 48
    .line 49
    if-eq p1, p3, :cond_3

    .line 50
    .line 51
    if-eqz p2, :cond_2

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    const p1, 0x1040240

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    goto :goto_2

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    goto :goto_3

    .line 69
    :cond_2
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    const p1, 0x1040236

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    goto :goto_2

    .line 83
    :cond_3
    if-eqz p2, :cond_4

    .line 84
    .line 85
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    const p1, 0x104054c

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    goto :goto_2

    .line 99
    :cond_4
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    const p1, 0x104053b

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    goto :goto_2

    .line 113
    :cond_5
    if-eqz p2, :cond_6

    .line 114
    .line 115
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    const p1, 0x1040589

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    goto :goto_2

    .line 129
    :cond_6
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 130
    .line 131
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    const p1, 0x1040576

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    goto :goto_2

    .line 143
    :cond_7
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    const p1, 0x1040d32

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    goto :goto_2

    .line 157
    :cond_8
    const/4 p0, 0x0

    .line 158
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 159
    .line 160
    .line 161
    return-object p0

    .line 162
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 163
    .line 164
    .line 165
    throw p0
.end method

.method public final getSensorProperties(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/hardware/biometrics/IAuthService$Stub;->getSensorProperties_enforcePermission()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService$Injector;->getBiometricService()Landroid/hardware/biometrics/IBiometricService;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/IBiometricService;->getSensorProperties(Ljava/lang/String;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    .line 22
    .line 23
    return-object p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 26
    .line 27
    .line 28
    throw p0
.end method

.method public final getSettingName(ILjava/lang/String;I)Ljava/lang/CharSequence;
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eq p1, p2, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide p1

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/android/server/biometrics/AuthService;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    .line 25
    .line 26
    invoke-interface {v0, p3}, Landroid/hardware/biometrics/IBiometricService;->getSupportedModalities(I)I

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    if-eqz p3, :cond_8

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    if-eq p3, v0, :cond_7

    .line 34
    .line 35
    const/4 v0, 0x2

    .line 36
    if-eq p3, v0, :cond_6

    .line 37
    .line 38
    const/4 v1, 0x4

    .line 39
    const v2, 0x1040233

    .line 40
    .line 41
    .line 42
    if-eq p3, v1, :cond_5

    .line 43
    .line 44
    const/16 v1, 0x8

    .line 45
    .line 46
    if-eq p3, v1, :cond_4

    .line 47
    .line 48
    and-int/lit8 v3, p3, 0x1

    .line 49
    .line 50
    if-nez v3, :cond_1

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    goto :goto_1

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_2

    .line 65
    :cond_1
    and-int/lit8 p3, p3, -0x2

    .line 66
    .line 67
    if-ne p3, v0, :cond_2

    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    const p3, 0x1040588

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    goto :goto_1

    .line 83
    :cond_2
    if-ne p3, v1, :cond_3

    .line 84
    .line 85
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    const p3, 0x104054b

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    goto :goto_1

    .line 99
    :cond_3
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    const p3, 0x104023f

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    goto :goto_1

    .line 113
    :cond_4
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    const p3, 0x1040536

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    goto :goto_1

    .line 127
    :cond_5
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    goto :goto_1

    .line 138
    :cond_6
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    const p3, 0x104056f

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    goto :goto_1

    .line 152
    :cond_7
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    const p3, 0x1040d31

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    goto :goto_1

    .line 166
    :cond_8
    const/4 p0, 0x0

    .line 167
    :goto_1
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 168
    .line 169
    .line 170
    return-object p0

    .line 171
    :goto_2
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 172
    .line 173
    .line 174
    throw p0
.end method

.method public final getUiPackage()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/hardware/biometrics/IAuthService$Stub;->getUiPackage_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string/jumbo v1, "string"

    .line 15
    .line 16
    .line 17
    const-string v2, "android"

    .line 18
    .line 19
    const-string/jumbo v3, "config_biometric_prompt_ui_package"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method public final hasEnrolledBiometrics(ILjava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    .line 13
    .line 14
    invoke-interface {p0, p1, p2}, Landroid/hardware/biometrics/IBiometricService;->hasEnrolledBiometrics(ILjava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19
    .line 20
    .line 21
    return p0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 24
    .line 25
    .line 26
    throw p0
.end method

.method public final invalidateAuthenticatorIds(IILandroid/hardware/biometrics/IInvalidationCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    .line 13
    .line 14
    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/biometrics/IBiometricService;->invalidateAuthenticatorIds(IILandroid/hardware/biometrics/IInvalidationCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public final registerAuthenticationStateListener(Landroid/hardware/biometrics/AuthenticationStateListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthService$Injector;->getFingerprintService()Landroid/hardware/fingerprint/IFingerprintService;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {v0, p1}, Landroid/hardware/fingerprint/IFingerprintService;->registerAuthenticationStateListener(Landroid/hardware/biometrics/AuthenticationStateListener;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService$Injector;->getFaceService()Landroid/hardware/face/IFaceService;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    invoke-interface {p0, p1}, Landroid/hardware/face/IFaceService;->registerAuthenticationStateListener(Landroid/hardware/biometrics/AuthenticationStateListener;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public final registerEnabledOnKeyguardCallback(Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    .line 13
    .line 14
    invoke-interface {p0, p1}, Landroid/hardware/biometrics/IBiometricService;->registerEnabledOnKeyguardCallback(Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public final resetLockout(I[B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    .line 13
    .line 14
    invoke-interface {p0, p1, p2}, Landroid/hardware/biometrics/IBiometricService;->resetLockout(I[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public final resetLockoutTimeBound(Landroid/os/IBinder;Ljava/lang/String;II[B)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/server/biometrics/AuthService;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    .line 13
    .line 14
    move-object v3, p1

    .line 15
    move-object v4, p2

    .line 16
    move v5, p3

    .line 17
    move v6, p4

    .line 18
    move-object v7, p5

    .line 19
    invoke-interface/range {v2 .. v7}, Landroid/hardware/biometrics/IBiometricService;->resetLockoutTimeBound(Landroid/os/IBinder;Ljava/lang/String;II[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 28
    .line 29
    .line 30
    throw p0
.end method

.method public final unregisterAuthenticationStateListener(Landroid/hardware/biometrics/AuthenticationStateListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/android/server/biometrics/AuthService$Injector;->getFingerprintService()Landroid/hardware/fingerprint/IFingerprintService;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {v0, p1}, Landroid/hardware/fingerprint/IFingerprintService;->unregisterAuthenticationStateListener(Landroid/hardware/biometrics/AuthenticationStateListener;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService;->mInjector:Lcom/android/server/biometrics/AuthService$Injector;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService$Injector;->getFaceService()Landroid/hardware/face/IFaceService;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    invoke-interface {p0, p1}, Landroid/hardware/face/IFaceService;->unregisterAuthenticationStateListener(Landroid/hardware/biometrics/AuthenticationStateListener;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method
