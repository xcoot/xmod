.class public final synthetic Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/pm/PackageSessionVerifier;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageSessionVerifier;Ljava/lang/Object;Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/PackageSessionVerifier;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/PackageSessionVerifier;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    :try_start_0
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageSessionVerifier;->storeSession(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 20
    .line 21
    .line 22
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 23
    .line 24
    iget-boolean v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    .line 47
    .line 48
    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageSessionVerifier;->checkApexUpdateAllowed(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageSessionVerifier;->checkRebootlessApex(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageSessionVerifier;->checkApexSignature(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSessionVerifier;->checkApexUpdateAllowed(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSessionVerifier;->checkRebootlessApex(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSessionVerifier;->checkApexSignature(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    invoke-virtual {v0, v1, p0}, Lcom/android/server/pm/PackageSessionVerifier;->verifyAPK(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;)V
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :goto_1
    iget v2, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-static {v2, v3}, Landroid/content/pm/PackageManager;->installStatusToString(ILjava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    iget v3, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 84
    .line 85
    invoke-virtual {v1, v3, v2}, Lcom/android/server/pm/PackageInstallerSession;->setSessionFailed(ILjava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget v1, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;->onResult(ILjava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :goto_2
    return-void

    .line 98
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/PackageSessionVerifier;

    .line 99
    .line 100
    iget-object v1, p0, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v1, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 103
    .line 104
    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;

    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSessionVerifier;->verifyApex(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 110
    .line 111
    .line 112
    iget-object v2, v0, Lcom/android/server/pm/PackageSessionVerifier;->mHandler:Landroid/os/Handler;

    .line 113
    .line 114
    new-instance v3, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;

    .line 115
    .line 116
    const/4 v4, 0x0

    .line 117
    invoke-direct {v3, v0, v1, p0, v4}, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/PackageSessionVerifier;Ljava/lang/Object;Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 121
    .line 122
    .line 123
    goto :goto_3

    .line 124
    :catch_1
    move-exception v2

    .line 125
    iget v3, v2, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 126
    .line 127
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {v0, v1, p0, v3, v2}, Lcom/android/server/pm/PackageSessionVerifier;->onVerificationFailure(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;ILjava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :goto_3
    return-void

    .line 135
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/PackageSessionVerifier;

    .line 136
    .line 137
    iget-object v1, p0, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v1, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 140
    .line 141
    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;

    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    :try_start_2
    invoke-static {}, Lcom/android/internal/content/InstallLocationUtils;->getStorageManager()Landroid/os/storage/IStorageManager;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-interface {v2}, Landroid/os/storage/IStorageManager;->supportsCheckpoint()Z

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageSessionVerifier;->checkActiveSessions(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_2 .. :try_end_2} :catch_2

    .line 155
    .line 156
    .line 157
    :try_start_3
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSessionVerifier;->checkRollbacks(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 158
    .line 159
    .line 160
    move-object v2, v1

    .line 161
    check-cast v2, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 162
    .line 163
    iget-object v3, v2, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    .line 164
    .line 165
    iget-object v3, v3, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 166
    .line 167
    iget-boolean v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    .line 168
    .line 169
    if-eqz v3, :cond_2

    .line 170
    .line 171
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->getChildSessions()Ljava/util/List;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    if-eqz v4, :cond_3

    .line 184
    .line 185
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    check-cast v4, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 190
    .line 191
    invoke-virtual {v0, v2, v4}, Lcom/android/server/pm/PackageSessionVerifier;->checkOverlaps(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 192
    .line 193
    .line 194
    goto :goto_4

    .line 195
    :catch_2
    move-exception v2

    .line 196
    goto :goto_5

    .line 197
    :cond_2
    invoke-virtual {v0, v2, v2}, Lcom/android/server/pm/PackageSessionVerifier;->checkOverlaps(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 198
    .line 199
    .line 200
    :cond_3
    iget-object v3, v0, Lcom/android/server/pm/PackageSessionVerifier;->mHandler:Landroid/os/Handler;

    .line 201
    .line 202
    new-instance v4, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;

    .line 203
    .line 204
    const/4 v5, 0x2

    .line 205
    invoke-direct {v4, v0, v2, p0, v5}, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/PackageSessionVerifier;Ljava/lang/Object;Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;I)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 209
    .line 210
    .line 211
    goto :goto_6

    .line 212
    :catch_3
    move-exception v2

    .line 213
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    .line 214
    .line 215
    new-instance v4, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    const-string v5, "Can\'t query fs-checkpoint status : "

    .line 218
    .line 219
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    const/16 v4, -0x6e

    .line 230
    .line 231
    invoke-direct {v3, v4, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    .line 232
    .line 233
    .line 234
    throw v3
    :try_end_3
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_3 .. :try_end_3} :catch_2

    .line 235
    :goto_5
    iget v3, v2, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 236
    .line 237
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    invoke-virtual {v0, v1, p0, v3, v2}, Lcom/android/server/pm/PackageSessionVerifier;->onVerificationFailure(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;ILjava/lang/String;)V

    .line 242
    .line 243
    .line 244
    :goto_6
    return-void

    .line 245
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/PackageSessionVerifier;

    .line 246
    .line 247
    iget-object v1, p0, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 248
    .line 249
    check-cast v1, Lcom/android/server/pm/StagingManager$StagedSession;

    .line 250
    .line 251
    iget-object p0, p0, Lcom/android/server/pm/PackageSessionVerifier$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;

    .line 252
    .line 253
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    :try_start_4
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSessionVerifier;->endVerification(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 257
    .line 258
    .line 259
    const/4 v2, 0x1

    .line 260
    const/4 v3, 0x0

    .line 261
    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;->onResult(ILjava/lang/String;)V
    :try_end_4
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_4 .. :try_end_4} :catch_4

    .line 262
    .line 263
    .line 264
    goto :goto_7

    .line 265
    :catch_4
    move-exception v2

    .line 266
    iget v3, v2, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 267
    .line 268
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    invoke-virtual {v0, v1, p0, v3, v2}, Lcom/android/server/pm/PackageSessionVerifier;->onVerificationFailure(Lcom/android/server/pm/StagingManager$StagedSession;Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;ILjava/lang/String;)V

    .line 273
    .line 274
    .line 275
    :goto_7
    return-void

    .line 276
    nop

    .line 277
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
