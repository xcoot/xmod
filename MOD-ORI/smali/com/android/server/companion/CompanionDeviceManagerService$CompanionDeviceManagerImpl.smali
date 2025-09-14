.class public final Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;
.super Landroid/companion/ICompanionDeviceManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/CompanionDeviceManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/companion/ICompanionDeviceManager$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final addOnAssociationsChangedListener(Landroid/companion/IOnAssociationsChangedListener;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->addOnAssociationsChangedListener_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0, p2}, Lcom/android/server/companion/utils/PermissionsUtils;->enforceCallerIsSystemOrCanInteractWithUserId(Landroid/content/Context;I)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationStore;->mRemoteListeners:Landroid/os/RemoteCallbackList;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/association/AssociationStore;->mRemoteListeners:Landroid/os/RemoteCallbackList;

    .line 21
    .line 22
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p0, p1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
.end method

.method public final addOnMessageReceivedListener(ILandroid/companion/IOnMessageReceivedListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->addOnMessageReceivedListener_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/transport/CompanionTransportManager;->addListener(ILandroid/companion/IOnMessageReceivedListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final addOnTransportsChangedListener(Landroid/companion/IOnTransportsChangedListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->addOnTransportsChangedListener_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/companion/transport/CompanionTransportManager;->addListener(Landroid/companion/IOnTransportsChangedListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final applyRestoredPayload([BI)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mBackupRestoreProcessor:Lcom/android/server/companion/BackupRestoreProcessor;

    .line 12
    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/BackupRestoreProcessor;->applyRestoredPayload([BI)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 18
    .line 19
    const-string p1, "Caller must be system"

    .line 20
    .line 21
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p0
.end method

.method public final associate(Landroid/companion/AssociationRequest;Landroid/companion/IAssociationRequestCallback;Ljava/lang/String;I)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v5, p1

    .line 4
    .line 5
    move-object/from16 v6, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move/from16 v2, p4

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v4, "associate() request="

    .line 14
    .line 15
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v4, ", package=u"

    .line 22
    .line 23
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v7, "/"

    .line 30
    .line 31
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v8, "CDM_CompanionDeviceManagerService"

    .line 35
    .line 36
    invoke-static {v1, v3, v8}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const-string/jumbo v8, "create associations"

    .line 46
    .line 47
    .line 48
    invoke-static {v2, v1, v3, v8}, Lcom/android/server/companion/utils/PermissionsUtils;->enforceCallerCanManageAssociationsForPackage(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, v0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 52
    .line 53
    iget-object v1, v0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    const-string v0, "Request MUST NOT be null"

    .line 59
    .line 60
    invoke-static {v5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    invoke-virtual/range {p1 .. p1}, Landroid/companion/AssociationRequest;->isSelfManaged()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_0

    .line 68
    .line 69
    invoke-virtual/range {p1 .. p1}, Landroid/companion/AssociationRequest;->getDisplayName()Ljava/lang/CharSequence;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const-string v8, "AssociationRequest.displayName MUST NOT be null."

    .line 74
    .line 75
    invoke-static {v0, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    :cond_0
    const-string v0, "Package name MUST NOT be null"

    .line 79
    .line 80
    invoke-static {v3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    const-string v0, "Callback MUST NOT be null"

    .line 84
    .line 85
    invoke-static {v6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    const-wide/16 v8, 0x0

    .line 89
    .line 90
    iget-object v0, v1, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 91
    .line 92
    invoke-virtual {v0, v3, v8, v9, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    new-instance v9, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string/jumbo v10, "processNewAssociationRequest() request="

    .line 99
    .line 100
    .line 101
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v4, " (uid="

    .line 117
    .line 118
    const-string v7, ")"

    .line 119
    .line 120
    invoke-static {v8, v3, v4, v7, v9}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    const-string v7, "CDM_AssociationRequestsProcessor"

    .line 125
    .line 126
    invoke-static {v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    iget-object v4, v1, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    .line 130
    .line 131
    invoke-static {v4, v5, v8}, Lcom/android/server/companion/utils/PermissionsUtils;->enforcePermissionForCreatingAssociation(Landroid/content/Context;Landroid/companion/AssociationRequest;I)V

    .line 132
    .line 133
    .line 134
    iget-object v4, v1, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    .line 135
    .line 136
    invoke-static {v4, v3, v2}, Lcom/android/server/companion/utils/PackageUtils;->enforceUsesCompanionDeviceFeature(Landroid/content/Context;Ljava/lang/String;I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual/range {p1 .. p1}, Landroid/companion/AssociationRequest;->isSelfManaged()Z

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    const/4 v9, 0x0

    .line 144
    const/4 v10, 0x1

    .line 145
    if-eqz v4, :cond_2

    .line 146
    .line 147
    invoke-virtual/range {p1 .. p1}, Landroid/companion/AssociationRequest;->isForceConfirmation()Z

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    if-nez v4, :cond_2

    .line 152
    .line 153
    invoke-virtual/range {p1 .. p1}, Landroid/companion/AssociationRequest;->getDeviceProfile()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    if-nez v4, :cond_1

    .line 158
    .line 159
    move v4, v9

    .line 160
    goto :goto_0

    .line 161
    :cond_1
    new-instance v11, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda3;

    .line 162
    .line 163
    invoke-direct {v11, v1, v2, v3, v4}, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/companion/association/AssociationRequestsProcessor;ILjava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-static {v11}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    check-cast v4, Ljava/lang/Boolean;

    .line 171
    .line 172
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    xor-int/2addr v4, v10

    .line 177
    :goto_0
    if-nez v4, :cond_2

    .line 178
    .line 179
    new-instance v8, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda0;

    .line 180
    .line 181
    const/4 v4, 0x0

    .line 182
    const/4 v7, 0x0

    .line 183
    move-object v0, v8

    .line 184
    move/from16 v2, p4

    .line 185
    .line 186
    move-object/from16 v3, p3

    .line 187
    .line 188
    move-object/from16 v5, p1

    .line 189
    .line 190
    move-object/from16 v6, p2

    .line 191
    .line 192
    invoke-direct/range {v0 .. v7}, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/association/AssociationRequestsProcessor;ILjava/lang/String;Landroid/net/MacAddress;Landroid/companion/AssociationRequest;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V

    .line 193
    .line 194
    .line 195
    invoke-static {v8}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 196
    .line 197
    .line 198
    goto/16 :goto_6

    .line 199
    .line 200
    :cond_2
    iget-object v4, v1, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    .line 201
    .line 202
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    const-string v11, "android.hardware.type.watch"

    .line 207
    .line 208
    invoke-virtual {v4, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 209
    .line 210
    .line 211
    move-result v4

    .line 212
    if-eqz v4, :cond_3

    .line 213
    .line 214
    const-string v0, "3p apps are not allowed to create associations on watch."

    .line 215
    .line 216
    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    :try_start_0
    invoke-interface {v6, v0}, Landroid/companion/IAssociationRequestCallback;->onFailure(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 220
    .line 221
    .line 222
    goto/16 :goto_6

    .line 223
    .line 224
    :cond_3
    invoke-virtual {v5, v3}, Landroid/companion/AssociationRequest;->setPackageName(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v5, v2}, Landroid/companion/AssociationRequest;->setUserId(I)V

    .line 228
    .line 229
    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 231
    .line 232
    .line 233
    move-result-wide v11

    .line 234
    iget-object v4, v1, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 235
    .line 236
    invoke-virtual {v4, v2, v3}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 241
    .line 242
    .line 243
    move-result-object v4

    .line 244
    move v13, v9

    .line 245
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 246
    .line 247
    .line 248
    move-result v14

    .line 249
    if-eqz v14, :cond_5

    .line 250
    .line 251
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v14

    .line 255
    check-cast v14, Landroid/companion/AssociationInfo;

    .line 256
    .line 257
    invoke-virtual {v14}, Landroid/companion/AssociationInfo;->getTimeApprovedMs()J

    .line 258
    .line 259
    .line 260
    move-result-wide v14

    .line 261
    sub-long v14, v11, v14

    .line 262
    .line 263
    const-wide/32 v16, 0x36ee80

    .line 264
    .line 265
    .line 266
    cmp-long v14, v14, v16

    .line 267
    .line 268
    if-gez v14, :cond_4

    .line 269
    .line 270
    add-int/lit8 v13, v13, 0x1

    .line 271
    .line 272
    const/4 v14, 0x5

    .line 273
    if-lt v13, v14, :cond_4

    .line 274
    .line 275
    const-string v0, "Too many associations: "

    .line 276
    .line 277
    const-string v4, " already associated "

    .line 278
    .line 279
    const-string v11, " devices within the last 3600000ms"

    .line 280
    .line 281
    invoke-static {v13, v0, v3, v4, v11}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .line 287
    .line 288
    move v0, v9

    .line 289
    goto :goto_1

    .line 290
    :cond_5
    iget-object v4, v1, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    .line 291
    .line 292
    const v11, 0x10700b9

    .line 293
    .line 294
    .line 295
    const v12, 0x10700b8

    .line 296
    .line 297
    .line 298
    invoke-static {v4, v0, v3, v11, v12}, Lcom/android/server/companion/utils/PackageUtils;->isPackageAllowlisted(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Ljava/lang/String;II)Z

    .line 299
    .line 300
    .line 301
    move-result v0

    .line 302
    :goto_1
    if-nez v0, :cond_8

    .line 303
    .line 304
    const-string/jumbo v0, "callingUid = "

    .line 305
    .line 306
    .line 307
    const-string/jumbo v4, "com.samsung.accessory.wmanager"

    .line 308
    .line 309
    .line 310
    :try_start_1
    iget-object v11, v1, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    .line 311
    .line 312
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 313
    .line 314
    .line 315
    move-result-object v11

    .line 316
    invoke-virtual {v11, v4}, Landroid/content/pm/PackageManager;->getUidForSharedUser(Ljava/lang/String;)I

    .line 317
    .line 318
    .line 319
    move-result v4

    .line 320
    iget-object v11, v1, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    .line 321
    .line 322
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 323
    .line 324
    .line 325
    move-result-object v11

    .line 326
    invoke-virtual {v11, v3, v9}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    .line 327
    .line 328
    .line 329
    move-result v11

    .line 330
    if-lez v4, :cond_6

    .line 331
    .line 332
    if-ne v4, v11, :cond_6

    .line 333
    .line 334
    invoke-virtual/range {p1 .. p1}, Landroid/companion/AssociationRequest;->getDeviceProfile()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v12
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 338
    if-nez v12, :cond_6

    .line 339
    .line 340
    move v12, v10

    .line 341
    goto :goto_2

    .line 342
    :catch_0
    move v12, v9

    .line 343
    goto :goto_3

    .line 344
    :cond_6
    move v12, v9

    .line 345
    :goto_2
    :try_start_2
    new-instance v13, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    const-string v0, ", userId = "

    .line 354
    .line 355
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    const-string v0, ", preConfirmedSharedUid = "

    .line 362
    .line 363
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 374
    .line 375
    .line 376
    goto :goto_4

    .line 377
    :catch_1
    :goto_3
    const-string v0, "NameNotFoundException "

    .line 378
    .line 379
    const-string v2, " or com.samsung.accessory.wmanager"

    .line 380
    .line 381
    invoke-static {v0, v3, v2, v7}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    :goto_4
    if-eqz v12, :cond_7

    .line 385
    .line 386
    goto :goto_5

    .line 387
    :cond_7
    move v10, v9

    .line 388
    :cond_8
    :goto_5
    invoke-virtual {v5, v10}, Landroid/companion/AssociationRequest;->setSkipPrompt(Z)V

    .line 389
    .line 390
    .line 391
    new-instance v0, Landroid/os/Bundle;

    .line 392
    .line 393
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 394
    .line 395
    .line 396
    const-string v2, "association_request"

    .line 397
    .line 398
    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 399
    .line 400
    .line 401
    const-string v2, "application_callback"

    .line 402
    .line 403
    invoke-interface/range {p2 .. p2}, Landroid/companion/IAssociationRequestCallback;->asBinder()Landroid/os/IBinder;

    .line 404
    .line 405
    .line 406
    move-result-object v3

    .line 407
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 408
    .line 409
    .line 410
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 411
    .line 412
    .line 413
    move-result-object v2

    .line 414
    iget-object v3, v1, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mOnRequestConfirmationReceiver:Lcom/android/server/companion/association/AssociationRequestsProcessor$1;

    .line 415
    .line 416
    invoke-virtual {v3, v2, v9}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v2, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 420
    .line 421
    .line 422
    sget-object v3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 423
    .line 424
    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v3

    .line 428
    check-cast v3, Landroid/os/ResultReceiver;

    .line 429
    .line 430
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 431
    .line 432
    .line 433
    const-string/jumbo v2, "result_receiver"

    .line 434
    .line 435
    .line 436
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 437
    .line 438
    .line 439
    new-instance v2, Landroid/content/Intent;

    .line 440
    .line 441
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 442
    .line 443
    .line 444
    iget-object v3, v1, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mCompanionAssociationActivity:Landroid/content/ComponentName;

    .line 445
    .line 446
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 450
    .line 451
    .line 452
    new-instance v0, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda2;

    .line 453
    .line 454
    invoke-direct {v0, v1, v8, v2}, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/companion/association/AssociationRequestsProcessor;ILandroid/content/Intent;)V

    .line 455
    .line 456
    .line 457
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    check-cast v0, Landroid/app/PendingIntent;

    .line 462
    .line 463
    :try_start_3
    invoke-interface {v6, v0}, Landroid/companion/IAssociationRequestCallback;->onAssociationPending(Landroid/app/PendingIntent;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 464
    .line 465
    .line 466
    :catch_2
    :goto_6
    return-void
.end method

.method public final attachSystemDataTransport(Ljava/lang/String;IILandroid/os/ParcelFileDescriptor;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->attachSystemDataTransport_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    const-string p1, "CDM_CompanionTransportManager"

    .line 12
    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v0, "Attaching transport for association id=["

    .line 16
    .line 17
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v0, "]..."

    .line 24
    .line 25
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 36
    .line 37
    invoke-virtual {p1, p3}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    .line 41
    .line 42
    monitor-enter p1

    .line 43
    :try_start_0
    iget-object p2, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    .line 44
    .line 45
    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->contains(I)Z

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    if-eqz p2, :cond_0

    .line 50
    .line 51
    invoke-virtual {p0, p3}, Lcom/android/server/companion/transport/CompanionTransportManager;->detachSystemDataTransport(I)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    :goto_0
    invoke-virtual {p0, p3, p4}, Lcom/android/server/companion/transport/CompanionTransportManager;->initializeTransport(ILandroid/os/ParcelFileDescriptor;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/android/server/companion/transport/CompanionTransportManager;->notifyOnTransportsChanged()V

    .line 61
    .line 62
    .line 63
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    const-string p0, "CDM_CompanionTransportManager"

    .line 65
    .line 66
    const-string p1, "Transport attached."

    .line 67
    .line 68
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    throw p0
.end method

.method public final buildAssociationCancellationIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "buildAssociationCancellationIntent() package=u"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    const-string v1, "/"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "CDM_CompanionDeviceManagerService"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string/jumbo v1, "build association cancellation intent"

    .line 36
    .line 37
    .line 38
    invoke-static {p2, v0, p1, v1}, Lcom/android/server/companion/utils/PermissionsUtils;->enforceCallerCanManageAssociationsForPackage(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    const-string v0, "Package name MUST NOT be null"

    .line 49
    .line 50
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    .line 54
    .line 55
    invoke-static {v0, p1, p2}, Lcom/android/server/companion/utils/PackageUtils;->enforceUsesCompanionDeviceFeature(Landroid/content/Context;Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 59
    .line 60
    const-wide/16 v1, 0x0

    .line 61
    .line 62
    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    new-instance p2, Landroid/os/Bundle;

    .line 67
    .line 68
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string/jumbo v0, "cancel_confirmation"

    .line 72
    .line 73
    .line 74
    const/4 v1, 0x1

    .line 75
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 76
    .line 77
    .line 78
    new-instance v0, Landroid/content/Intent;

    .line 79
    .line 80
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mCompanionAssociationActivity:Landroid/content/ComponentName;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 89
    .line 90
    .line 91
    new-instance p2, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda2;

    .line 92
    .line 93
    invoke-direct {p2, p0, p1, v0}, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/companion/association/AssociationRequestsProcessor;ILandroid/content/Intent;)V

    .line 94
    .line 95
    .line 96
    invoke-static {p2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    check-cast p0, Landroid/app/PendingIntent;

    .line 101
    .line 102
    return-object p0
.end method

.method public final buildPermissionTransferUserConsentIntent(Ljava/lang/String;II)Landroid/app/PendingIntent;
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    .line 8
    .line 9
    const v2, 0x10700bb

    .line 10
    .line 11
    .line 12
    const v3, 0x10700ba

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/companion/utils/PackageUtils;->isPackageAllowlisted(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Ljava/lang/String;II)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const-string v0, "CDM_SystemDataTransferProcessor"

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    const-string p1, "User consent Intent should be skipped. Returning null."

    .line 24
    .line 25
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p3}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    new-instance p1, Landroid/companion/datatransfer/PermissionSyncRequest;

    .line 35
    .line 36
    invoke-direct {p1, p3}, Landroid/companion/datatransfer/PermissionSyncRequest;-><init>(I)V

    .line 37
    .line 38
    .line 39
    const/4 p3, 0x1

    .line 40
    invoke-virtual {p1, p3}, Landroid/companion/datatransfer/PermissionSyncRequest;->setUserConsented(Z)V

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    .line 44
    .line 45
    invoke-virtual {p0, p2, p1}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->writeRequest(ILandroid/companion/datatransfer/SystemDataTransferRequest;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    const/4 p0, 0x0

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const-string p1, "Creating permission sync intent for userId ["

    .line 51
    .line 52
    const-string v1, "] associationId ["

    .line 53
    .line 54
    const-string v2, "]"

    .line 55
    .line 56
    invoke-static {p2, p3, p1, v1, v2}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 64
    .line 65
    invoke-virtual {p1, p3}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    new-instance v0, Landroid/os/Bundle;

    .line 70
    .line 71
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 72
    .line 73
    .line 74
    new-instance v1, Landroid/companion/datatransfer/PermissionSyncRequest;

    .line 75
    .line 76
    invoke-direct {v1, p3}, Landroid/companion/datatransfer/PermissionSyncRequest;-><init>(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, p2}, Landroid/companion/datatransfer/PermissionSyncRequest;->setUserId(I)V

    .line 80
    .line 81
    .line 82
    const-string/jumbo p2, "permission_sync_request"

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 86
    .line 87
    .line 88
    const-string/jumbo p2, "companion_device_name"

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDisplayName()Ljava/lang/CharSequence;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 96
    .line 97
    .line 98
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    iget-object p2, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mOnSystemDataTransferRequestConfirmationReceiver:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$2;

    .line 103
    .line 104
    const/4 v1, 0x0

    .line 105
    invoke-virtual {p2, p1, v1}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 109
    .line 110
    .line 111
    sget-object p2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 112
    .line 113
    invoke-interface {p2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    check-cast p2, Landroid/os/ResultReceiver;

    .line 118
    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 120
    .line 121
    .line 122
    const-string/jumbo p1, "system_data_transfer_result_receiver"

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 126
    .line 127
    .line 128
    new-instance p1, Landroid/content/Intent;

    .line 129
    .line 130
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 131
    .line 132
    .line 133
    iget-object p2, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mCompanionDeviceDataTransferActivity:Landroid/content/ComponentName;

    .line 134
    .line 135
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 139
    .line 140
    .line 141
    new-instance p2, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda1;

    .line 142
    .line 143
    invoke-direct {p2, p0, p3, p1}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;ILandroid/content/Intent;)V

    .line 144
    .line 145
    .line 146
    invoke-static {p2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    check-cast p0, Landroid/app/PendingIntent;

    .line 151
    .line 152
    :goto_0
    return-object p0
.end method

.method public final canPairWithoutPrompt(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 4
    .line 5
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/companion/association/AssociationStore;->getFirstAssociationByAddress(ILjava/lang/String;Ljava/lang/String;)Landroid/companion/AssociationInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 p1, 0x0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    return p1

    .line 13
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide p2

    .line 17
    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getTimeApprovedMs()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    sub-long/2addr p2, v0

    .line 22
    const-wide/32 v0, 0x927c0

    .line 23
    .line 24
    .line 25
    cmp-long p0, p2, v0

    .line 26
    .line 27
    if-gez p0, :cond_1

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    :cond_1
    return p1
.end method

.method public final checkCanCallNotificationApi(ILjava/lang/String;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/companion/utils/PermissionsUtils;->DEVICE_PROFILE_TO_PERMISSION:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x3e8

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const-string v4, ")"

    .line 21
    .line 22
    if-ne v3, p1, :cond_3

    .line 23
    .line 24
    invoke-static {v0, p2}, Lcom/android/server/companion/utils/PermissionsUtils;->checkPackage(ILjava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    :goto_0
    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-ne v0, v1, :cond_1

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0, p2, p1}, Lcom/android/server/companion/utils/PackageUtils;->enforceUsesCompanionDeviceFeature(Landroid/content/Context;Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 49
    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    xor-int/lit8 p0, p0, 0x1

    .line 59
    .line 60
    const-string p1, "App must have an association before calling this API"

    .line 61
    .line 62
    invoke-static {p0, p1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 67
    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string p2, " doesn\'t belong to calling uid ("

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p0

    .line 95
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 96
    .line 97
    const-string p2, "Calling UserId ("

    .line 98
    .line 99
    const-string v0, ") does not match the expected UserId ("

    .line 100
    .line 101
    invoke-static {v2, p1, p2, v0, v4}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p0
.end method

.method public final clearAssociationTag(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->setAssociationTag(ILjava/lang/String;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final createAssociation(Ljava/lang/String;Ljava/lang/String;I[B)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->createAssociation_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, p1, p4, v1}, Landroid/content/pm/PackageManager;->hasSigningCertificate(Ljava/lang/String;[BI)Z

    .line 16
    .line 17
    .line 18
    move-result p4

    .line 19
    if-nez p4, :cond_0

    .line 20
    .line 21
    const-string p0, "CDM_CompanionDeviceManagerService"

    .line 22
    .line 23
    const-string p1, "Given certificate doesn\'t match the package certificate."

    .line 24
    .line 25
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    invoke-static {p2}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    .line 36
    .line 37
    const/4 v8, 0x0

    .line 38
    const/4 v9, 0x0

    .line 39
    const/4 v4, 0x0

    .line 40
    const/4 v5, 0x0

    .line 41
    const/4 v6, 0x0

    .line 42
    const/4 v7, 0x0

    .line 43
    move v1, p3

    .line 44
    move-object v2, p1

    .line 45
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->createAssociation(ILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/companion/AssociatedDevice;ZLandroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final detachSystemDataTransport(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->detachSystemDataTransport_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 7
    .line 8
    invoke-virtual {p0, p3}, Lcom/android/server/companion/transport/CompanionTransportManager;->detachSystemDataTransport(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final disablePermissionsSync(I)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    new-instance v1, Landroid/companion/datatransfer/PermissionSyncRequest;

    .line 24
    .line 25
    invoke-direct {v1, p1}, Landroid/companion/datatransfer/PermissionSyncRequest;-><init>(I)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    invoke-virtual {v1, p1}, Landroid/companion/datatransfer/PermissionSyncRequest;->setUserConsented(Z)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    .line 33
    .line 34
    invoke-virtual {p0, v0, v1}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->writeRequest(ILandroid/companion/datatransfer/SystemDataTransferRequest;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 39
    .line 40
    const-string p1, "Caller must be system UID"

    .line 41
    .line 42
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0
.end method

.method public final disableSystemDataSync(II)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance v0, Landroid/companion/AssociationInfo$Builder;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Landroid/companion/AssociationInfo$Builder;-><init>(Landroid/companion/AssociationInfo;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getSystemDataSyncFlags()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    not-int p2, p2

    .line 21
    and-int/2addr p1, p2

    .line 22
    invoke-virtual {v0, p1}, Landroid/companion/AssociationInfo$Builder;->setSystemDataSyncFlags(I)Landroid/companion/AssociationInfo$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p0, p1}, Lcom/android/server/companion/association/AssociationStore;->updateAssociation(Landroid/companion/AssociationInfo;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final disassociate(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mDisassociationProcessor:Lcom/android/server/companion/association/DisassociationProcessor;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/companion/association/DisassociationProcessor;->disassociate(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string p3, "CDM_CompanionDeviceManagerService"

    .line 8
    .line 9
    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const-string p3, "Companion Device Associations: "

    .line 24
    .line 25
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociations()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    const/16 v0, 0xa

    .line 37
    .line 38
    if-eqz p3, :cond_1

    .line 39
    .line 40
    const-string p1, "<empty>\n"

    .line 41
    .line 42
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const-string p3, "\n"

    .line 47
    .line 48
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociations()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result p3

    .line 63
    if-eqz p3, :cond_2

    .line 64
    .line 65
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    check-cast p3, Landroid/companion/AssociationInfo;

    .line 70
    .line 71
    const-string v1, "  "

    .line 72
    .line 73
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {p3}, Landroid/companion/AssociationInfo;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    invoke-virtual {v1, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 90
    .line 91
    iget-object p1, p1, Lcom/android/server/companion/CompanionDeviceManagerService;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    const-string p3, "Companion Device Present: "

    .line 97
    .line 98
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 99
    .line 100
    .line 101
    iget-object p3, p1, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedBtDevices:Ljava/util/Set;

    .line 102
    .line 103
    check-cast p3, Ljava/util/HashSet;

    .line 104
    .line 105
    invoke-virtual {p3}, Ljava/util/HashSet;->isEmpty()Z

    .line 106
    .line 107
    .line 108
    move-result p3

    .line 109
    const-string v1, "<empty>\n"

    .line 110
    .line 111
    if-eqz p3, :cond_3

    .line 112
    .line 113
    iget-object p3, p1, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mNearbyBleDevices:Ljava/util/Set;

    .line 114
    .line 115
    check-cast p3, Ljava/util/HashSet;

    .line 116
    .line 117
    invoke-virtual {p3}, Ljava/util/HashSet;->isEmpty()Z

    .line 118
    .line 119
    .line 120
    move-result p3

    .line 121
    if-eqz p3, :cond_3

    .line 122
    .line 123
    iget-object p3, p1, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mReportedSelfManagedDevices:Ljava/util/Set;

    .line 124
    .line 125
    check-cast p3, Ljava/util/HashSet;

    .line 126
    .line 127
    invoke-virtual {p3}, Ljava/util/HashSet;->isEmpty()Z

    .line 128
    .line 129
    .line 130
    move-result p3

    .line 131
    if-eqz p3, :cond_3

    .line 132
    .line 133
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 134
    .line 135
    .line 136
    goto/16 :goto_7

    .line 137
    .line 138
    :cond_3
    const-string p3, "\n"

    .line 139
    .line 140
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 141
    .line 142
    .line 143
    const-string v2, "  Connected Bluetooth Devices: "

    .line 144
    .line 145
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 146
    .line 147
    .line 148
    iget-object v2, p1, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedBtDevices:Ljava/util/Set;

    .line 149
    .line 150
    check-cast v2, Ljava/util/HashSet;

    .line 151
    .line 152
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    const-string v3, "    "

    .line 157
    .line 158
    iget-object v4, p1, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 159
    .line 160
    if-eqz v2, :cond_4

    .line 161
    .line 162
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 163
    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_4
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 167
    .line 168
    .line 169
    iget-object v2, p1, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedBtDevices:Ljava/util/Set;

    .line 170
    .line 171
    check-cast v2, Ljava/util/HashSet;

    .line 172
    .line 173
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    if-eqz v5, :cond_5

    .line 182
    .line 183
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    check-cast v5, Ljava/lang/Integer;

    .line 188
    .line 189
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 190
    .line 191
    .line 192
    move-result v5

    .line 193
    invoke-virtual {v4, v5}, Lcom/android/server/companion/association/AssociationStore;->getAssociationById(I)Landroid/companion/AssociationInfo;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->toShortString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    invoke-virtual {v6, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    .line 210
    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_5
    :goto_3
    const-string v2, "  Nearby BLE Devices: "

    .line 214
    .line 215
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 216
    .line 217
    .line 218
    iget-object v2, p1, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mNearbyBleDevices:Ljava/util/Set;

    .line 219
    .line 220
    check-cast v2, Ljava/util/HashSet;

    .line 221
    .line 222
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    if-eqz v2, :cond_6

    .line 227
    .line 228
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 229
    .line 230
    .line 231
    goto :goto_5

    .line 232
    :cond_6
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 233
    .line 234
    .line 235
    iget-object v2, p1, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mNearbyBleDevices:Ljava/util/Set;

    .line 236
    .line 237
    check-cast v2, Ljava/util/HashSet;

    .line 238
    .line 239
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 244
    .line 245
    .line 246
    move-result v5

    .line 247
    if-eqz v5, :cond_7

    .line 248
    .line 249
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    check-cast v5, Ljava/lang/Integer;

    .line 254
    .line 255
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 256
    .line 257
    .line 258
    move-result v5

    .line 259
    invoke-virtual {v4, v5}, Lcom/android/server/companion/association/AssociationStore;->getAssociationById(I)Landroid/companion/AssociationInfo;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 264
    .line 265
    .line 266
    move-result-object v6

    .line 267
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->toShortString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v5

    .line 271
    invoke-virtual {v6, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 272
    .line 273
    .line 274
    move-result-object v5

    .line 275
    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    .line 276
    .line 277
    .line 278
    goto :goto_4

    .line 279
    :cond_7
    :goto_5
    const-string v2, "  Self-Reported Devices: "

    .line 280
    .line 281
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 282
    .line 283
    .line 284
    iget-object v2, p1, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mReportedSelfManagedDevices:Ljava/util/Set;

    .line 285
    .line 286
    check-cast v2, Ljava/util/HashSet;

    .line 287
    .line 288
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    .line 289
    .line 290
    .line 291
    move-result v2

    .line 292
    if-eqz v2, :cond_8

    .line 293
    .line 294
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 295
    .line 296
    .line 297
    goto :goto_7

    .line 298
    :cond_8
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 299
    .line 300
    .line 301
    iget-object p1, p1, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mReportedSelfManagedDevices:Ljava/util/Set;

    .line 302
    .line 303
    check-cast p1, Ljava/util/HashSet;

    .line 304
    .line 305
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 310
    .line 311
    .line 312
    move-result p3

    .line 313
    if-eqz p3, :cond_9

    .line 314
    .line 315
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object p3

    .line 319
    check-cast p3, Ljava/lang/Integer;

    .line 320
    .line 321
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 322
    .line 323
    .line 324
    move-result p3

    .line 325
    invoke-virtual {v4, p3}, Lcom/android/server/companion/association/AssociationStore;->getAssociationById(I)Landroid/companion/AssociationInfo;

    .line 326
    .line 327
    .line 328
    move-result-object p3

    .line 329
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    invoke-virtual {p3}, Landroid/companion/AssociationInfo;->toShortString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object p3

    .line 337
    invoke-virtual {v1, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 338
    .line 339
    .line 340
    move-result-object p3

    .line 341
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    .line 342
    .line 343
    .line 344
    goto :goto_6

    .line 345
    :cond_9
    :goto_7
    iget-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 346
    .line 347
    iget-object p1, p1, Lcom/android/server/companion/CompanionDeviceManagerService;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    .line 348
    .line 349
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 350
    .line 351
    .line 352
    const-string p3, "Companion Device Application Controller: \n"

    .line 353
    .line 354
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 355
    .line 356
    .line 357
    iget-object p3, p1, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mBoundCompanionApplications:Ljava/util/Map;

    .line 358
    .line 359
    monitor-enter p3

    .line 360
    :try_start_0
    const-string v1, "  Bound Companion Applications: "

    .line 361
    .line 362
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 363
    .line 364
    .line 365
    iget-object v1, p1, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mBoundCompanionApplications:Ljava/util/Map;

    .line 366
    .line 367
    check-cast v1, Ljava/util/HashMap;

    .line 368
    .line 369
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    if-eqz v1, :cond_a

    .line 374
    .line 375
    const-string v1, "<empty>\n"

    .line 376
    .line 377
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 378
    .line 379
    .line 380
    goto :goto_9

    .line 381
    :catchall_0
    move-exception p0

    .line 382
    goto/16 :goto_14

    .line 383
    .line 384
    :cond_a
    const-string v1, "\n"

    .line 385
    .line 386
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 387
    .line 388
    .line 389
    iget-object v1, p1, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mBoundCompanionApplications:Ljava/util/Map;

    .line 390
    .line 391
    check-cast v1, Ljava/util/HashMap;

    .line 392
    .line 393
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 402
    .line 403
    .line 404
    move-result v2

    .line 405
    if-eqz v2, :cond_c

    .line 406
    .line 407
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object v2

    .line 411
    check-cast v2, Ljava/util/Map$Entry;

    .line 412
    .line 413
    const-string v3, "<u"

    .line 414
    .line 415
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 416
    .line 417
    .line 418
    move-result-object v3

    .line 419
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v4

    .line 423
    check-cast v4, Landroid/util/Pair;

    .line 424
    .line 425
    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 426
    .line 427
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v4

    .line 431
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 432
    .line 433
    .line 434
    move-result-object v3

    .line 435
    const-string v4, ", "

    .line 436
    .line 437
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 438
    .line 439
    .line 440
    move-result-object v3

    .line 441
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object v4

    .line 445
    check-cast v4, Landroid/util/Pair;

    .line 446
    .line 447
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 448
    .line 449
    check-cast v4, Ljava/lang/CharSequence;

    .line 450
    .line 451
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 452
    .line 453
    .line 454
    move-result-object v3

    .line 455
    const-string v4, ">"

    .line 456
    .line 457
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 458
    .line 459
    .line 460
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v2

    .line 464
    check-cast v2, Ljava/util/List;

    .line 465
    .line 466
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 467
    .line 468
    .line 469
    move-result-object v2

    .line 470
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 471
    .line 472
    .line 473
    move-result v3

    .line 474
    if-eqz v3, :cond_b

    .line 475
    .line 476
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v3

    .line 480
    check-cast v3, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;

    .line 481
    .line 482
    const-string v4, ", isPrimary="

    .line 483
    .line 484
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 485
    .line 486
    .line 487
    move-result-object v4

    .line 488
    invoke-virtual {v3}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->isPrimary()Z

    .line 489
    .line 490
    .line 491
    move-result v3

    .line 492
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v3

    .line 496
    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 497
    .line 498
    .line 499
    goto :goto_8

    .line 500
    :cond_c
    :goto_9
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    const-string p3, "  Companion Applications Scheduled For Rebinding: "

    .line 502
    .line 503
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 504
    .line 505
    .line 506
    iget-object v1, p1, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mScheduledForRebindingCompanionApplications:Ljava/util/Set;

    .line 507
    .line 508
    monitor-enter v1

    .line 509
    :try_start_1
    iget-object p3, p1, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mScheduledForRebindingCompanionApplications:Ljava/util/Set;

    .line 510
    .line 511
    check-cast p3, Ljava/util/HashSet;

    .line 512
    .line 513
    invoke-virtual {p3}, Ljava/util/HashSet;->isEmpty()Z

    .line 514
    .line 515
    .line 516
    move-result p3

    .line 517
    if-eqz p3, :cond_d

    .line 518
    .line 519
    const-string p1, "<empty>\n"

    .line 520
    .line 521
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 522
    .line 523
    .line 524
    goto :goto_b

    .line 525
    :catchall_1
    move-exception p0

    .line 526
    goto/16 :goto_13

    .line 527
    .line 528
    :cond_d
    const-string p3, "\n"

    .line 529
    .line 530
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 531
    .line 532
    .line 533
    iget-object p1, p1, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mScheduledForRebindingCompanionApplications:Ljava/util/Set;

    .line 534
    .line 535
    check-cast p1, Ljava/util/HashSet;

    .line 536
    .line 537
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 538
    .line 539
    .line 540
    move-result-object p1

    .line 541
    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 542
    .line 543
    .line 544
    move-result p3

    .line 545
    if-eqz p3, :cond_e

    .line 546
    .line 547
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 548
    .line 549
    .line 550
    move-result-object p3

    .line 551
    check-cast p3, Landroid/util/Pair;

    .line 552
    .line 553
    const-string v2, "<u"

    .line 554
    .line 555
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 556
    .line 557
    .line 558
    move-result-object v2

    .line 559
    iget-object v3, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 560
    .line 561
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v3

    .line 565
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 566
    .line 567
    .line 568
    move-result-object v2

    .line 569
    const-string v3, ", "

    .line 570
    .line 571
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 572
    .line 573
    .line 574
    move-result-object v2

    .line 575
    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 576
    .line 577
    check-cast p3, Ljava/lang/CharSequence;

    .line 578
    .line 579
    invoke-virtual {v2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 580
    .line 581
    .line 582
    move-result-object p3

    .line 583
    const-string v2, ">"

    .line 584
    .line 585
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 586
    .line 587
    .line 588
    goto :goto_a

    .line 589
    :cond_e
    :goto_b
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 590
    iget-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 591
    .line 592
    iget-object p1, p1, Lcom/android/server/companion/CompanionDeviceManagerService;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 593
    .line 594
    iget-object p3, p1, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    .line 595
    .line 596
    monitor-enter p3

    .line 597
    :try_start_2
    const-string v1, "System Data Transports: "

    .line 598
    .line 599
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 600
    .line 601
    .line 602
    iget-object v1, p1, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    .line 603
    .line 604
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 605
    .line 606
    .line 607
    move-result v1

    .line 608
    const/4 v2, 0x0

    .line 609
    if-nez v1, :cond_f

    .line 610
    .line 611
    const-string p1, "<empty>\n"

    .line 612
    .line 613
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 614
    .line 615
    .line 616
    goto :goto_d

    .line 617
    :catchall_2
    move-exception p0

    .line 618
    goto/16 :goto_12

    .line 619
    .line 620
    :cond_f
    const-string v1, "\n"

    .line 621
    .line 622
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 623
    .line 624
    .line 625
    move v1, v2

    .line 626
    :goto_c
    iget-object v3, p1, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    .line 627
    .line 628
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 629
    .line 630
    .line 631
    move-result v3

    .line 632
    if-ge v1, v3, :cond_10

    .line 633
    .line 634
    iget-object v3, p1, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    .line 635
    .line 636
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 637
    .line 638
    .line 639
    move-result v3

    .line 640
    iget-object v4, p1, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransports:Landroid/util/SparseArray;

    .line 641
    .line 642
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 643
    .line 644
    .line 645
    move-result-object v3

    .line 646
    check-cast v3, Lcom/android/server/companion/transport/Transport;

    .line 647
    .line 648
    const-string v4, "  "

    .line 649
    .line 650
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 651
    .line 652
    .line 653
    move-result-object v4

    .line 654
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 655
    .line 656
    .line 657
    move-result-object v3

    .line 658
    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 659
    .line 660
    .line 661
    move-result-object v3

    .line 662
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    .line 663
    .line 664
    .line 665
    add-int/lit8 v1, v1, 0x1

    .line 666
    .line 667
    goto :goto_c

    .line 668
    :cond_10
    :goto_d
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 669
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 670
    .line 671
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    .line 672
    .line 673
    iget-object p1, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->mLock:Ljava/lang/Object;

    .line 674
    .line 675
    monitor-enter p1

    .line 676
    :try_start_3
    const-string p3, "System Data Transfer Requests (Cached): "

    .line 677
    .line 678
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 679
    .line 680
    .line 681
    iget-object p3, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->mCachedPerUser:Landroid/util/SparseArray;

    .line 682
    .line 683
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    .line 684
    .line 685
    .line 686
    move-result p3

    .line 687
    if-nez p3, :cond_11

    .line 688
    .line 689
    const-string p0, "<empty>\n"

    .line 690
    .line 691
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 692
    .line 693
    .line 694
    goto :goto_10

    .line 695
    :catchall_3
    move-exception p0

    .line 696
    goto :goto_11

    .line 697
    :cond_11
    const-string p3, "\n"

    .line 698
    .line 699
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 700
    .line 701
    .line 702
    :goto_e
    iget-object p3, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->mCachedPerUser:Landroid/util/SparseArray;

    .line 703
    .line 704
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    .line 705
    .line 706
    .line 707
    move-result p3

    .line 708
    if-ge v2, p3, :cond_13

    .line 709
    .line 710
    iget-object p3, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->mCachedPerUser:Landroid/util/SparseArray;

    .line 711
    .line 712
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 713
    .line 714
    .line 715
    move-result p3

    .line 716
    iget-object v1, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->mCachedPerUser:Landroid/util/SparseArray;

    .line 717
    .line 718
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 719
    .line 720
    .line 721
    move-result-object v1

    .line 722
    check-cast v1, Ljava/util/ArrayList;

    .line 723
    .line 724
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 725
    .line 726
    .line 727
    move-result-object v1

    .line 728
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 729
    .line 730
    .line 731
    move-result v3

    .line 732
    if-eqz v3, :cond_12

    .line 733
    .line 734
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 735
    .line 736
    .line 737
    move-result-object v3

    .line 738
    check-cast v3, Landroid/companion/datatransfer/SystemDataTransferRequest;

    .line 739
    .line 740
    const-string v4, "  u"

    .line 741
    .line 742
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 743
    .line 744
    .line 745
    move-result-object v4

    .line 746
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 747
    .line 748
    .line 749
    move-result-object v5

    .line 750
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 751
    .line 752
    .line 753
    move-result-object v4

    .line 754
    const-string v5, " -> "

    .line 755
    .line 756
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 757
    .line 758
    .line 759
    move-result-object v4

    .line 760
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 761
    .line 762
    .line 763
    move-result-object v3

    .line 764
    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 765
    .line 766
    .line 767
    move-result-object v3

    .line 768
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    .line 769
    .line 770
    .line 771
    goto :goto_f

    .line 772
    :cond_12
    add-int/lit8 v2, v2, 0x1

    .line 773
    .line 774
    goto :goto_e

    .line 775
    :cond_13
    :goto_10
    monitor-exit p1

    .line 776
    return-void

    .line 777
    :goto_11
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 778
    throw p0

    .line 779
    :goto_12
    :try_start_4
    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 780
    throw p0

    .line 781
    :goto_13
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 782
    throw p0

    .line 783
    :goto_14
    :try_start_6
    monitor-exit p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 784
    throw p0
.end method

.method public final enablePermissionsSync(I)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    new-instance v1, Landroid/companion/datatransfer/PermissionSyncRequest;

    .line 24
    .line 25
    invoke-direct {v1, p1}, Landroid/companion/datatransfer/PermissionSyncRequest;-><init>(I)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    invoke-virtual {v1, p1}, Landroid/companion/datatransfer/PermissionSyncRequest;->setUserConsented(Z)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    .line 33
    .line 34
    invoke-virtual {p0, v0, v1}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->writeRequest(ILandroid/companion/datatransfer/SystemDataTransferRequest;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 39
    .line 40
    const-string p1, "Caller must be system UID"

    .line 41
    .line 42
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0
.end method

.method public final enableSecureTransport(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->enableSecureTransport_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mSecureTransportEnabled:Z

    .line 9
    .line 10
    return-void
.end method

.method public final enableSystemDataSync(II)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance v0, Landroid/companion/AssociationInfo$Builder;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Landroid/companion/AssociationInfo$Builder;-><init>(Landroid/companion/AssociationInfo;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getSystemDataSyncFlags()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    or-int/2addr p1, p2

    .line 21
    invoke-virtual {v0, p1}, Landroid/companion/AssociationInfo$Builder;->setSystemDataSyncFlags(I)Landroid/companion/AssociationInfo$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/server/companion/association/AssociationStore;->updateAssociation(Landroid/companion/AssociationInfo;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final getAllAssociationsForUser(I)Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->getAllAssociationsForUser_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0, p1}, Lcom/android/server/companion/utils/PermissionsUtils;->enforceCallerIsSystemOrCanInteractWithUserId(Landroid/content/Context;I)V

    .line 11
    .line 12
    .line 13
    const/4 v0, -0x1

    .line 14
    if-ne p1, v0, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociations()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_0
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByUser(I)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public final getAssociations(Ljava/lang/String;I)Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "get associations"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0, p1, v1}, Lcom/android/server/companion/utils/PermissionsUtils;->enforceCallerCanManageAssociationsForPackage(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 16
    .line 17
    invoke-virtual {p0, p2, p1}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public final getBackupPayload(I)[B
    .locals 2

    .line 1
    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mBackupRestoreProcessor:Lcom/android/server/companion/BackupRestoreProcessor;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/android/server/companion/BackupRestoreProcessor;->getBackupPayload(I)[B

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 19
    .line 20
    const-string p1, "Caller must be system"

    .line 21
    .line 22
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public final getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;
    .locals 2

    .line 1
    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 19
    .line 20
    const-string p1, "Caller must be system UID"

    .line 21
    .line 22
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public final handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .locals 10

    .line 1
    new-instance v9, Lcom/android/server/companion/CompanionDeviceShellCommand;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 6
    .line 7
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceManagerService;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 8
    .line 9
    iget-object v4, v1, Lcom/android/server/companion/CompanionDeviceManagerService;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 10
    .line 11
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceManagerService;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 12
    .line 13
    iget-object v6, v1, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    .line 14
    .line 15
    iget-object v7, v1, Lcom/android/server/companion/CompanionDeviceManagerService;->mBackupRestoreProcessor:Lcom/android/server/companion/BackupRestoreProcessor;

    .line 16
    .line 17
    iget-object v8, v1, Lcom/android/server/companion/CompanionDeviceManagerService;->mDisassociationProcessor:Lcom/android/server/companion/association/DisassociationProcessor;

    .line 18
    .line 19
    move-object v0, v9

    .line 20
    invoke-direct/range {v0 .. v8}, Lcom/android/server/companion/CompanionDeviceShellCommand;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;Lcom/android/server/companion/association/AssociationStore;Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;Lcom/android/server/companion/transport/CompanionTransportManager;Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;Lcom/android/server/companion/association/AssociationRequestsProcessor;Lcom/android/server/companion/BackupRestoreProcessor;Lcom/android/server/companion/association/DisassociationProcessor;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    move-object v1, p0

    .line 36
    move-object v5, p4

    .line 37
    invoke-virtual/range {v0 .. v5}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0
.end method

.method public final hasNotificationAccess(Landroid/content/ComponentName;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v1, v0}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->checkCanCallNotificationApi(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-class v0, Landroid/app/NotificationManager;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Landroid/app/NotificationManager;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->isNotificationListenerAccessGranted(Landroid/content/ComponentName;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    return p0
.end method

.method public final isCompanionApplicationBound(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    .line 4
    .line 5
    invoke-virtual {p0, p2, p1}, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->isCompanionApplicationBound(ILjava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final isDeviceAssociatedForWifiConnection(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->isDeviceAssociatedForWifiConnection_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "android.permission.COMPANION_APPROVE_WIFI_CONNECTIONS"

    .line 15
    .line 16
    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    return p0

    .line 24
    :cond_0
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 27
    .line 28
    invoke-virtual {p0, p3, p1}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    new-instance p1, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl$$ExternalSyntheticLambda1;

    .line 33
    .line 34
    invoke-direct {p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p0, p1}, Lcom/android/internal/util/CollectionUtils;->any(Ljava/util/List;Ljava/util/function/Predicate;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0
.end method

.method public final isPermissionTransferUserConsented(Ljava/lang/String;II)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 6
    .line 7
    invoke-virtual {p1, p3}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p3}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    :goto_0
    return p0
.end method

.method public final legacyDisassociate(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mDisassociationProcessor:Lcom/android/server/companion/association/DisassociationProcessor;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/companion/association/DisassociationProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 12
    .line 13
    invoke-virtual {v0, p3, p2, p1}, Lcom/android/server/companion/association/AssociationStore;->getFirstAssociationByAddress(ILjava/lang/String;Ljava/lang/String;)Landroid/companion/AssociationInfo;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getId()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-virtual {v0, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getId()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-virtual {p0, p1}, Lcom/android/server/companion/association/DisassociationProcessor;->disassociate(I)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 35
    .line 36
    const-string p2, "Association for mac address=["

    .line 37
    .line 38
    const-string p3, "] doesn\'t exist"

    .line 39
    .line 40
    invoke-static {p2, p1, p3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p0
.end method

.method public final legacyStartObservingDevicePresence(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->legacyStartObservingDevicePresence_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "Start observing device=["

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, "] for userId=["

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, "], package=["

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, "]..."

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v1, "CDM_DevicePresenceProcessor"

    .line 47
    .line 48
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-static {p3, v0, p2, v1}, Lcom/android/server/companion/utils/PermissionsUtils;->enforceCallerCanManageAssociationsForPackage(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 58
    .line 59
    invoke-virtual {v0, p3, p2, p1}, Lcom/android/server/companion/association/AssociationStore;->getFirstAssociationByAddress(ILjava/lang/String;Ljava/lang/String;)Landroid/companion/AssociationInfo;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    .line 65
    new-instance p1, Landroid/companion/ObservingDevicePresenceRequest$Builder;

    .line 66
    .line 67
    invoke-direct {p1}, Landroid/companion/ObservingDevicePresenceRequest$Builder;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getId()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    invoke-virtual {p1, v0}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->setAssociationId(I)Landroid/companion/ObservingDevicePresenceRequest$Builder;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->build()Landroid/companion/ObservingDevicePresenceRequest;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const/4 v0, 0x1

    .line 83
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->startObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;IZ)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    .line 88
    .line 89
    new-instance v0, Landroid/companion/DeviceNotAssociatedException;

    .line 90
    .line 91
    const-string v1, "App "

    .line 92
    .line 93
    const-string v2, " is not associated with device "

    .line 94
    .line 95
    const-string v3, " for user "

    .line 96
    .line 97
    invoke-static {v1, p2, v2, p1, v3}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-direct {v0, p1}, Landroid/companion/DeviceNotAssociatedException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-direct {p0, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/Throwable;)V

    .line 112
    .line 113
    .line 114
    throw p0
.end method

.method public final legacyStopObservingDevicePresence(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->legacyStopObservingDevicePresence_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "Stop observing device=["

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, "] for userId=["

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, "], package=["

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, "]..."

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v1, "CDM_DevicePresenceProcessor"

    .line 47
    .line 48
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-static {p3, v0, p2, v1}, Lcom/android/server/companion/utils/PermissionsUtils;->enforceCallerCanManageAssociationsForPackage(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 58
    .line 59
    invoke-virtual {v0, p3, p2, p1}, Lcom/android/server/companion/association/AssociationStore;->getFirstAssociationByAddress(ILjava/lang/String;Ljava/lang/String;)Landroid/companion/AssociationInfo;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    .line 65
    new-instance p1, Landroid/companion/ObservingDevicePresenceRequest$Builder;

    .line 66
    .line 67
    invoke-direct {p1}, Landroid/companion/ObservingDevicePresenceRequest$Builder;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getId()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    invoke-virtual {p1, v0}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->setAssociationId(I)Landroid/companion/ObservingDevicePresenceRequest$Builder;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->build()Landroid/companion/ObservingDevicePresenceRequest;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const/4 v0, 0x1

    .line 83
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->stopObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;IZ)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    .line 88
    .line 89
    new-instance v0, Landroid/companion/DeviceNotAssociatedException;

    .line 90
    .line 91
    const-string v1, "App "

    .line 92
    .line 93
    const-string v2, " is not associated with device "

    .line 94
    .line 95
    const-string v3, " for user "

    .line 96
    .line 97
    invoke-static {v1, p2, v2, p1, v3}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-direct {v0, p1}, Landroid/companion/DeviceNotAssociatedException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-direct {p0, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/Throwable;)V

    .line 112
    .line 113
    .line 114
    throw p0
.end method

.method public final notifySelfManagedDeviceAppeared(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->notifySelfManagedDeviceAppeared_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->notifySelfManagedDevicePresenceEvent(IZ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final notifySelfManagedDeviceDisappeared(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->notifySelfManagedDeviceDisappeared_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->notifySelfManagedDevicePresenceEvent(IZ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/companion/ICompanionDeviceManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2
    .line 3
    .line 4
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    return p0

    .line 6
    :catchall_0
    move-exception p0

    .line 7
    const-string p1, "CDM_CompanionDeviceManagerService"

    .line 8
    .line 9
    const-string p2, "Error during IPC"

    .line 10
    .line 11
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    .line 13
    .line 14
    const-class p1, Landroid/os/RemoteException;

    .line 15
    .line 16
    invoke-static {p0, p1}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/RuntimeException;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    throw p0
.end method

.method public final removeBond(ILjava/lang/String;I)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->removeBond_enforcePermission()V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "removeBond() associationId="

    .line 5
    .line 6
    .line 7
    const-string v1, ", package=u"

    .line 8
    .line 9
    const-string v2, "/"

    .line 10
    .line 11
    invoke-static {p1, p3, v0, v1, v2}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "CDM_CompanionDeviceManagerService"

    .line 16
    .line 17
    invoke-static {v0, p2, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string/jumbo v1, "remove bonds"

    .line 27
    .line 28
    .line 29
    invoke-static {p3, v0, p2, v1}, Lcom/android/server/companion/utils/PermissionsUtils;->enforceCallerCanManageAssociationsForPackage(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object p2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 33
    .line 34
    iget-object p2, p2, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 35
    .line 36
    invoke-virtual {p2, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    if-eqz p2, :cond_0

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const-class p1, Landroid/bluetooth/BluetoothManager;

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    check-cast p0, Landroid/bluetooth/BluetoothManager;

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p2}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    return p0

    .line 81
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 82
    .line 83
    const-string p2, "Association id=["

    .line 84
    .line 85
    const-string p3, "] doesn\'t have a device address."

    .line 86
    .line 87
    invoke-static {p1, p2, p3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p0
.end method

.method public final removeOnAssociationsChangedListener(Landroid/companion/IOnAssociationsChangedListener;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->removeOnAssociationsChangedListener_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0, p2}, Lcom/android/server/companion/utils/PermissionsUtils;->enforceCallerIsSystemOrCanInteractWithUserId(Landroid/content/Context;I)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 16
    .line 17
    iget-object p2, p0, Lcom/android/server/companion/association/AssociationStore;->mRemoteListeners:Landroid/os/RemoteCallbackList;

    .line 18
    .line 19
    monitor-enter p2

    .line 20
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/association/AssociationStore;->mRemoteListeners:Landroid/os/RemoteCallbackList;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 23
    .line 24
    .line 25
    monitor-exit p2

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method public final removeOnMessageReceivedListener(ILandroid/companion/IOnMessageReceivedListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->removeOnMessageReceivedListener_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mMessageListeners:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final removeOnTransportsChangedListener(Landroid/companion/IOnTransportsChangedListener;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->removeOnTransportsChangedListener_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransportsListeners:Landroid/os/RemoteCallbackList;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/transport/CompanionTransportManager;->mTransportsListeners:Landroid/os/RemoteCallbackList;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 14
    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
.end method

.method public final requestNotificationAccess(Landroid/content/ComponentName;I)Landroid/app/PendingIntent;
    .locals 7

    .line 1
    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v3

    .line 5
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {p0, p2, v2}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->checkCanCallNotificationApi(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/16 v1, 0x1f4

    .line 21
    .line 22
    if-gt v0, v1, :cond_0

    .line 23
    .line 24
    new-instance v6, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl$$ExternalSyntheticLambda0;

    .line 25
    .line 26
    move-object v0, v6

    .line 27
    move-object v1, p0

    .line 28
    move v4, p2

    .line 29
    move-object v5, p1

    .line 30
    invoke-direct/range {v0 .. v5}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;Ljava/lang/String;IILandroid/content/ComponentName;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v6}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Landroid/app/PendingIntent;

    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    const-string p1, "Component name is too long."

    .line 43
    .line 44
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p0
.end method

.method public final sendMessage(I[B[I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->sendMessage_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/transport/CompanionTransportManager;->sendMessage(I[B[I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setAssociationTag(ILjava/lang/String;)V
    .locals 3

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x400

    .line 8
    .line 9
    if-gt v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string p1, "Length of the tag must be at most1024 characters"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0

    .line 20
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v1, "Setting association tag=["

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, "] to id=["

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, "]..."

    .line 46
    .line 47
    const-string v2, "CDM_AssociationRequestsProcessor"

    .line 48
    .line 49
    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    new-instance v0, Landroid/companion/AssociationInfo$Builder;

    .line 59
    .line 60
    invoke-direct {v0, p1}, Landroid/companion/AssociationInfo$Builder;-><init>(Landroid/companion/AssociationInfo;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p2}, Landroid/companion/AssociationInfo$Builder;->setTag(Ljava/lang/String;)Landroid/companion/AssociationInfo$Builder;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/companion/association/AssociationStore;->updateAssociation(Landroid/companion/AssociationInfo;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final startObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->startObservingDevicePresence_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->startObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;IZ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final startSystemDataTransfer(Ljava/lang/String;IILandroid/companion/ISystemDataTransferCallback;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "Start system data transfer for package ["

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p1, "] userId ["

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, "] associationId ["

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p1, "]"

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string v0, "CDM_SystemDataTransferProcessor"

    .line 44
    .line 45
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 49
    .line 50
    invoke-virtual {p1, p3}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p3}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_0

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    new-instance p1, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda2;

    .line 67
    .line 68
    invoke-direct {p1, p0, p2, p3, p4}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;IILandroid/companion/ISystemDataTransferCallback;)V

    .line 69
    .line 70
    .line 71
    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    :goto_0
    const-string p0, "User "

    .line 76
    .line 77
    const-string p1, " hasn\'t consented permission sync for associationId ["

    .line 78
    .line 79
    const-string v1, "."

    .line 80
    .line 81
    invoke-static {p2, p3, p0, p1, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    :try_start_0
    invoke-interface {p4, p0}, Landroid/companion/ISystemDataTransferCallback;->onError(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    :catch_0
    :goto_1
    return-void
.end method

.method public final stopObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/companion/ICompanionDeviceManager$Stub;->stopObservingDevicePresence_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->stopObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;IZ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
