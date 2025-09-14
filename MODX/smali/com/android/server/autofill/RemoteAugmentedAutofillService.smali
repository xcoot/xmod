.class final Lcom/android/server/autofill/RemoteAugmentedAutofillService;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field private final mCallbacks:Lcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mIdleUnbindTimeoutMs:I

.field private final mRequestTimeoutMs:I

.field private final mUriGrantsManager:Lcom/android/server/autofill/AutofillUriGrantsManager;


# direct methods
.method public static $r8$lambda$IXYPMbjPeMt7KfClcttRpU_yFvU(Lcom/android/server/autofill/RemoteAugmentedAutofillService;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/ComponentName;ILjava/lang/Throwable;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    instance-of v0, p4, Ljava/util/concurrent/CancellationException;

    .line 6
    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/os/ICancellationSignal;

    .line 14
    if-nez p0, :cond_0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 20
    move-result-object p1

    .line 21
    new-instance p2, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda4;

    .line 23
    invoke-direct {p2, p0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda4;-><init>(Landroid/os/ICancellationSignal;)V

    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    instance-of v0, p4, Ljava/util/concurrent/TimeoutException;

    .line 32
    const-string v1, "RemoteAugmentedAutofillService"

    .line 34
    if-eqz v0, :cond_3

    .line 36
    new-instance p4, Ljava/lang/StringBuilder;

    .line 38
    const-string v0, "PendingAutofillRequest timed out ("

    .line 40
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    iget v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mRequestTimeoutMs:I

    .line 45
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    const-string/jumbo v0, "ms) for "

    .line 51
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p4

    .line 61
    invoke-static {v1, p4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Landroid/os/ICancellationSignal;

    .line 70
    if-nez p1, :cond_2

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 76
    move-result-object p4

    .line 77
    new-instance v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda4;

    .line 79
    invoke-direct {v0, p1}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda4;-><init>(Landroid/os/ICancellationSignal;)V

    .line 82
    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    :goto_0
    iget-object p1, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mComponentName:Landroid/content/ComponentName;

    .line 87
    if-eqz p1, :cond_4

    .line 89
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 92
    move-result-object v1

    .line 93
    iget p0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mRequestTimeoutMs:I

    .line 95
    int-to-long v4, p0

    .line 96
    const/16 v0, 0xf

    .line 98
    move-object v2, p2

    .line 99
    move v3, p3

    .line 100
    invoke-static/range {v0 .. v5}, Landroid/service/autofill/augmented/Helper;->logResponse(ILjava/lang/String;Landroid/content/ComponentName;IJ)V

    .line 103
    goto :goto_1

    .line 104
    :cond_3
    if-eqz p4, :cond_4

    .line 106
    new-instance p0, Ljava/lang/StringBuilder;

    .line 108
    const-string/jumbo p1, "exception handling getAugmentedAutofillClient() for "

    .line 111
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    const-string p1, ": "

    .line 119
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object p0

    .line 126
    invoke-static {v1, p0, p4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    :cond_4
    :goto_1
    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCallbacks(Lcom/android/server/autofill/RemoteAugmentedAutofillService;)Lcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mCallbacks:Lcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;

    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUriGrantsManager(Lcom/android/server/autofill/RemoteAugmentedAutofillService;)Lcom/android/server/autofill/AutofillUriGrantsManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mUriGrantsManager:Lcom/android/server/autofill/AutofillUriGrantsManager;

    .line 3
    return-object p0
.end method

.method public static -$$Nest$mmaybeRequestShowInlineSuggestions(Lcom/android/server/autofill/RemoteAugmentedAutofillService;ILandroid/view/inputmethod/InlineSuggestionsRequest;Ljava/util/List;Landroid/os/Bundle;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Ljava/util/function/Function;Landroid/view/autofill/IAutoFillManagerClient;Ljava/lang/Runnable;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;ILandroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v12, p1

    .line 5
    move-object/from16 v13, p3

    .line 7
    move-object/from16 v14, p7

    .line 9
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    if-eqz v13, :cond_4

    .line 14
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_4

    .line 20
    if-eqz v14, :cond_4

    .line 22
    if-eqz p2, :cond_4

    .line 24
    if-nez p10, :cond_0

    .line 26
    goto/16 :goto_2

    .line 28
    :cond_0
    iget-object v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mCallbacks:Lcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;

    .line 30
    check-cast v1, Lcom/android/server/autofill/AutofillManagerServiceImpl$1;

    .line 32
    iget-object v1, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl$1;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 34
    iget-object v2, v1, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 36
    monitor-enter v2

    .line 37
    :try_start_0
    new-instance v3, Landroid/service/autofill/FillEventHistory;

    .line 39
    const/4 v4, 0x0

    .line 40
    invoke-direct {v3, v12, v4}, Landroid/service/autofill/FillEventHistory;-><init>(ILandroid/os/Bundle;)V

    .line 43
    iput-object v3, v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAugmentedAutofillEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 45
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 46
    if-eqz p6, :cond_1

    .line 48
    invoke-virtual/range {p6 .. p6}, Landroid/view/autofill/AutofillValue;->isText()Z

    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_1

    .line 54
    invoke-virtual/range {p6 .. p6}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    .line 57
    move-result-object v1

    .line 58
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 61
    move-result-object v1

    .line 62
    move-object v4, v1

    .line 63
    :cond_1
    new-instance v15, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;

    .line 65
    move-object v1, v15

    .line 66
    move-object/from16 v2, p2

    .line 68
    move-object/from16 v3, p5

    .line 70
    move-object/from16 v5, p10

    .line 72
    move/from16 v6, p11

    .line 74
    move/from16 v7, p1

    .line 76
    invoke-direct/range {v1 .. v7}, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;-><init>(Landroid/view/inputmethod/InlineSuggestionsRequest;Landroid/view/autofill/AutofillId;Ljava/lang/String;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;II)V

    .line 79
    new-instance v11, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;

    .line 81
    move-object v1, v11

    .line 82
    move-object/from16 v2, p0

    .line 84
    move/from16 v3, p1

    .line 86
    move-object/from16 v4, p4

    .line 88
    move-object/from16 v5, p8

    .line 90
    move-object/from16 v6, p7

    .line 92
    move-object/from16 v7, p5

    .line 94
    move-object/from16 v8, p12

    .line 96
    move-object/from16 v9, p13

    .line 98
    move/from16 v10, p11

    .line 100
    move-object v12, v11

    .line 101
    move-object/from16 v11, p9

    .line 103
    invoke-direct/range {v1 .. v11}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;-><init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService;ILandroid/os/Bundle;Landroid/view/autofill/IAutoFillManagerClient;Ljava/util/function/Function;Landroid/view/autofill/AutofillId;Landroid/content/ComponentName;Landroid/os/IBinder;ILjava/lang/Runnable;)V

    .line 106
    const-string v1, "android:platform"

    .line 108
    const/4 v2, 0x0

    .line 109
    invoke-static {v15, v1, v13, v12, v2}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->createInlineSuggestions(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Ljava/lang/String;Ljava/util/List;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;Z)Landroid/util/SparseArray;

    .line 112
    move-result-object v1

    .line 113
    new-instance v2, Lcom/android/server/autofill/ui/InlineFillUi;

    .line 115
    invoke-direct {v2, v15, v1}, Lcom/android/server/autofill/ui/InlineFillUi;-><init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/util/SparseArray;)V

    .line 118
    invoke-interface {v14, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    move-result-object v1

    .line 122
    check-cast v1, Ljava/lang/Boolean;

    .line 124
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_5

    .line 130
    iget-object v0, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mCallbacks:Lcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;

    .line 132
    check-cast v0, Lcom/android/server/autofill/AutofillManagerServiceImpl$1;

    .line 134
    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl$1;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 136
    iget-object v1, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 138
    monitor-enter v1

    .line 139
    :try_start_1
    iget-object v2, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAugmentedAutofillEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 141
    if-eqz v2, :cond_3

    .line 143
    invoke-virtual {v2}, Landroid/service/autofill/FillEventHistory;->getSessionId()I

    .line 146
    move-result v2

    .line 147
    move/from16 v3, p1

    .line 149
    if-eq v2, v3, :cond_2

    .line 151
    goto :goto_0

    .line 152
    :cond_2
    iget-object v0, v0, Lcom/android/server/autofill/AutofillManagerServiceImpl;->mAugmentedAutofillEventHistory:Landroid/service/autofill/FillEventHistory;

    .line 154
    new-instance v15, Landroid/service/autofill/FillEventHistory$Event;

    .line 156
    const/4 v8, 0x0

    .line 157
    const/4 v9, 0x0

    .line 158
    const/4 v10, 0x0

    .line 159
    const/4 v11, 0x0

    .line 160
    const/4 v12, 0x0

    .line 161
    const/4 v13, 0x0

    .line 162
    const/4 v14, 0x0

    .line 163
    const/16 v16, 0x2

    .line 165
    const/4 v3, 0x5

    .line 166
    const/4 v4, 0x0

    .line 167
    const/4 v6, 0x0

    .line 168
    const/4 v7, 0x0

    .line 169
    move-object v2, v15

    .line 170
    move-object/from16 v5, p4

    .line 172
    move-object/from16 v17, v15

    .line 174
    move/from16 v15, v16

    .line 176
    invoke-direct/range {v2 .. v15}, Landroid/service/autofill/FillEventHistory$Event;-><init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;II)V

    .line 179
    move-object/from16 v2, v17

    .line 181
    invoke-virtual {v0, v2}, Landroid/service/autofill/FillEventHistory;->addEvent(Landroid/service/autofill/FillEventHistory$Event;)V

    .line 184
    monitor-exit v1

    .line 185
    goto :goto_3

    .line 186
    :catchall_0
    move-exception v0

    .line 187
    goto :goto_1

    .line 188
    :cond_3
    :goto_0
    monitor-exit v1

    .line 189
    goto :goto_3

    .line 190
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    throw v0

    .line 192
    :catchall_1
    move-exception v0

    .line 193
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 194
    throw v0

    .line 195
    :cond_4
    :goto_2
    if-eqz v14, :cond_5

    .line 197
    if-eqz p2, :cond_5

    .line 199
    new-instance v0, Lcom/android/server/autofill/ui/InlineFillUi;

    .line 201
    move-object/from16 v1, p5

    .line 203
    invoke-direct {v0, v1}, Lcom/android/server/autofill/ui/InlineFillUi;-><init>(Landroid/view/autofill/AutofillId;)V

    .line 206
    invoke-interface {v14, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_5
    :goto_3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/content/ComponentName;ILcom/android/server/autofill/AutofillManagerServiceImpl$1;ZII)V
    .locals 8

    .line 1
    move-object v6, p0

    .line 2
    move-object v7, p3

    .line 3
    new-instance v0, Landroid/content/Intent;

    .line 5
    const-string v1, "android.service.autofill.augmented.AugmentedAutofillService"

    .line 7
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 13
    move-result-object v2

    .line 14
    if-eqz p6, :cond_0

    .line 16
    const/high16 v0, 0x400000

    .line 18
    :goto_0
    move v3, v0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    goto :goto_0

    .line 22
    :goto_1
    new-instance v5, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda0;

    .line 24
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 27
    move-object v0, p0

    .line 28
    move-object v1, p1

    .line 29
    move v4, p4

    .line 30
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 33
    move v0, p7

    .line 34
    iput v0, v6, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mIdleUnbindTimeoutMs:I

    .line 36
    move/from16 v0, p8

    .line 38
    iput v0, v6, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mRequestTimeoutMs:I

    .line 40
    iput-object v7, v6, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mComponentName:Landroid/content/ComponentName;

    .line 42
    move-object v0, p5

    .line 43
    iput-object v0, v6, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mCallbacks:Lcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;

    .line 45
    new-instance v0, Lcom/android/server/autofill/AutofillUriGrantsManager;

    .line 47
    move v1, p2

    .line 48
    invoke-direct {v0, p2}, Lcom/android/server/autofill/AutofillUriGrantsManager;-><init>(I)V

    .line 51
    iput-object v0, v6, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mUriGrantsManager:Lcom/android/server/autofill/AutofillUriGrantsManager;

    .line 53
    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->connect()Lcom/android/internal/infra/AndroidFuture;

    .line 56
    return-void
.end method


# virtual methods
.method public final getAutoDisconnectTimeoutMs()J
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mIdleUnbindTimeoutMs:I

    .line 3
    int-to-long v0, p0

    .line 4
    return-wide v0
.end method

.method public final getAutofillUriGrantsManager()Lcom/android/server/autofill/AutofillUriGrantsManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mUriGrantsManager:Lcom/android/server/autofill/AutofillUriGrantsManager;

    .line 3
    return-object p0
.end method

.method public final getComponentName()Landroid/content/ComponentName;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mComponentName:Landroid/content/ComponentName;

    .line 3
    return-object p0
.end method

.method public final onRequestAutofillLocked(ILandroid/view/autofill/IAutoFillManagerClient;ILandroid/content/ComponentName;Landroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionsResponseCallback;Lcom/android/server/autofill/Session$AugmentedAutofillErrorCallback;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;I)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p0

    .line 5
    move/from16 v3, p1

    .line 7
    move-object/from16 v2, p2

    .line 9
    move/from16 v4, p3

    .line 11
    move-object/from16 v5, p4

    .line 13
    move-object/from16 v15, p5

    .line 15
    move-object/from16 v6, p6

    .line 17
    move-object/from16 v7, p7

    .line 19
    move-object/from16 v10, p8

    .line 21
    move-object/from16 v11, p9

    .line 23
    move-object/from16 v12, p10

    .line 25
    move-object/from16 v13, p11

    .line 27
    move/from16 v14, p12

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 32
    move-result-wide v8

    .line 33
    move-object/from16 v17, v1

    .line 35
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 37
    move-object/from16 v16, v1

    .line 39
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 42
    move-object/from16 p2, v1

    .line 44
    new-instance v1, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;

    .line 46
    move-object v0, v1

    .line 47
    move-object/from16 v18, p2

    .line 49
    move-object/from16 v19, v1

    .line 51
    move-object/from16 v1, v17

    .line 53
    invoke-direct/range {v0 .. v16}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService;Landroid/view/autofill/IAutoFillManagerClient;IILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/server/autofill/Session$AugmentedAutofillInlineSuggestionsResponseCallback;Lcom/android/server/autofill/Session$AugmentedAutofillErrorCallback;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;ILandroid/os/IBinder;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 56
    move-object/from16 v0, p0

    .line 58
    move-object/from16 v1, v19

    .line 60
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    .line 63
    move-result-object v1

    .line 64
    iget v2, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mRequestTimeoutMs:I

    .line 66
    int-to-long v2, v2

    .line 67
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 69
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    .line 72
    move-result-object v1

    .line 73
    new-instance v2, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda3;

    .line 75
    move/from16 v3, p1

    .line 77
    move-object/from16 v4, p4

    .line 79
    move-object/from16 v5, v18

    .line 81
    invoke-direct {v2, v0, v5, v4, v3}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/ComponentName;I)V

    .line 84
    invoke-virtual {v1, v2}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    .line 87
    return-void
.end method

.method public final onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .locals 1

    .line 1
    check-cast p1, Landroid/service/autofill/augmented/IAugmentedAutofillService;

    .line 3
    if-eqz p2, :cond_0

    .line 5
    :try_start_0
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 7
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 9
    invoke-interface {p1, p0, v0}, Landroid/service/autofill/augmented/IAugmentedAutofillService;->onConnected(ZZ)V

    .line 12
    goto :goto_1

    .line 13
    :catch_0
    move-exception p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {p1}, Landroid/service/autofill/augmented/IAugmentedAutofillService;->onDisconnected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_1

    .line 19
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 21
    const-string v0, "Exception calling onServiceConnectionStatusChanged("

    .line 23
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    const-string p2, "): "

    .line 31
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    const-string p2, "RemoteAugmentedAutofillService"

    .line 40
    invoke-static {p2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    :goto_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "RemoteAugmentedAutofillService["

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object p0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mComponentName:Landroid/content/ComponentName;

    .line 10
    invoke-static {p0}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string p0, "]"

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method
