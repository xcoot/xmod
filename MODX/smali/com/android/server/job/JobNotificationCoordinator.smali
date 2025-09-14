.class public final Lcom/android/server/job/JobNotificationCoordinator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCurrentAssociations:Landroid/util/ArrayMap;

.field public final mNotificationDetails:Landroid/util/ArrayMap;

.field public final mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

.field public final mUijLock:Ljava/lang/Object;

.field public final mUijNotificationChannels:Landroid/util/SparseArrayMap;

.field public final mUijNotifications:Landroid/util/SparseArrayMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/job/JobNotificationCoordinator;->mUijLock:Ljava/lang/Object;

    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/job/JobNotificationCoordinator;->mCurrentAssociations:Landroid/util/ArrayMap;

    .line 18
    new-instance v0, Landroid/util/ArrayMap;

    .line 20
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/server/job/JobNotificationCoordinator;->mNotificationDetails:Landroid/util/ArrayMap;

    .line 25
    new-instance v0, Landroid/util/SparseArrayMap;

    .line 27
    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/android/server/job/JobNotificationCoordinator;->mUijNotifications:Landroid/util/SparseArrayMap;

    .line 32
    new-instance v0, Landroid/util/SparseArrayMap;

    .line 34
    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/android/server/job/JobNotificationCoordinator;->mUijNotificationChannels:Landroid/util/SparseArrayMap;

    .line 39
    const-class v0, Lcom/android/server/notification/NotificationManagerInternal;

    .line 41
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/android/server/notification/NotificationManagerInternal;

    .line 47
    iput-object v0, p0, Lcom/android/server/job/JobNotificationCoordinator;->mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

    .line 49
    return-void
.end method


# virtual methods
.method public final enqueueNotification(Lcom/android/server/job/JobServiceContext;Ljava/lang/String;IIILandroid/app/Notification;I)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    move/from16 v10, p5

    .line 9
    move-object/from16 v11, p6

    .line 11
    move/from16 v9, p7

    .line 13
    if-eqz v11, :cond_e

    .line 15
    invoke-virtual/range {p6 .. p6}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    .line 18
    move-result-object v3

    .line 19
    if-eqz v3, :cond_d

    .line 21
    invoke-virtual/range {p6 .. p6}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    .line 24
    move-result-object v3

    .line 25
    iget-object v4, v0, Lcom/android/server/job/JobNotificationCoordinator;->mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

    .line 27
    check-cast v4, Lcom/android/server/notification/NotificationManagerService$18;

    .line 29
    move/from16 v12, p4

    .line 31
    invoke-virtual {v4, v12, v2, v3}, Lcom/android/server/notification/NotificationManagerService$18;->getNotificationChannel(ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    .line 34
    move-result-object v3

    .line 35
    if-eqz v3, :cond_c

    .line 37
    if-eqz v9, :cond_1

    .line 39
    const/4 v3, 0x1

    .line 40
    if-ne v9, v3, :cond_0

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 45
    const-string/jumbo v1, "invalid job end notification policy"

    .line 48
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    throw v0

    .line 52
    :cond_1
    :goto_0
    iget-object v3, v1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 54
    if-nez v3, :cond_2

    .line 56
    const-string v0, "JobNotificationCoordinator"

    .line 58
    const-string/jumbo v1, "enqueueNotification called with no running job"

    .line 61
    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void

    .line 65
    :cond_2
    iget-object v4, v0, Lcom/android/server/job/JobNotificationCoordinator;->mNotificationDetails:Landroid/util/ArrayMap;

    .line 67
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    move-result-object v4

    .line 71
    check-cast v4, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;

    .line 73
    if-nez v4, :cond_4

    .line 75
    iget-boolean v4, v3, Lcom/android/server/job/controllers/JobStatus;->startedAsUserInitiatedJob:Z

    .line 77
    if-eqz v4, :cond_3

    .line 79
    const-string/jumbo v4, "job_scheduler.value_cntr_w_uid_initial_set_notification_call_required"

    .line 82
    iget v5, v3, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 84
    invoke-static {v4, v5}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 87
    goto :goto_2

    .line 88
    :cond_3
    const-string/jumbo v4, "job_scheduler.value_cntr_w_uid_initial_set_notification_call_optional"

    .line 91
    iget v5, v3, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 93
    invoke-static {v4, v5}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 96
    goto :goto_2

    .line 97
    :cond_4
    iget-boolean v5, v3, Lcom/android/server/job/controllers/JobStatus;->startedAsUserInitiatedJob:Z

    .line 99
    if-eqz v5, :cond_5

    .line 101
    const-string/jumbo v5, "job_scheduler.value_cntr_w_uid_subsequent_set_notification_call_required"

    .line 104
    iget v6, v3, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 106
    invoke-static {v5, v6}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 109
    goto :goto_1

    .line 110
    :cond_5
    const-string/jumbo v5, "job_scheduler.value_cntr_w_uid_subsequent_set_notification_call_optional"

    .line 113
    iget v6, v3, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 115
    invoke-static {v5, v6}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 118
    :goto_1
    iget v4, v4, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->notificationId:I

    .line 120
    if-eq v4, v10, :cond_6

    .line 122
    const/4 v4, 0x0

    .line 123
    invoke-virtual {v0, v4, v1, v3}, Lcom/android/server/job/JobNotificationCoordinator;->removeNotificationAssociation(ILcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;)V

    .line 126
    const-string/jumbo v4, "job_scheduler.value_cntr_w_uid_set_notification_changed_notification_ids"

    .line 129
    iget v5, v3, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 131
    invoke-static {v4, v5}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 134
    :cond_6
    :goto_2
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 137
    move-result v13

    .line 138
    iget-boolean v3, v3, Lcom/android/server/job/controllers/JobStatus;->startedAsUserInitiatedJob:Z

    .line 140
    if-eqz v3, :cond_a

    .line 142
    iget v3, v11, Landroid/app/Notification;->flags:I

    .line 144
    const v4, 0x8000

    .line 147
    or-int/2addr v3, v4

    .line 148
    iput v3, v11, Landroid/app/Notification;->flags:I

    .line 150
    iget-object v3, v0, Lcom/android/server/job/JobNotificationCoordinator;->mUijLock:Ljava/lang/Object;

    .line 152
    monitor-enter v3

    .line 153
    :try_start_0
    iget-object v4, v0, Lcom/android/server/job/JobNotificationCoordinator;->mUijNotifications:Landroid/util/SparseArrayMap;

    .line 155
    invoke-virtual {v4, v13, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 158
    move-result-object v4

    .line 159
    if-nez v4, :cond_7

    .line 161
    iget-object v4, v0, Lcom/android/server/job/JobNotificationCoordinator;->mUijNotifications:Landroid/util/SparseArrayMap;

    .line 163
    new-instance v5, Landroid/util/IntArray;

    .line 165
    invoke-direct {v5}, Landroid/util/IntArray;-><init>()V

    .line 168
    invoke-virtual {v4, v13, v2, v5}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_7
    iget-object v4, v0, Lcom/android/server/job/JobNotificationCoordinator;->mUijNotificationChannels:Landroid/util/SparseArrayMap;

    .line 173
    invoke-virtual {v4, v13, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 176
    move-result-object v4

    .line 177
    if-nez v4, :cond_8

    .line 179
    iget-object v4, v0, Lcom/android/server/job/JobNotificationCoordinator;->mUijNotificationChannels:Landroid/util/SparseArrayMap;

    .line 181
    new-instance v5, Landroid/util/ArraySet;

    .line 183
    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 186
    invoke-virtual {v4, v13, v2, v5}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_8
    iget-object v4, v0, Lcom/android/server/job/JobNotificationCoordinator;->mUijNotifications:Landroid/util/SparseArrayMap;

    .line 191
    invoke-virtual {v4, v13, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 194
    move-result-object v4

    .line 195
    check-cast v4, Landroid/util/IntArray;

    .line 197
    invoke-virtual {v4, v10}, Landroid/util/IntArray;->indexOf(I)I

    .line 200
    move-result v5

    .line 201
    const/4 v6, -0x1

    .line 202
    if-ne v5, v6, :cond_9

    .line 204
    invoke-virtual {v4, v10}, Landroid/util/IntArray;->add(I)V

    .line 207
    goto :goto_3

    .line 208
    :catchall_0
    move-exception v0

    .line 209
    goto :goto_4

    .line 210
    :cond_9
    :goto_3
    iget-object v4, v0, Lcom/android/server/job/JobNotificationCoordinator;->mUijNotificationChannels:Landroid/util/SparseArrayMap;

    .line 212
    invoke-virtual {v4, v13, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 215
    move-result-object v4

    .line 216
    check-cast v4, Landroid/util/ArraySet;

    .line 218
    invoke-virtual/range {p6 .. p6}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    .line 221
    move-result-object v5

    .line 222
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 225
    monitor-exit v3

    .line 226
    goto :goto_5

    .line 227
    :goto_4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    throw v0

    .line 229
    :cond_a
    :goto_5
    invoke-static {v13, v2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 232
    move-result-object v14

    .line 233
    new-instance v15, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;

    .line 235
    invoke-virtual/range {p6 .. p6}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    .line 238
    move-result-object v8

    .line 239
    move-object v3, v15

    .line 240
    move-object v4, v14

    .line 241
    move/from16 v5, p3

    .line 243
    move/from16 v6, p4

    .line 245
    move/from16 v7, p5

    .line 247
    move/from16 v9, p7

    .line 249
    invoke-direct/range {v3 .. v9}, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;-><init>(Landroid/content/pm/UserPackage;IIILjava/lang/String;I)V

    .line 252
    iget-object v3, v0, Lcom/android/server/job/JobNotificationCoordinator;->mCurrentAssociations:Landroid/util/ArrayMap;

    .line 254
    invoke-virtual {v3, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    move-result-object v3

    .line 258
    check-cast v3, Landroid/util/SparseSetArray;

    .line 260
    if-nez v3, :cond_b

    .line 262
    new-instance v3, Landroid/util/SparseSetArray;

    .line 264
    invoke-direct {v3}, Landroid/util/SparseSetArray;-><init>()V

    .line 267
    iget-object v4, v0, Lcom/android/server/job/JobNotificationCoordinator;->mCurrentAssociations:Landroid/util/ArrayMap;

    .line 269
    invoke-virtual {v4, v14, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    :cond_b
    invoke-virtual {v3, v10, v1}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 275
    iget-object v3, v0, Lcom/android/server/job/JobNotificationCoordinator;->mNotificationDetails:Landroid/util/ArrayMap;

    .line 277
    invoke-virtual {v3, v1, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object v0, v0, Lcom/android/server/job/JobNotificationCoordinator;->mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

    .line 282
    check-cast v0, Lcom/android/server/notification/NotificationManagerService$18;

    .line 284
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$18;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 286
    const/4 v5, 0x0

    .line 287
    const/4 v9, 0x0

    .line 288
    const/4 v14, 0x0

    .line 289
    move-object/from16 v1, p2

    .line 291
    move-object/from16 v2, p2

    .line 293
    move/from16 v3, p4

    .line 295
    move/from16 v4, p3

    .line 297
    move/from16 v6, p5

    .line 299
    move-object/from16 v7, p6

    .line 301
    move v8, v13

    .line 302
    move v10, v14

    .line 303
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/notification/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;IZZ)V

    .line 306
    return-void

    .line 307
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 309
    const-string/jumbo v1, "invalid notification channel"

    .line 312
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 315
    throw v0

    .line 316
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 318
    const-string/jumbo v1, "small icon required"

    .line 321
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 324
    throw v0

    .line 325
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    .line 327
    const-string/jumbo v1, "notification"

    .line 330
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 333
    throw v0
.end method

.method public final isNotificationUsedForAnyUij(IILjava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p1, p3}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/server/job/JobNotificationCoordinator;->mCurrentAssociations:Landroid/util/ArrayMap;

    .line 7
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroid/util/SparseSetArray;

    .line 13
    const/4 p1, 0x0

    .line 14
    if-nez p0, :cond_0

    .line 16
    return p1

    .line 17
    :cond_0
    invoke-virtual {p0, p2}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    .line 20
    move-result-object p0

    .line 21
    if-nez p0, :cond_1

    .line 23
    return p1

    .line 24
    :cond_1
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    .line 27
    move-result p2

    .line 28
    const/4 p3, 0x1

    .line 29
    sub-int/2addr p2, p3

    .line 30
    :goto_0
    if-ltz p2, :cond_3

    .line 32
    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/android/server/job/JobServiceContext;

    .line 38
    iget-object v0, v0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 40
    if-eqz v0, :cond_2

    .line 42
    iget-boolean v0, v0, Lcom/android/server/job/controllers/JobStatus;->startedAsUserInitiatedJob:Z

    .line 44
    if-eqz v0, :cond_2

    .line 46
    return p3

    .line 47
    :cond_2
    add-int/lit8 p2, p2, -0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_3
    return p1
.end method

.method public final removeNotificationAssociation(ILcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    move-object/from16 v3, p3

    .line 9
    iget-object v4, v0, Lcom/android/server/job/JobNotificationCoordinator;->mNotificationDetails:Landroid/util/ArrayMap;

    .line 11
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;

    .line 17
    if-nez v4, :cond_0

    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v5, v0, Lcom/android/server/job/JobNotificationCoordinator;->mCurrentAssociations:Landroid/util/ArrayMap;

    .line 22
    iget-object v6, v4, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->userPackage:Landroid/content/pm/UserPackage;

    .line 24
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object v5

    .line 28
    check-cast v5, Landroid/util/SparseSetArray;

    .line 30
    if-eqz v5, :cond_e

    .line 32
    iget v6, v4, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->notificationId:I

    .line 34
    invoke-virtual {v5, v6, v2}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    .line 37
    move-result v2

    .line 38
    if-nez v2, :cond_1

    .line 40
    goto/16 :goto_a

    .line 42
    :cond_1
    iget v2, v4, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->appUid:I

    .line 44
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 47
    move-result v2

    .line 48
    iget-object v6, v4, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->userPackage:Landroid/content/pm/UserPackage;

    .line 50
    iget-object v15, v6, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 52
    iget v14, v4, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->notificationId:I

    .line 54
    invoke-virtual {v5, v14}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    .line 57
    move-result-object v5

    .line 58
    const/4 v13, 0x1

    .line 59
    if-eqz v5, :cond_4

    .line 61
    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    .line 64
    move-result v5

    .line 65
    if-eqz v5, :cond_2

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {v0, v2, v14, v15}, Lcom/android/server/job/JobNotificationCoordinator;->isNotificationUsedForAnyUij(IILjava/lang/String;)Z

    .line 71
    move-result v1

    .line 72
    xor-int/2addr v1, v13

    .line 73
    move v13, v1

    .line 74
    :cond_3
    move v1, v14

    .line 75
    goto :goto_2

    .line 76
    :cond_4
    :goto_0
    iget v5, v4, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->jobEndNotificationPolicy:I

    .line 78
    if-eq v5, v13, :cond_5

    .line 80
    const/16 v5, 0xb

    .line 82
    if-eq v1, v5, :cond_5

    .line 84
    const/16 v5, 0xd

    .line 86
    if-ne v1, v5, :cond_3

    .line 88
    :cond_5
    iget-object v1, v0, Lcom/android/server/job/JobNotificationCoordinator;->mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

    .line 90
    iget v9, v4, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->appUid:I

    .line 92
    iget v10, v4, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->appPid:I

    .line 94
    check-cast v1, Lcom/android/server/notification/NotificationManagerService$18;

    .line 96
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$18;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 98
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->isCallingUidSystem()Z

    .line 104
    move-result v5

    .line 105
    const/16 v16, 0x0

    .line 107
    if-eqz v5, :cond_6

    .line 109
    move/from16 v5, v16

    .line 111
    goto :goto_1

    .line 112
    :cond_6
    const v5, 0x8440

    .line 115
    :goto_1
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$18;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 117
    const/4 v11, 0x0

    .line 118
    move-object v7, v15

    .line 119
    move-object v8, v15

    .line 120
    move v12, v14

    .line 121
    move v1, v13

    .line 122
    move v13, v2

    .line 123
    move v1, v14

    .line 124
    move v14, v5

    .line 125
    invoke-virtual/range {v6 .. v14}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;III)V

    .line 128
    move/from16 v13, v16

    .line 130
    :goto_2
    if-eqz v13, :cond_7

    .line 132
    iget-object v5, v0, Lcom/android/server/job/JobNotificationCoordinator;->mNotificationManagerInternal:Lcom/android/server/notification/NotificationManagerInternal;

    .line 134
    check-cast v5, Lcom/android/server/notification/NotificationManagerService$18;

    .line 136
    invoke-virtual {v5, v1, v2, v15}, Lcom/android/server/notification/NotificationManagerService$18;->removeUserInitiatedJobFlagFromNotification(IILjava/lang/String;)V

    .line 139
    :cond_7
    if-eqz v3, :cond_d

    .line 141
    iget-boolean v3, v3, Lcom/android/server/job/controllers/JobStatus;->startedAsUserInitiatedJob:Z

    .line 143
    if-eqz v3, :cond_d

    .line 145
    invoke-virtual {v0, v2, v1, v15}, Lcom/android/server/job/JobNotificationCoordinator;->isNotificationUsedForAnyUij(IILjava/lang/String;)Z

    .line 148
    move-result v3

    .line 149
    if-eqz v3, :cond_8

    .line 151
    goto :goto_4

    .line 152
    :cond_8
    iget-object v3, v0, Lcom/android/server/job/JobNotificationCoordinator;->mUijLock:Ljava/lang/Object;

    .line 154
    monitor-enter v3

    .line 155
    :try_start_0
    iget-object v5, v0, Lcom/android/server/job/JobNotificationCoordinator;->mUijNotifications:Landroid/util/SparseArrayMap;

    .line 157
    invoke-virtual {v5, v2, v15}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 160
    move-result-object v5

    .line 161
    check-cast v5, Landroid/util/IntArray;

    .line 163
    if-eqz v5, :cond_9

    .line 165
    invoke-virtual {v5, v1}, Landroid/util/IntArray;->indexOf(I)I

    .line 168
    move-result v1

    .line 169
    invoke-virtual {v5, v1}, Landroid/util/IntArray;->remove(I)V

    .line 172
    invoke-virtual {v5}, Landroid/util/IntArray;->size()I

    .line 175
    move-result v1

    .line 176
    if-nez v1, :cond_9

    .line 178
    iget-object v1, v0, Lcom/android/server/job/JobNotificationCoordinator;->mUijNotifications:Landroid/util/SparseArrayMap;

    .line 180
    invoke-virtual {v1, v2, v15}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 183
    goto :goto_3

    .line 184
    :catchall_0
    move-exception v0

    .line 185
    goto :goto_8

    .line 186
    :cond_9
    :goto_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :goto_4
    iget-object v1, v4, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->notificationChannel:Ljava/lang/String;

    .line 189
    iget-object v3, v0, Lcom/android/server/job/JobNotificationCoordinator;->mNotificationDetails:Landroid/util/ArrayMap;

    .line 191
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 194
    move-result v3

    .line 195
    const/4 v4, 0x1

    .line 196
    sub-int/2addr v3, v4

    .line 197
    :goto_5
    if-ltz v3, :cond_b

    .line 199
    iget-object v4, v0, Lcom/android/server/job/JobNotificationCoordinator;->mNotificationDetails:Landroid/util/ArrayMap;

    .line 201
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 204
    move-result-object v4

    .line 205
    check-cast v4, Lcom/android/server/job/JobServiceContext;

    .line 207
    iget-object v5, v0, Lcom/android/server/job/JobNotificationCoordinator;->mNotificationDetails:Landroid/util/ArrayMap;

    .line 209
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    move-result-object v5

    .line 213
    check-cast v5, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;

    .line 215
    if-eqz v5, :cond_a

    .line 217
    iget v6, v5, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->appUid:I

    .line 219
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    .line 222
    move-result v6

    .line 223
    if-ne v6, v2, :cond_a

    .line 225
    iget-object v6, v5, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->userPackage:Landroid/content/pm/UserPackage;

    .line 227
    iget-object v6, v6, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    .line 229
    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    move-result v6

    .line 233
    if-eqz v6, :cond_a

    .line 235
    iget-object v5, v5, Lcom/android/server/job/JobNotificationCoordinator$NotificationDetails;->notificationChannel:Ljava/lang/String;

    .line 237
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 240
    move-result v5

    .line 241
    if-eqz v5, :cond_a

    .line 243
    iget-object v4, v4, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 245
    if-eqz v4, :cond_a

    .line 247
    iget-boolean v4, v4, Lcom/android/server/job/controllers/JobStatus;->startedAsUserInitiatedJob:Z

    .line 249
    if-eqz v4, :cond_a

    .line 251
    goto :goto_9

    .line 252
    :cond_a
    add-int/lit8 v3, v3, -0x1

    .line 254
    goto :goto_5

    .line 255
    :cond_b
    iget-object v4, v0, Lcom/android/server/job/JobNotificationCoordinator;->mUijLock:Ljava/lang/Object;

    .line 257
    monitor-enter v4

    .line 258
    :try_start_1
    iget-object v3, v0, Lcom/android/server/job/JobNotificationCoordinator;->mUijNotificationChannels:Landroid/util/SparseArrayMap;

    .line 260
    invoke-virtual {v3, v2, v15}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 263
    move-result-object v3

    .line 264
    check-cast v3, Landroid/util/ArraySet;

    .line 266
    if-eqz v3, :cond_c

    .line 268
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 271
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    .line 274
    move-result v1

    .line 275
    if-eqz v1, :cond_c

    .line 277
    iget-object v0, v0, Lcom/android/server/job/JobNotificationCoordinator;->mUijNotificationChannels:Landroid/util/SparseArrayMap;

    .line 279
    invoke-virtual {v0, v2, v15}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 282
    goto :goto_6

    .line 283
    :catchall_1
    move-exception v0

    .line 284
    goto :goto_7

    .line 285
    :cond_c
    :goto_6
    monitor-exit v4

    .line 286
    goto :goto_9

    .line 287
    :goto_7
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 288
    throw v0

    .line 289
    :goto_8
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 290
    throw v0

    .line 291
    :cond_d
    :goto_9
    return-void

    .line 292
    :cond_e
    :goto_a
    const-string v0, "JobNotificationCoordinator"

    .line 294
    const-string v1, "Association data structures not in sync"

    .line 296
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return-void
.end method
