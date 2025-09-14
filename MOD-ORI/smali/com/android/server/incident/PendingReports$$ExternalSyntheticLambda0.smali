.class public final synthetic Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/incident/PendingReports;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:I

.field public final synthetic f$6:Landroid/os/IIncidentAuthListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/incident/PendingReports;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IIncidentAuthListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/incident/PendingReports;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    .line 13
    .line 14
    iput p6, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda0;->f$5:I

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda0;->f$6:Landroid/os/IIncidentAuthListener;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v7, v0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/incident/PendingReports;

    .line 4
    .line 5
    iget v1, v0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda0;->f$1:I

    .line 6
    .line 7
    iget-object v8, v0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v9, v0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v10, v0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    .line 12
    .line 13
    iget v11, v0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda0;->f$5:I

    .line 14
    .line 15
    iget-object v12, v0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda0;->f$6:Landroid/os/IIncidentAuthListener;

    .line 16
    .line 17
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const-string v13, "approving consentless report: "

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    :try_start_0
    iget-object v0, v7, Lcom/android/server/incident/PendingReports;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 25
    .line 26
    invoke-virtual {v0, v1, v8}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    const-string v0, "IncidentCompanionService"

    .line 31
    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v3, "Calling uid "

    .line 35
    .line 36
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, " doesn\'t match package "

    .line 43
    .line 44
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    invoke-static {v12, v8}, Lcom/android/server/incident/PendingReports;->denyReportBeforeAddingRec(Landroid/os/IIncidentAuthListener;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto/16 :goto_3

    .line 61
    .line 62
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/server/incident/IncidentCompanionService;->getCurrentUserIfAdmin()I

    .line 63
    .line 64
    .line 65
    move-result v14

    .line 66
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    const/16 v2, -0x2710

    .line 71
    .line 72
    if-eq v14, v2, :cond_5

    .line 73
    .line 74
    iget-object v2, v7, Lcom/android/server/incident/PendingReports;->mContext:Landroid/content/Context;

    .line 75
    .line 76
    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v2, v0, v14}, Landroid/os/UserManager;->isSameProfileGroup(II)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-nez v2, :cond_1

    .line 85
    .line 86
    goto/16 :goto_2

    .line 87
    .line 88
    :cond_1
    invoke-virtual {v7, v14}, Lcom/android/server/incident/PendingReports;->getApproverComponent(I)Landroid/content/ComponentName;

    .line 89
    .line 90
    .line 91
    move-result-object v15

    .line 92
    if-nez v15, :cond_2

    .line 93
    .line 94
    invoke-static {v12, v8}, Lcom/android/server/incident/PendingReports;->denyReportBeforeAddingRec(Landroid/os/IIncidentAuthListener;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    goto/16 :goto_3

    .line 98
    .line 99
    :cond_2
    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    .line 100
    .line 101
    if-nez v0, :cond_3

    .line 102
    .line 103
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    .line 104
    .line 105
    if-eqz v0, :cond_4

    .line 106
    .line 107
    :cond_3
    and-int/lit8 v0, v11, 0x2

    .line 108
    .line 109
    if-eqz v0, :cond_4

    .line 110
    .line 111
    new-instance v0, Landroid/content/AttributionSource$Builder;

    .line 112
    .line 113
    invoke-direct {v0, v1}, Landroid/content/AttributionSource$Builder;-><init>(I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v8}, Landroid/content/AttributionSource$Builder;->setPackageName(Ljava/lang/String;)Landroid/content/AttributionSource$Builder;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0}, Landroid/content/AttributionSource$Builder;->build()Landroid/content/AttributionSource;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    iget-object v1, v7, Lcom/android/server/incident/PendingReports;->mPermissionManager:Landroid/permission/PermissionManager;

    .line 125
    .line 126
    const-string v2, "android.permission.CAPTURE_CONSENTLESS_BUGREPORT_ON_USERDEBUG_BUILD"

    .line 127
    .line 128
    const/4 v3, 0x0

    .line 129
    invoke-virtual {v1, v2, v0, v3}, Landroid/permission/PermissionManager;->checkPermissionForDataDelivery(Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-nez v0, :cond_4

    .line 134
    .line 135
    :try_start_1
    new-instance v16, Lcom/android/server/incident/PendingReports$PendingReportRec;

    .line 136
    .line 137
    move-object/from16 v0, v16

    .line 138
    .line 139
    move-object v1, v7

    .line 140
    move-object v2, v8

    .line 141
    move-object v3, v9

    .line 142
    move-object v4, v10

    .line 143
    move v5, v11

    .line 144
    move-object v6, v12

    .line 145
    invoke-direct/range {v0 .. v6}, Lcom/android/server/incident/PendingReports$PendingReportRec;-><init>(Lcom/android/server/incident/PendingReports;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IIncidentAuthListener;)V

    .line 146
    .line 147
    .line 148
    const-string v0, "IncidentCompanionService"

    .line 149
    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/incident/PendingReports$PendingReportRec;->getUri()Landroid/net/Uri;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    invoke-interface {v12}, Landroid/os/IIncidentAuthListener;->onReportApproved()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 170
    .line 171
    .line 172
    goto/16 :goto_3

    .line 173
    .line 174
    :catch_1
    move-exception v0

    .line 175
    const-string v1, "IncidentCompanionService"

    .line 176
    .line 177
    const-string v2, "authorizeReportImpl listener.onReportApproved RemoteException: "

    .line 178
    .line 179
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    .line 181
    .line 182
    :cond_4
    iget-object v13, v7, Lcom/android/server/incident/PendingReports;->mLock:Ljava/lang/Object;

    .line 183
    .line 184
    monitor-enter v13

    .line 185
    :try_start_2
    new-instance v6, Lcom/android/server/incident/PendingReports$PendingReportRec;

    .line 186
    .line 187
    move-object v0, v6

    .line 188
    move-object v1, v7

    .line 189
    move-object v2, v8

    .line 190
    move-object v3, v9

    .line 191
    move-object v4, v10

    .line 192
    move v5, v11

    .line 193
    move-object v8, v6

    .line 194
    move-object v6, v12

    .line 195
    invoke-direct/range {v0 .. v6}, Lcom/android/server/incident/PendingReports$PendingReportRec;-><init>(Lcom/android/server/incident/PendingReports;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IIncidentAuthListener;)V

    .line 196
    .line 197
    .line 198
    iget-object v0, v7, Lcom/android/server/incident/PendingReports;->mPending:Ljava/util/ArrayList;

    .line 199
    .line 200
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    :try_start_3
    invoke-interface {v12}, Landroid/os/IIncidentAuthListener;->asBinder()Landroid/os/IBinder;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    new-instance v1, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda2;

    .line 209
    .line 210
    invoke-direct {v1, v7, v12, v15, v14}, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/incident/PendingReports;Landroid/os/IIncidentAuthListener;Landroid/content/ComponentName;I)V

    .line 211
    .line 212
    .line 213
    const/4 v2, 0x0

    .line 214
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 215
    .line 216
    .line 217
    goto :goto_1

    .line 218
    :catch_2
    const-string v0, "IncidentCompanionService"

    .line 219
    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    const-string v2, "Remote died while trying to register death listener: "

    .line 223
    .line 224
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v8}, Lcom/android/server/incident/PendingReports$PendingReportRec;->getUri()Landroid/net/Uri;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    invoke-virtual {v7, v12, v15, v14}, Lcom/android/server/incident/PendingReports;->cancelReportImpl(Landroid/os/IIncidentAuthListener;Landroid/content/ComponentName;I)V

    .line 242
    .line 243
    .line 244
    :goto_1
    invoke-virtual {v7, v14, v15}, Lcom/android/server/incident/PendingReports;->sendBroadcast(ILandroid/content/ComponentName;)V

    .line 245
    .line 246
    .line 247
    goto :goto_3

    .line 248
    :catchall_0
    move-exception v0

    .line 249
    :try_start_4
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 250
    throw v0

    .line 251
    :cond_5
    :goto_2
    const-string v1, "IncidentCompanionService"

    .line 252
    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    const-string v3, "Calling user "

    .line 256
    .line 257
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    const-string v0, " doesn\'t belong to the same profile group of the current admin user "

    .line 264
    .line 265
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .line 277
    .line 278
    invoke-static {v12, v8}, Lcom/android/server/incident/PendingReports;->denyReportBeforeAddingRec(Landroid/os/IIncidentAuthListener;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    :goto_3
    return-void
.end method
