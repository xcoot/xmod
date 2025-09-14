.class public final Lcom/android/server/appop/AppOpsService$Shell;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public attributionTag:Ljava/lang/String;

.field public final mInterface:Lcom/android/internal/app/IAppOpsService;

.field public final mInternal:Lcom/android/server/appop/AppOpsService;

.field public final mToken:Landroid/os/IBinder;

.field public mode:I

.field public modeStr:Ljava/lang/String;

.field public nonpackageUid:I

.field public op:I

.field public opStr:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public packageUid:I

.field public targetsUid:Z

.field public userId:I


# direct methods
.method public static bridge synthetic -$$Nest$smstrOpToOp(Ljava/io/PrintWriter;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/server/appop/AppOpsService$Shell;->strOpToOp(Ljava/io/PrintWriter;Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Binder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/app/IAppOpsService;Lcom/android/server/appop/AppOpsService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    .line 10
    .line 11
    invoke-static {}, Landroid/app/AppOpsManager;->getClientId()Landroid/os/IBinder;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->mToken:Landroid/os/IBinder;

    .line 16
    .line 17
    return-void
.end method

.method public static strModeToMode(Ljava/io/PrintWriter;Ljava/lang/String;)I
    .locals 2

    .line 1
    sget-object v0, Landroid/app/AppOpsManager;->MODE_NAMES:[Ljava/lang/String;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    add-int/lit8 v0, v0, -0x1

    .line 5
    .line 6
    :goto_0
    if-ltz v0, :cond_1

    .line 7
    .line 8
    sget-object v1, Landroid/app/AppOpsManager;->MODE_NAMES:[Ljava/lang/String;

    .line 9
    .line 10
    aget-object v1, v1, v0

    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    return v0

    .line 19
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    return p0

    .line 27
    :catch_0
    const-string v0, "Error: Mode "

    .line 28
    .line 29
    const-string v1, " is not valid"

    .line 30
    .line 31
    invoke-static {p0, v0, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 p0, -0x1

    .line 35
    return p0
.end method

.method public static strOpToOp(Ljava/io/PrintWriter;Ljava/lang/String;)I
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return p0

    .line 6
    :catch_0
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 10
    return p0

    .line 11
    :catch_1
    :try_start_2
    invoke-static {p1}, Landroid/app/AppOpsManager;->strDebugOpToOp(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result p0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 15
    return p0

    .line 16
    :catch_2
    move-exception p1

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v1, "Error: "

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, -0x1

    .line 39
    return p0
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "Default mode: "

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto/16 :goto_15

    .line 14
    .line 15
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const/4 v5, -0x1

    .line 24
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    const/4 v7, 0x1

    .line 29
    const/4 v8, 0x0

    .line 30
    sparse-switch v6, :sswitch_data_0

    .line 31
    .line 32
    .line 33
    goto/16 :goto_0

    .line 34
    .line 35
    :sswitch_0
    const-string/jumbo v6, "read-settings"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    if-eqz v6, :cond_1

    .line 43
    .line 44
    const/4 v6, 0x5

    .line 45
    goto :goto_1

    .line 46
    :catch_0
    move-exception v0

    .line 47
    goto/16 :goto_14

    .line 48
    .line 49
    :sswitch_1
    const-string/jumbo v6, "start"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-eqz v6, :cond_1

    .line 57
    .line 58
    const/4 v6, 0x7

    .line 59
    goto :goto_1

    .line 60
    :sswitch_2
    const-string/jumbo v6, "reset"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-eqz v6, :cond_1

    .line 68
    .line 69
    const/4 v6, 0x3

    .line 70
    goto :goto_1

    .line 71
    :sswitch_3
    const-string/jumbo v6, "stop"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    if-eqz v6, :cond_1

    .line 79
    .line 80
    const/16 v6, 0x8

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :sswitch_4
    const-string/jumbo v6, "note"

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    if-eqz v6, :cond_1

    .line 91
    .line 92
    const/4 v6, 0x6

    .line 93
    goto :goto_1

    .line 94
    :sswitch_5
    const-string/jumbo v6, "set"

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    if-eqz v6, :cond_1

    .line 102
    .line 103
    move v6, v8

    .line 104
    goto :goto_1

    .line 105
    :sswitch_6
    const-string/jumbo v6, "get"

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    if-eqz v6, :cond_1

    .line 113
    .line 114
    move v6, v7

    .line 115
    goto :goto_1

    .line 116
    :sswitch_7
    const-string/jumbo v6, "query-op"

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    if-eqz v6, :cond_1

    .line 124
    .line 125
    const/4 v6, 0x2

    .line 126
    goto :goto_1

    .line 127
    :sswitch_8
    const-string/jumbo v6, "write-settings"

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    if-eqz v6, :cond_1

    .line 135
    .line 136
    const/4 v6, 0x4

    .line 137
    goto :goto_1

    .line 138
    :cond_1
    :goto_0
    move v6, v5

    .line 139
    :goto_1
    const/4 v9, 0x0

    .line 140
    packed-switch v6, :pswitch_data_0

    .line 141
    .line 142
    .line 143
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    goto/16 :goto_15

    .line 148
    .line 149
    :pswitch_0
    invoke-virtual {v0, v4, v7}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(Ljava/io/PrintWriter;Z)I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-gez v1, :cond_2

    .line 154
    .line 155
    :goto_2
    move v0, v1

    .line 156
    goto/16 :goto_15

    .line 157
    .line 158
    :cond_2
    iget-object v13, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 159
    .line 160
    if-eqz v13, :cond_4

    .line 161
    .line 162
    iget-object v9, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    .line 163
    .line 164
    iget-object v10, v0, Lcom/android/server/appop/AppOpsService$Shell;->mToken:Landroid/os/IBinder;

    .line 165
    .line 166
    iget v11, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 167
    .line 168
    iget v12, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    .line 169
    .line 170
    iget-object v14, v0, Lcom/android/server/appop/AppOpsService$Shell;->attributionTag:Ljava/lang/String;

    .line 171
    .line 172
    invoke-interface/range {v9 .. v14}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    :cond_3
    :goto_3
    move v0, v8

    .line 176
    goto/16 :goto_15

    .line 177
    .line 178
    :catch_1
    :cond_4
    :goto_4
    move v0, v5

    .line 179
    goto/16 :goto_15

    .line 180
    .line 181
    :pswitch_1
    invoke-virtual {v0, v4, v7}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(Ljava/io/PrintWriter;Z)I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-gez v1, :cond_5

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_5
    iget-object v13, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 189
    .line 190
    if-eqz v13, :cond_4

    .line 191
    .line 192
    iget-object v9, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    .line 193
    .line 194
    iget-object v10, v0, Lcom/android/server/appop/AppOpsService$Shell;->mToken:Landroid/os/IBinder;

    .line 195
    .line 196
    iget v11, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 197
    .line 198
    iget v12, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    .line 199
    .line 200
    iget-object v14, v0, Lcom/android/server/appop/AppOpsService$Shell;->attributionTag:Ljava/lang/String;

    .line 201
    .line 202
    const-string v17, "appops start shell command"

    .line 203
    .line 204
    const/16 v20, -0x1

    .line 205
    .line 206
    const/4 v15, 0x1

    .line 207
    const/16 v16, 0x1

    .line 208
    .line 209
    const/16 v18, 0x1

    .line 210
    .line 211
    const/16 v19, 0x1

    .line 212
    .line 213
    invoke-interface/range {v9 .. v20}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    .line 214
    .line 215
    .line 216
    goto :goto_3

    .line 217
    :pswitch_2
    invoke-virtual {v0, v4, v7}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(Ljava/io/PrintWriter;Z)I

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    if-gez v1, :cond_6

    .line 222
    .line 223
    goto :goto_2

    .line 224
    :cond_6
    iget-object v12, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 225
    .line 226
    if-eqz v12, :cond_4

    .line 227
    .line 228
    iget-object v9, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    .line 229
    .line 230
    iget v10, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 231
    .line 232
    iget v11, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    .line 233
    .line 234
    iget-object v13, v0, Lcom/android/server/appop/AppOpsService$Shell;->attributionTag:Ljava/lang/String;

    .line 235
    .line 236
    const-string v15, "appops note shell command"

    .line 237
    .line 238
    const/16 v16, 0x1

    .line 239
    .line 240
    const/4 v14, 0x1

    .line 241
    invoke-interface/range {v9 .. v16}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    .line 242
    .line 243
    .line 244
    goto :goto_3

    .line 245
    :pswitch_3
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    .line 246
    .line 247
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 252
    .line 253
    .line 254
    move-result v4

    .line 255
    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 256
    .line 257
    .line 258
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 259
    .line 260
    .line 261
    move-result-wide v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :try_start_1
    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    .line 263
    .line 264
    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService;->readRecentAccesses()V

    .line 265
    .line 266
    .line 267
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    .line 268
    .line 269
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 270
    .line 271
    invoke-interface {v0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->readState()V

    .line 272
    .line 273
    .line 274
    const-string v0, "Last settings read."

    .line 275
    .line 276
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    .line 278
    .line 279
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 280
    .line 281
    .line 282
    goto :goto_3

    .line 283
    :catchall_0
    move-exception v0

    .line 284
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 285
    .line 286
    .line 287
    throw v0

    .line 288
    :pswitch_4
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    .line 289
    .line 290
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 295
    .line 296
    .line 297
    move-result v4

    .line 298
    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/appop/AppOpsService;->enforceManageAppOpsModes(III)V

    .line 299
    .line 300
    .line 301
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 302
    .line 303
    .line 304
    move-result-wide v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 305
    :try_start_3
    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    .line 306
    .line 307
    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 308
    :try_start_4
    iget-object v6, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    .line 309
    .line 310
    invoke-virtual {v6}, Lcom/android/server/appop/AppOpsService;->getIoHandler()Landroid/os/Handler;

    .line 311
    .line 312
    .line 313
    move-result-object v6

    .line 314
    iget-object v7, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    .line 315
    .line 316
    iget-object v7, v7, Lcom/android/server/appop/AppOpsService;->mWriteRunner:Lcom/android/server/appop/AppOpsService$1;

    .line 317
    .line 318
    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 319
    .line 320
    .line 321
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 322
    :try_start_5
    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    .line 323
    .line 324
    invoke-virtual {v4}, Lcom/android/server/appop/AppOpsService;->writeRecentAccesses()V

    .line 325
    .line 326
    .line 327
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    .line 328
    .line 329
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mAppOpsCheckingService:Lcom/android/server/appop/AppOpsCheckingServiceInterface;

    .line 330
    .line 331
    invoke-interface {v0}, Lcom/android/server/appop/AppOpsCheckingServiceInterface;->writeState()V

    .line 332
    .line 333
    .line 334
    const-string v0, "Current settings written."

    .line 335
    .line 336
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 337
    .line 338
    .line 339
    :try_start_6
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 340
    .line 341
    .line 342
    goto/16 :goto_3

    .line 343
    .line 344
    :catchall_1
    move-exception v0

    .line 345
    goto :goto_5

    .line 346
    :catchall_2
    move-exception v0

    .line 347
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 348
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 349
    :goto_5
    :try_start_9
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 350
    .line 351
    .line 352
    throw v0

    .line 353
    :pswitch_5
    const/4 v1, -0x2

    .line 354
    move v2, v1

    .line 355
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v6

    .line 359
    if-eqz v6, :cond_9

    .line 360
    .line 361
    const-string v7, "--user"

    .line 362
    .line 363
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    move-result v7

    .line 367
    if-eqz v7, :cond_7

    .line 368
    .line 369
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 374
    .line 375
    .line 376
    move-result v2

    .line 377
    goto :goto_6

    .line 378
    :cond_7
    if-nez v9, :cond_8

    .line 379
    .line 380
    move-object v9, v6

    .line 381
    goto :goto_6

    .line 382
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 383
    .line 384
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    .line 386
    .line 387
    const-string v1, "Error: Unsupported argument: "

    .line 388
    .line 389
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    goto/16 :goto_4

    .line 403
    .line 404
    :cond_9
    if-ne v2, v1, :cond_a

    .line 405
    .line 406
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 407
    .line 408
    .line 409
    move-result v2

    .line 410
    :cond_a
    iget-object v0, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    .line 411
    .line 412
    invoke-interface {v0, v2, v9}, Lcom/android/internal/app/IAppOpsService;->resetAllModes(ILjava/lang/String;)V

    .line 413
    .line 414
    .line 415
    const-string v0, "Reset all modes for: "

    .line 416
    .line 417
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    if-ne v2, v5, :cond_b

    .line 421
    .line 422
    const-string v0, "all users"

    .line 423
    .line 424
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    goto :goto_7

    .line 428
    :cond_b
    const-string/jumbo v0, "user "

    .line 429
    .line 430
    .line 431
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 435
    .line 436
    .line 437
    :goto_7
    const-string v0, ", "

    .line 438
    .line 439
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    if-nez v9, :cond_c

    .line 443
    .line 444
    const-string v0, "all packages"

    .line 445
    .line 446
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    goto/16 :goto_3

    .line 450
    .line 451
    :cond_c
    const-string/jumbo v0, "package "

    .line 452
    .line 453
    .line 454
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    goto/16 :goto_3

    .line 461
    .line 462
    :pswitch_6
    invoke-virtual {v0, v4}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserOpMode(Ljava/io/PrintWriter;)I

    .line 463
    .line 464
    .line 465
    move-result v1

    .line 466
    if-gez v1, :cond_d

    .line 467
    .line 468
    goto/16 :goto_2

    .line 469
    .line 470
    :cond_d
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    .line 471
    .line 472
    iget v2, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 473
    .line 474
    filled-new-array {v2}, [I

    .line 475
    .line 476
    .line 477
    move-result-object v2

    .line 478
    invoke-interface {v1, v2}, Lcom/android/internal/app/IAppOpsService;->getPackagesForOps([I)Ljava/util/List;

    .line 479
    .line 480
    .line 481
    move-result-object v1

    .line 482
    if-eqz v1, :cond_11

    .line 483
    .line 484
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 485
    .line 486
    .line 487
    move-result v2

    .line 488
    if-gtz v2, :cond_e

    .line 489
    .line 490
    goto :goto_b

    .line 491
    :cond_e
    move v2, v8

    .line 492
    :goto_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 493
    .line 494
    .line 495
    move-result v4

    .line 496
    if-ge v2, v4, :cond_3

    .line 497
    .line 498
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v4

    .line 502
    check-cast v4, Landroid/app/AppOpsManager$PackageOps;

    .line 503
    .line 504
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v6

    .line 508
    check-cast v6, Landroid/app/AppOpsManager$PackageOps;

    .line 509
    .line 510
    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    .line 511
    .line 512
    .line 513
    move-result-object v6

    .line 514
    move v7, v8

    .line 515
    :goto_9
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 516
    .line 517
    .line 518
    move-result v9

    .line 519
    if-ge v7, v9, :cond_10

    .line 520
    .line 521
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    move-result-object v9

    .line 525
    check-cast v9, Landroid/app/AppOpsManager$OpEntry;

    .line 526
    .line 527
    invoke-virtual {v9}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    .line 528
    .line 529
    .line 530
    move-result v10

    .line 531
    iget v11, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 532
    .line 533
    if-ne v10, v11, :cond_f

    .line 534
    .line 535
    invoke-virtual {v9}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    .line 536
    .line 537
    .line 538
    move-result v9

    .line 539
    iget v10, v0, Lcom/android/server/appop/AppOpsService$Shell;->mode:I

    .line 540
    .line 541
    if-ne v9, v10, :cond_f

    .line 542
    .line 543
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v4

    .line 547
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    goto :goto_a

    .line 551
    :cond_f
    add-int/lit8 v7, v7, 0x1

    .line 552
    .line 553
    goto :goto_9

    .line 554
    :cond_10
    :goto_a
    add-int/lit8 v2, v2, 0x1

    .line 555
    .line 556
    goto :goto_8

    .line 557
    :cond_11
    :goto_b
    const-string v0, "No operations."

    .line 558
    .line 559
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 560
    .line 561
    .line 562
    goto/16 :goto_3

    .line 563
    .line 564
    :pswitch_7
    invoke-virtual {v0, v4, v8}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(Ljava/io/PrintWriter;Z)I

    .line 565
    .line 566
    .line 567
    move-result v1

    .line 568
    if-gez v1, :cond_12

    .line 569
    .line 570
    goto/16 :goto_2

    .line 571
    .line 572
    :cond_12
    new-instance v1, Ljava/util/ArrayList;

    .line 573
    .line 574
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 575
    .line 576
    .line 577
    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 578
    .line 579
    if-eqz v4, :cond_16

    .line 580
    .line 581
    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    .line 582
    .line 583
    iget v6, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    .line 584
    .line 585
    iget v7, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 586
    .line 587
    if-eq v7, v5, :cond_13

    .line 588
    .line 589
    filled-new-array {v7}, [I

    .line 590
    .line 591
    .line 592
    move-result-object v7

    .line 593
    goto :goto_c

    .line 594
    :cond_13
    move-object v7, v9

    .line 595
    :goto_c
    invoke-interface {v4, v6, v7}, Lcom/android/internal/app/IAppOpsService;->getUidOps(I[I)Ljava/util/List;

    .line 596
    .line 597
    .line 598
    move-result-object v4

    .line 599
    if-eqz v4, :cond_14

    .line 600
    .line 601
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 602
    .line 603
    .line 604
    :cond_14
    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    .line 605
    .line 606
    iget v6, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    .line 607
    .line 608
    iget-object v7, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 609
    .line 610
    iget v10, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 611
    .line 612
    if-eq v10, v5, :cond_15

    .line 613
    .line 614
    filled-new-array {v10}, [I

    .line 615
    .line 616
    .line 617
    move-result-object v9

    .line 618
    :cond_15
    invoke-interface {v4, v6, v7, v9}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    .line 619
    .line 620
    .line 621
    move-result-object v4

    .line 622
    if-eqz v4, :cond_18

    .line 623
    .line 624
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 625
    .line 626
    .line 627
    goto :goto_d

    .line 628
    :cond_16
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    .line 629
    .line 630
    iget v4, v0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    .line 631
    .line 632
    iget v6, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 633
    .line 634
    if-eq v6, v5, :cond_17

    .line 635
    .line 636
    filled-new-array {v6}, [I

    .line 637
    .line 638
    .line 639
    move-result-object v9

    .line 640
    :cond_17
    invoke-interface {v1, v4, v9}, Lcom/android/internal/app/IAppOpsService;->getUidOps(I[I)Ljava/util/List;

    .line 641
    .line 642
    .line 643
    move-result-object v1

    .line 644
    :cond_18
    :goto_d
    if-eqz v1, :cond_25

    .line 645
    .line 646
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 647
    .line 648
    .line 649
    move-result v4

    .line 650
    if-gtz v4, :cond_19

    .line 651
    .line 652
    goto/16 :goto_13

    .line 653
    .line 654
    :cond_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 655
    .line 656
    .line 657
    move-result-wide v6

    .line 658
    move v2, v8

    .line 659
    :goto_e
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 660
    .line 661
    .line 662
    move-result v4

    .line 663
    if-ge v2, v4, :cond_24

    .line 664
    .line 665
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 666
    .line 667
    .line 668
    move-result-object v4

    .line 669
    check-cast v4, Landroid/app/AppOpsManager$PackageOps;

    .line 670
    .line 671
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v9

    .line 675
    if-nez v9, :cond_1a

    .line 676
    .line 677
    const-string v9, "Uid mode: "

    .line 678
    .line 679
    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 680
    .line 681
    .line 682
    :cond_1a
    invoke-virtual {v4}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    .line 683
    .line 684
    .line 685
    move-result-object v4

    .line 686
    move v9, v8

    .line 687
    :goto_f
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 688
    .line 689
    .line 690
    move-result v10

    .line 691
    if-ge v9, v10, :cond_23

    .line 692
    .line 693
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 694
    .line 695
    .line 696
    move-result-object v10

    .line 697
    check-cast v10, Landroid/app/AppOpsManager$OpEntry;

    .line 698
    .line 699
    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    .line 700
    .line 701
    .line 702
    move-result v11

    .line 703
    invoke-static {v11}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    .line 704
    .line 705
    .line 706
    move-result-object v11

    .line 707
    invoke-virtual {v3, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 708
    .line 709
    .line 710
    const-string v11, ": "

    .line 711
    .line 712
    invoke-virtual {v3, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 713
    .line 714
    .line 715
    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    .line 716
    .line 717
    .line 718
    move-result v11

    .line 719
    invoke-static {v11}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    .line 720
    .line 721
    .line 722
    move-result-object v11

    .line 723
    invoke-virtual {v3, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 724
    .line 725
    .line 726
    iget-object v11, v0, Lcom/android/server/appop/AppOpsService$Shell;->attributionTag:Ljava/lang/String;

    .line 727
    .line 728
    const-wide/16 v12, -0x1

    .line 729
    .line 730
    const/16 v14, 0x1f

    .line 731
    .line 732
    if-nez v11, :cond_1e

    .line 733
    .line 734
    invoke-virtual {v10, v14}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(I)J

    .line 735
    .line 736
    .line 737
    move-result-wide v15

    .line 738
    cmp-long v11, v15, v12

    .line 739
    .line 740
    if-eqz v11, :cond_1b

    .line 741
    .line 742
    const-string v11, "; time="

    .line 743
    .line 744
    invoke-virtual {v3, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 745
    .line 746
    .line 747
    invoke-virtual {v10, v14}, Landroid/app/AppOpsManager$OpEntry;->getLastAccessTime(I)J

    .line 748
    .line 749
    .line 750
    move-result-wide v15

    .line 751
    move/from16 v17, v9

    .line 752
    .line 753
    sub-long v8, v6, v15

    .line 754
    .line 755
    invoke-static {v8, v9, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 756
    .line 757
    .line 758
    const-string v8, " ago"

    .line 759
    .line 760
    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 761
    .line 762
    .line 763
    goto :goto_10

    .line 764
    :cond_1b
    move/from16 v17, v9

    .line 765
    .line 766
    :goto_10
    invoke-virtual {v10, v14}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectTime(I)J

    .line 767
    .line 768
    .line 769
    move-result-wide v8

    .line 770
    cmp-long v8, v8, v12

    .line 771
    .line 772
    if-eqz v8, :cond_1c

    .line 773
    .line 774
    const-string v8, "; rejectTime="

    .line 775
    .line 776
    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 777
    .line 778
    .line 779
    invoke-virtual {v10, v14}, Landroid/app/AppOpsManager$OpEntry;->getLastRejectTime(I)J

    .line 780
    .line 781
    .line 782
    move-result-wide v8

    .line 783
    sub-long v8, v6, v8

    .line 784
    .line 785
    invoke-static {v8, v9, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 786
    .line 787
    .line 788
    const-string v8, " ago"

    .line 789
    .line 790
    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 791
    .line 792
    .line 793
    :cond_1c
    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    .line 794
    .line 795
    .line 796
    move-result v8

    .line 797
    if-eqz v8, :cond_1d

    .line 798
    .line 799
    const-string v8, " (running)"

    .line 800
    .line 801
    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 802
    .line 803
    .line 804
    goto/16 :goto_11

    .line 805
    .line 806
    :cond_1d
    invoke-virtual {v10, v14}, Landroid/app/AppOpsManager$OpEntry;->getLastDuration(I)J

    .line 807
    .line 808
    .line 809
    move-result-wide v8

    .line 810
    cmp-long v8, v8, v12

    .line 811
    .line 812
    if-eqz v8, :cond_22

    .line 813
    .line 814
    const-string v8, "; duration="

    .line 815
    .line 816
    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 817
    .line 818
    .line 819
    invoke-virtual {v10, v14}, Landroid/app/AppOpsManager$OpEntry;->getLastDuration(I)J

    .line 820
    .line 821
    .line 822
    move-result-wide v8

    .line 823
    invoke-static {v8, v9, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 824
    .line 825
    .line 826
    goto :goto_11

    .line 827
    :cond_1e
    move/from16 v17, v9

    .line 828
    .line 829
    invoke-virtual {v10}, Landroid/app/AppOpsManager$OpEntry;->getAttributedOpEntries()Ljava/util/Map;

    .line 830
    .line 831
    .line 832
    move-result-object v8

    .line 833
    iget-object v9, v0, Lcom/android/server/appop/AppOpsService$Shell;->attributionTag:Ljava/lang/String;

    .line 834
    .line 835
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    .line 837
    .line 838
    move-result-object v8

    .line 839
    check-cast v8, Landroid/app/AppOpsManager$AttributedOpEntry;

    .line 840
    .line 841
    if-eqz v8, :cond_22

    .line 842
    .line 843
    invoke-virtual {v8, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    .line 844
    .line 845
    .line 846
    move-result-wide v9

    .line 847
    cmp-long v9, v9, v12

    .line 848
    .line 849
    if-eqz v9, :cond_1f

    .line 850
    .line 851
    const-string v9, "; time="

    .line 852
    .line 853
    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 854
    .line 855
    .line 856
    invoke-virtual {v8, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastAccessTime(I)J

    .line 857
    .line 858
    .line 859
    move-result-wide v9

    .line 860
    sub-long v9, v6, v9

    .line 861
    .line 862
    invoke-static {v9, v10, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 863
    .line 864
    .line 865
    const-string v9, " ago"

    .line 866
    .line 867
    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 868
    .line 869
    .line 870
    :cond_1f
    invoke-virtual {v8, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastRejectTime(I)J

    .line 871
    .line 872
    .line 873
    move-result-wide v9

    .line 874
    cmp-long v9, v9, v12

    .line 875
    .line 876
    if-eqz v9, :cond_20

    .line 877
    .line 878
    const-string v9, "; rejectTime="

    .line 879
    .line 880
    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 881
    .line 882
    .line 883
    invoke-virtual {v8, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastRejectTime(I)J

    .line 884
    .line 885
    .line 886
    move-result-wide v9

    .line 887
    sub-long v9, v6, v9

    .line 888
    .line 889
    invoke-static {v9, v10, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 890
    .line 891
    .line 892
    const-string v9, " ago"

    .line 893
    .line 894
    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 895
    .line 896
    .line 897
    :cond_20
    invoke-virtual {v8}, Landroid/app/AppOpsManager$AttributedOpEntry;->isRunning()Z

    .line 898
    .line 899
    .line 900
    move-result v9

    .line 901
    if-eqz v9, :cond_21

    .line 902
    .line 903
    const-string v8, " (running)"

    .line 904
    .line 905
    invoke-virtual {v3, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 906
    .line 907
    .line 908
    goto :goto_11

    .line 909
    :cond_21
    invoke-virtual {v8, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastDuration(I)J

    .line 910
    .line 911
    .line 912
    move-result-wide v9

    .line 913
    cmp-long v9, v9, v12

    .line 914
    .line 915
    if-eqz v9, :cond_22

    .line 916
    .line 917
    const-string v9, "; duration="

    .line 918
    .line 919
    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 920
    .line 921
    .line 922
    invoke-virtual {v8, v14}, Landroid/app/AppOpsManager$AttributedOpEntry;->getLastDuration(I)J

    .line 923
    .line 924
    .line 925
    move-result-wide v8

    .line 926
    invoke-static {v8, v9, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 927
    .line 928
    .line 929
    :cond_22
    :goto_11
    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    .line 930
    .line 931
    .line 932
    add-int/lit8 v9, v17, 0x1

    .line 933
    .line 934
    const/4 v8, 0x0

    .line 935
    goto/16 :goto_f

    .line 936
    .line 937
    :cond_23
    add-int/lit8 v2, v2, 0x1

    .line 938
    .line 939
    const/4 v8, 0x0

    .line 940
    goto/16 :goto_e

    .line 941
    .line 942
    :cond_24
    :goto_12
    const/4 v0, 0x0

    .line 943
    goto/16 :goto_15

    .line 944
    .line 945
    :cond_25
    :goto_13
    const-string v1, "No operations."

    .line 946
    .line 947
    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 948
    .line 949
    .line 950
    iget v1, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 951
    .line 952
    if-le v1, v5, :cond_24

    .line 953
    .line 954
    const/16 v4, 0x95

    .line 955
    .line 956
    if-ge v1, v4, :cond_24

    .line 957
    .line 958
    new-instance v1, Ljava/lang/StringBuilder;

    .line 959
    .line 960
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 961
    .line 962
    .line 963
    iget v0, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 964
    .line 965
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    .line 966
    .line 967
    .line 968
    move-result v0

    .line 969
    invoke-static {v0}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    .line 970
    .line 971
    .line 972
    move-result-object v0

    .line 973
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    .line 975
    .line 976
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 977
    .line 978
    .line 979
    move-result-object v0

    .line 980
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 981
    .line 982
    .line 983
    goto :goto_12

    .line 984
    :pswitch_8
    invoke-virtual {v0, v4, v7}, Lcom/android/server/appop/AppOpsService$Shell;->parseUserPackageOp(Ljava/io/PrintWriter;Z)I

    .line 985
    .line 986
    .line 987
    move-result v1

    .line 988
    if-gez v1, :cond_26

    .line 989
    .line 990
    goto/16 :goto_2

    .line 991
    .line 992
    :cond_26
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 993
    .line 994
    .line 995
    move-result-object v1

    .line 996
    if-nez v1, :cond_27

    .line 997
    .line 998
    const-string v0, "Error: Mode not specified."

    .line 999
    .line 1000
    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1001
    .line 1002
    .line 1003
    goto/16 :goto_4

    .line 1004
    .line 1005
    :cond_27
    invoke-static {v4, v1}, Lcom/android/server/appop/AppOpsService$Shell;->strModeToMode(Ljava/io/PrintWriter;Ljava/lang/String;)I

    .line 1006
    .line 1007
    .line 1008
    move-result v1

    .line 1009
    if-gez v1, :cond_28

    .line 1010
    .line 1011
    goto/16 :goto_4

    .line 1012
    .line 1013
    :cond_28
    iget-boolean v2, v0, Lcom/android/server/appop/AppOpsService$Shell;->targetsUid:Z

    .line 1014
    .line 1015
    if-nez v2, :cond_29

    .line 1016
    .line 1017
    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 1018
    .line 1019
    if-eqz v4, :cond_29

    .line 1020
    .line 1021
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    .line 1022
    .line 1023
    iget v6, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 1024
    .line 1025
    iget v0, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    .line 1026
    .line 1027
    invoke-interface {v2, v6, v0, v4, v1}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V

    .line 1028
    .line 1029
    .line 1030
    goto :goto_12

    .line 1031
    :cond_29
    if-eqz v2, :cond_2a

    .line 1032
    .line 1033
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0

    .line 1034
    .line 1035
    if-eqz v2, :cond_2a

    .line 1036
    .line 1037
    :try_start_a
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInternal:Lcom/android/server/appop/AppOpsService;

    .line 1038
    .line 1039
    iget-object v2, v2, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    .line 1040
    .line 1041
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v2

    .line 1045
    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 1046
    .line 1047
    iget v6, v0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    .line 1048
    .line 1049
    invoke-virtual {v2, v4, v6}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 1050
    .line 1051
    .line 1052
    move-result v2

    .line 1053
    iget-object v4, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    .line 1054
    .line 1055
    iget v0, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 1056
    .line 1057
    invoke-interface {v4, v0, v2, v1}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0

    .line 1058
    .line 1059
    .line 1060
    goto :goto_12

    .line 1061
    :cond_2a
    :try_start_b
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    .line 1062
    .line 1063
    iget v4, v0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 1064
    .line 1065
    iget v0, v0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    .line 1066
    .line 1067
    invoke-interface {v2, v4, v0, v1}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_0

    .line 1068
    .line 1069
    .line 1070
    goto/16 :goto_12

    .line 1071
    .line 1072
    :goto_14
    const-string v1, "Remote exception: "

    .line 1073
    .line 1074
    invoke-static {v1, v0, v3}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/io/PrintWriter;)V

    .line 1075
    .line 1076
    .line 1077
    goto/16 :goto_4

    .line 1078
    .line 1079
    :goto_15
    return v0

    .line 1080
    nop

    .line 1081
    :sswitch_data_0
    .sparse-switch
        -0x658cadaf -> :sswitch_8
        -0x458a76fa -> :sswitch_7
        0x18f56 -> :sswitch_6
        0x1bc62 -> :sswitch_5
        0x33aff2 -> :sswitch_4
        0x360802 -> :sswitch_3
        0x6761d4f -> :sswitch_2
        0x68ac462 -> :sswitch_1
        0x7c514e7a -> :sswitch_0
    .end sparse-switch

    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    :pswitch_data_0
    .packed-switch 0x0
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

.method public final onHelp()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "AppOps service (appops) commands:"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "  help"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "    Print this help text."

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "  start [--user <USER_ID>] [--attribution <ATTRIBUTION_TAG>] <PACKAGE | UID> <OP> "

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "    Starts a given operation for a particular application."

    .line 26
    .line 27
    const-string v1, "  stop [--user <USER_ID>] [--attribution <ATTRIBUTION_TAG>] <PACKAGE | UID> <OP> "

    .line 28
    .line 29
    const-string v2, "    Stops a given operation for a particular application."

    .line 30
    .line 31
    const-string v3, "  set [--user <USER_ID>] <[--uid] PACKAGE | UID> <OP> <MODE>"

    .line 32
    .line 33
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "    Set the mode for a particular application and operation."

    .line 37
    .line 38
    const-string v1, "  get [--user <USER_ID>] [--attribution <ATTRIBUTION_TAG>] <PACKAGE | UID> [<OP>]"

    .line 39
    .line 40
    const-string v2, "    Return the mode for a particular application and optional operation."

    .line 41
    .line 42
    const-string v3, "  query-op [--user <USER_ID>] <OP> [<MODE>]"

    .line 43
    .line 44
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v0, "    Print all packages that currently have the given op in the given mode."

    .line 48
    .line 49
    const-string v1, "  reset [--user <USER_ID>] [<PACKAGE>]"

    .line 50
    .line 51
    const-string v2, "    Reset the given application or all applications to default modes."

    .line 52
    .line 53
    const-string v3, "  write-settings"

    .line 54
    .line 55
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v0, "    Immediately write pending changes to storage."

    .line 59
    .line 60
    const-string v1, "  read-settings"

    .line 61
    .line 62
    const-string v2, "    Read the last written settings, replacing current state in RAM."

    .line 63
    .line 64
    const-string v3, "  options:"

    .line 65
    .line 66
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v0, "    <PACKAGE> an Android package name or its UID if prefixed by --uid"

    .line 70
    .line 71
    const-string v1, "    <OP>      an AppOps operation."

    .line 72
    .line 73
    const-string v2, "    <MODE>    one of allow, ignore, deny, or default"

    .line 74
    .line 75
    const-string v3, "    <USER_ID> the user id under which the package is installed. If --user is"

    .line 76
    .line 77
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string v0, "              not specified, the current user is assumed."

    .line 81
    .line 82
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final parseUserOpMode(Ljava/io/PrintWriter;)I
    .locals 2

    .line 1
    const/4 v0, -0x2

    .line 2
    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    .line 8
    .line 9
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    const-string v1, "--user"

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 35
    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    .line 42
    .line 43
    if-nez v1, :cond_0

    .line 44
    .line 45
    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    .line 46
    .line 47
    :cond_3
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 48
    .line 49
    const/4 v1, -0x1

    .line 50
    if-nez v0, :cond_4

    .line 51
    .line 52
    const-string p0, "Error: Operation not specified."

    .line 53
    .line 54
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return v1

    .line 58
    :cond_4
    invoke-static {p1, v0}, Lcom/android/server/appop/AppOpsService$Shell;->strOpToOp(Ljava/io/PrintWriter;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 63
    .line 64
    if-gez v0, :cond_5

    .line 65
    .line 66
    return v1

    .line 67
    :cond_5
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    .line 68
    .line 69
    if-eqz v0, :cond_6

    .line 70
    .line 71
    invoke-static {p1, v0}, Lcom/android/server/appop/AppOpsService$Shell;->strModeToMode(Ljava/io/PrintWriter;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    iput p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->mode:I

    .line 76
    .line 77
    if-gez p1, :cond_7

    .line 78
    .line 79
    return v1

    .line 80
    :cond_6
    const/4 p1, 0x1

    .line 81
    iput p1, p0, Lcom/android/server/appop/AppOpsService$Shell;->mode:I

    .line 82
    .line 83
    :cond_7
    const/4 p0, 0x0

    .line 84
    return p0
.end method

.method public final parseUserPackageOp(Ljava/io/PrintWriter;Z)I
    .locals 9

    .line 1
    const/4 v0, -0x2

    .line 2
    iput v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 8
    .line 9
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x1

    .line 14
    if-eqz v2, :cond_5

    .line 15
    .line 16
    const-string v4, "--user"

    .line 17
    .line 18
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    iput v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const-string v4, "--uid"

    .line 36
    .line 37
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    iput-boolean v3, p0, Lcom/android/server/appop/AppOpsService$Shell;->targetsUid:Z

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const-string v4, "--attribution"

    .line 47
    .line 48
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_3

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    iput-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->attributionTag:Ljava/lang/String;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 62
    .line 63
    if-nez v4, :cond_4

    .line 64
    .line 65
    iput-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 69
    .line 70
    if-nez v4, :cond_0

    .line 71
    .line 72
    iput-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 73
    .line 74
    :cond_5
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 75
    .line 76
    const/4 v4, -0x1

    .line 77
    if-nez v2, :cond_6

    .line 78
    .line 79
    const-string p0, "Error: Package name not specified."

    .line 80
    .line 81
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return v4

    .line 85
    :cond_6
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 86
    .line 87
    if-nez v2, :cond_7

    .line 88
    .line 89
    if-eqz p2, :cond_7

    .line 90
    .line 91
    const-string p0, "Error: Operation not specified."

    .line 92
    .line 93
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return v4

    .line 97
    :cond_7
    if-eqz v2, :cond_8

    .line 98
    .line 99
    invoke-static {p1, v2}, Lcom/android/server/appop/AppOpsService$Shell;->strOpToOp(Ljava/io/PrintWriter;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    iput p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 104
    .line 105
    if-gez p2, :cond_9

    .line 106
    .line 107
    return v4

    .line 108
    :cond_8
    iput v4, p0, Lcom/android/server/appop/AppOpsService$Shell;->op:I

    .line 109
    .line 110
    :cond_9
    iget p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    .line 111
    .line 112
    if-ne p2, v0, :cond_a

    .line 113
    .line 114
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    iput p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    .line 119
    .line 120
    :cond_a
    iput v4, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    .line 121
    .line 122
    :try_start_0
    iget-object p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 123
    .line 124
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    iput p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .line 130
    :catch_0
    iget p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    .line 131
    .line 132
    const/4 v0, 0x0

    .line 133
    if-ne p2, v4, :cond_e

    .line 134
    .line 135
    iget-object p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 138
    .line 139
    .line 140
    move-result p2

    .line 141
    if-le p2, v3, :cond_e

    .line 142
    .line 143
    iget-object p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    .line 146
    .line 147
    .line 148
    move-result p2

    .line 149
    const/16 v2, 0x75

    .line 150
    .line 151
    if-ne p2, v2, :cond_e

    .line 152
    .line 153
    iget-object p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 154
    .line 155
    const/16 v2, 0x2e

    .line 156
    .line 157
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    if-gez p2, :cond_e

    .line 162
    .line 163
    move p2, v3

    .line 164
    :goto_1
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    const/16 v5, 0x39

    .line 171
    .line 172
    const/16 v6, 0x30

    .line 173
    .line 174
    if-ge p2, v2, :cond_b

    .line 175
    .line 176
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 177
    .line 178
    invoke-virtual {v2, p2}, Ljava/lang/String;->charAt(I)C

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    if-lt v2, v6, :cond_b

    .line 183
    .line 184
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 185
    .line 186
    invoke-virtual {v2, p2}, Ljava/lang/String;->charAt(I)C

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    if-gt v2, v5, :cond_b

    .line 191
    .line 192
    add-int/lit8 p2, p2, 0x1

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_b
    if-le p2, v3, :cond_e

    .line 196
    .line 197
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 198
    .line 199
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    if-ge p2, v2, :cond_e

    .line 204
    .line 205
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 206
    .line 207
    invoke-virtual {v2, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    iget-object v7, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 216
    .line 217
    invoke-virtual {v7, p2}, Ljava/lang/String;->charAt(I)C

    .line 218
    .line 219
    .line 220
    move-result v7

    .line 221
    add-int/2addr p2, v3

    .line 222
    move v3, p2

    .line 223
    :goto_2
    iget-object v8, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 224
    .line 225
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 226
    .line 227
    .line 228
    move-result v8

    .line 229
    if-ge v3, v8, :cond_c

    .line 230
    .line 231
    iget-object v8, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 232
    .line 233
    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    .line 234
    .line 235
    .line 236
    move-result v8

    .line 237
    if-lt v8, v6, :cond_c

    .line 238
    .line 239
    iget-object v8, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 240
    .line 241
    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    .line 242
    .line 243
    .line 244
    move-result v8

    .line 245
    if-gt v8, v5, :cond_c

    .line 246
    .line 247
    add-int/lit8 v3, v3, 0x1

    .line 248
    .line 249
    goto :goto_2

    .line 250
    :cond_c
    if-le v3, p2, :cond_e

    .line 251
    .line 252
    iget-object v5, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 253
    .line 254
    invoke-virtual {v5, p2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p2

    .line 258
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    move-result p2

    .line 262
    const/16 v3, 0x61

    .line 263
    .line 264
    if-ne v7, v3, :cond_d

    .line 265
    .line 266
    add-int/lit16 p2, p2, 0x2710

    .line 267
    .line 268
    invoke-static {v2, p2}, Landroid/os/UserHandle;->getUid(II)I

    .line 269
    .line 270
    .line 271
    move-result p2

    .line 272
    iput p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    .line 273
    .line 274
    goto :goto_3

    .line 275
    :cond_d
    const/16 v3, 0x73

    .line 276
    .line 277
    if-ne v7, v3, :cond_e

    .line 278
    .line 279
    invoke-static {v2, p2}, Landroid/os/UserHandle;->getUid(II)I

    .line 280
    .line 281
    .line 282
    move-result p2

    .line 283
    iput p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 284
    .line 285
    :catch_1
    :cond_e
    :goto_3
    iget p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->nonpackageUid:I

    .line 286
    .line 287
    if-eq p2, v4, :cond_f

    .line 288
    .line 289
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 290
    .line 291
    goto :goto_4

    .line 292
    :cond_f
    iget-object p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 293
    .line 294
    invoke-static {p2}, Lcom/android/server/appop/AppOpsService;->resolveNonAppUid(Ljava/lang/String;)I

    .line 295
    .line 296
    .line 297
    move-result p2

    .line 298
    iput p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    .line 299
    .line 300
    if-gez p2, :cond_10

    .line 301
    .line 302
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 303
    .line 304
    .line 305
    move-result-object p2

    .line 306
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 307
    .line 308
    const-wide/16 v2, 0x2000

    .line 309
    .line 310
    iget v5, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    .line 311
    .line 312
    invoke-interface {p2, v1, v2, v3, v5}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    .line 313
    .line 314
    .line 315
    move-result p2

    .line 316
    iput p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    .line 317
    .line 318
    :cond_10
    iget p2, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageUid:I

    .line 319
    .line 320
    if-gez p2, :cond_11

    .line 321
    .line 322
    new-instance p2, Ljava/lang/StringBuilder;

    .line 323
    .line 324
    const-string v0, "Error: No UID for "

    .line 325
    .line 326
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 330
    .line 331
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    const-string v0, " in user "

    .line 335
    .line 336
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    iget p0, p0, Lcom/android/server/appop/AppOpsService$Shell;->userId:I

    .line 340
    .line 341
    invoke-static {p2, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 342
    .line 343
    .line 344
    return v4

    .line 345
    :cond_11
    :goto_4
    return v0
.end method
