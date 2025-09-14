.class public final synthetic Lcom/android/server/autofill/Session$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method private final accept$com$android$server$autofill$Session$$ExternalSyntheticLambda1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 18

    .line 1
    move-object/from16 v2, p1

    .line 3
    check-cast v2, Lcom/android/server/autofill/Session;

    .line 5
    move-object/from16 v0, p2

    .line 7
    check-cast v0, Ljava/lang/Integer;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 12
    move-result v3

    .line 13
    move-object/from16 v0, p3

    .line 15
    check-cast v0, Ljava/lang/Integer;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 20
    move-result v4

    .line 21
    iget-object v1, v2, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 23
    monitor-enter v1

    .line 24
    :try_start_0
    const-string/jumbo v0, "logContextCommited(%s)"

    .line 27
    invoke-virtual {v2, v0}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    .line 30
    move-result-object v0

    .line 31
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 32
    if-nez v0, :cond_0

    .line 34
    const-string v0, "AutofillSession"

    .line 36
    const-string/jumbo v1, "handleLogContextCommitted(): last response is null"

    .line 39
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    goto/16 :goto_5

    .line 44
    :cond_0
    iget-object v1, v2, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 46
    iget-object v5, v1, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 48
    monitor-enter v5

    .line 49
    :try_start_1
    iget-object v1, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserData:Landroid/service/autofill/UserData;

    .line 51
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 52
    invoke-virtual {v0}, Landroid/service/autofill/FillResponse;->getUserData()Landroid/service/autofill/UserData;

    .line 55
    move-result-object v0

    .line 56
    const/4 v5, 0x0

    .line 57
    if-nez v0, :cond_1

    .line 59
    if-nez v1, :cond_1

    .line 61
    move-object v0, v5

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    if-eqz v0, :cond_2

    .line 65
    if-eqz v1, :cond_2

    .line 67
    new-instance v6, Landroid/service/autofill/CompositeUserData;

    .line 69
    invoke-direct {v6, v1, v0}, Landroid/service/autofill/CompositeUserData;-><init>(Landroid/service/autofill/UserData;Landroid/service/autofill/UserData;)V

    .line 72
    move-object v0, v6

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    if-eqz v0, :cond_3

    .line 76
    goto :goto_0

    .line 77
    :cond_3
    iget-object v0, v2, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 79
    iget-object v1, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 81
    monitor-enter v1

    .line 82
    :try_start_2
    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mUserData:Landroid/service/autofill/UserData;

    .line 84
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 85
    :goto_0
    iget-object v1, v2, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 87
    iget-object v11, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mFieldClassificationStrategy:Lcom/android/server/autofill/FieldClassificationStrategy;

    .line 89
    if-eqz v0, :cond_9

    .line 91
    if-eqz v11, :cond_9

    .line 93
    invoke-interface {v0}, Landroid/service/autofill/FieldClassificationUserData;->getValues()[Ljava/lang/String;

    .line 96
    move-result-object v12

    .line 97
    invoke-interface {v0}, Landroid/service/autofill/FieldClassificationUserData;->getCategoryIds()[Ljava/lang/String;

    .line 100
    move-result-object v13

    .line 101
    invoke-interface {v0}, Landroid/service/autofill/FieldClassificationUserData;->getFieldClassificationAlgorithm()Ljava/lang/String;

    .line 104
    move-result-object v14

    .line 105
    invoke-interface {v0}, Landroid/service/autofill/FieldClassificationUserData;->getDefaultFieldClassificationArgs()Landroid/os/Bundle;

    .line 108
    move-result-object v15

    .line 109
    invoke-interface {v0}, Landroid/service/autofill/FieldClassificationUserData;->getFieldClassificationAlgorithms()Landroid/util/ArrayMap;

    .line 112
    move-result-object v16

    .line 113
    invoke-interface {v0}, Landroid/service/autofill/FieldClassificationUserData;->getFieldClassificationArgs()Landroid/util/ArrayMap;

    .line 116
    move-result-object v0

    .line 117
    if-eqz v12, :cond_6

    .line 119
    if-eqz v13, :cond_6

    .line 121
    array-length v1, v12

    .line 122
    array-length v5, v13

    .line 123
    if-eq v1, v5, :cond_4

    .line 125
    goto/16 :goto_2

    .line 127
    :cond_4
    invoke-static {}, Landroid/service/autofill/UserData;->getMaxFieldClassificationIdsSize()I

    .line 130
    move-result v1

    .line 131
    new-instance v9, Ljava/util/ArrayList;

    .line 133
    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 136
    new-instance v10, Ljava/util/ArrayList;

    .line 138
    invoke-direct {v10, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 141
    iget-object v1, v2, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 143
    monitor-enter v1

    .line 144
    :try_start_3
    iget-object v5, v2, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 146
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 149
    move-result-object v5

    .line 150
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 151
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    .line 154
    move-result v6

    .line 155
    new-array v7, v6, [Landroid/view/autofill/AutofillId;

    .line 157
    new-instance v8, Ljava/util/ArrayList;

    .line 159
    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 162
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 165
    move-result-object v1

    .line 166
    const/4 v5, 0x0

    .line 167
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 170
    move-result v17

    .line 171
    if-eqz v17, :cond_5

    .line 173
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 176
    move-result-object v17

    .line 177
    move-object/from16 p0, v1

    .line 179
    move-object/from16 v1, v17

    .line 181
    check-cast v1, Lcom/android/server/autofill/ViewState;

    .line 183
    move-object/from16 p1, v0

    .line 185
    iget-object v0, v1, Lcom/android/server/autofill/ViewState;->mCurrentValue:Landroid/view/autofill/AutofillValue;

    .line 187
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    add-int/lit8 v0, v5, 0x1

    .line 192
    iget-object v1, v1, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 194
    aput-object v1, v7, v5

    .line 196
    move-object/from16 v1, p0

    .line 198
    move v5, v0

    .line 199
    move-object/from16 v0, p1

    .line 201
    goto :goto_1

    .line 202
    :cond_5
    move-object/from16 p1, v0

    .line 204
    new-instance v0, Landroid/os/RemoteCallback;

    .line 206
    new-instance v5, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;

    .line 208
    move-object v1, v5

    .line 209
    move-object/from16 p0, v15

    .line 211
    move-object v15, v5

    .line 212
    move v5, v6

    .line 213
    move-object v6, v7

    .line 214
    move-object v7, v12

    .line 215
    move-object/from16 v17, v8

    .line 217
    move-object v8, v13

    .line 218
    invoke-direct/range {v1 .. v10}, Lcom/android/server/autofill/LogFieldClassificationScoreOnResultListener;-><init>(Lcom/android/server/autofill/Session;III[Landroid/view/autofill/AutofillId;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 221
    invoke-direct {v0, v15}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 224
    move-object v6, v11

    .line 225
    move-object v7, v0

    .line 226
    move-object/from16 v8, v17

    .line 228
    move-object v9, v12

    .line 229
    move-object v10, v13

    .line 230
    move-object v11, v14

    .line 231
    move-object/from16 v12, p0

    .line 233
    move-object/from16 v13, v16

    .line 235
    move-object/from16 v14, p1

    .line 237
    invoke-virtual/range {v6 .. v14}, Lcom/android/server/autofill/FieldClassificationStrategy;->calculateScores(Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 240
    goto :goto_5

    .line 241
    :catchall_0
    move-exception v0

    .line 242
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 243
    throw v0

    .line 244
    :cond_6
    :goto_2
    const/4 v0, -0x1

    .line 245
    if-nez v12, :cond_7

    .line 247
    move v1, v0

    .line 248
    goto :goto_3

    .line 249
    :cond_7
    array-length v1, v12

    .line 250
    :goto_3
    if-nez v13, :cond_8

    .line 252
    goto :goto_4

    .line 253
    :cond_8
    array-length v0, v13

    .line 254
    :goto_4
    const-string v2, "AutofillSession"

    .line 256
    const-string/jumbo v3, "setScores(): user data mismatch: values.length = "

    .line 259
    const-string v4, ", ids.length = "

    .line 261
    invoke-static {v1, v0, v3, v4, v2}, Lcom/android/server/am/PendingIntentController$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    goto :goto_5

    .line 265
    :cond_9
    iget-object v6, v2, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 267
    monitor-enter v6

    .line 268
    :try_start_5
    invoke-virtual {v2, v5, v5, v3, v4}, Lcom/android/server/autofill/Session;->logContextCommittedLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 271
    monitor-exit v6

    .line 272
    :goto_5
    return-void

    .line 273
    :catchall_1
    move-exception v0

    .line 274
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 275
    throw v0

    .line 276
    :catchall_2
    move-exception v0

    .line 277
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 278
    throw v0

    .line 279
    :catchall_3
    move-exception v0

    .line 280
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 281
    throw v0

    .line 282
    :catchall_4
    move-exception v0

    .line 283
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 284
    throw v0
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    check-cast p1, Lcom/android/server/autofill/Session;

    .line 8
    check-cast p2, Landroid/content/IntentSender;

    .line 10
    check-cast p3, Landroid/content/Intent;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    :try_start_0
    iget-object p0, p1, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 17
    monitor-enter p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :try_start_1
    iget-object p1, p1, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 20
    invoke-interface {p1, p2, p3}, Landroid/view/autofill/IAutoFillManagerClient;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    .line 23
    monitor-exit p0

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    :try_start_2
    throw p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    const-string p1, "AutofillSession"

    .line 31
    const-string p2, "Error launching auth intent"

    .line 33
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    :goto_0
    return-void

    .line 37
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda1;->accept$com$android$server$autofill$Session$$ExternalSyntheticLambda1(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 40
    return-void

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
