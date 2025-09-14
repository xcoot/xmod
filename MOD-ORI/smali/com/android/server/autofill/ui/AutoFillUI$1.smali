.class public final Lcom/android/server/autofill/ui/AutoFillUI$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/autofill/ui/AutoFillUI;

.field public final synthetic val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

.field public final synthetic val$focusedId:Ljava/lang/Object;

.field public final synthetic val$log:Landroid/metrics/LogMaker;

.field public final synthetic val$response:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/ui/AutoFillUI;Landroid/metrics/LogMaker;Lcom/android/server/autofill/SaveEventLogger;Lcom/android/server/autofill/Session;Lcom/android/server/autofill/ui/PendingUi;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iput-object p2, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$log:Landroid/metrics/LogMaker;

    iput-object p3, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$response:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    iput-object p5, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$focusedId:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/autofill/ui/AutoFillUI;Landroid/metrics/LogMaker;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iput-object p2, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$log:Landroid/metrics/LogMaker;

    iput-object p3, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    iput-object p4, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$response:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$focusedId:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/IntentSender;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$log:Landroid/metrics/LogMaker;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$response:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lcom/android/server/autofill/SaveEventLogger;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 14
    .line 15
    new-instance v1, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda3;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    invoke-direct {v1, v2}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda3;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideSaveUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)Lcom/android/server/autofill/ui/PendingUi;

    .line 29
    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    :try_start_0
    iget-object v3, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    const/4 v5, 0x0

    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v7, 0x0

    .line 39
    move-object v2, p1

    .line 40
    invoke-virtual/range {v2 .. v7}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception v2

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v4, "Error starting negative action listener: "

    .line 48
    .line 49
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const-string v3, "AutofillUI"

    .line 60
    .line 61
    invoke-static {v3, p1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    .line 63
    .line 64
    :cond_1
    :goto_0
    check-cast v1, Lcom/android/server/autofill/Session;

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/android/server/autofill/Session;->cancelSave()V

    .line 67
    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$focusedId:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast p0, Lcom/android/server/autofill/ui/PendingUi;

    .line 72
    .line 73
    const/4 p1, 0x1

    .line 74
    invoke-virtual {v0, p0, p1}, Lcom/android/server/autofill/ui/AutoFillUI;->destroySaveUiUiThread(Lcom/android/server/autofill/ui/PendingUi;Z)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$log:Landroid/metrics/LogMaker;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/metrics/LogMaker;->getType()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$log:Landroid/metrics/LogMaker;

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 21
    .line 22
    check-cast v0, Lcom/android/server/autofill/Session;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/android/server/autofill/Session;->cancelSave()V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$log:Landroid/metrics/LogMaker;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$response:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p0, Lcom/android/server/autofill/SaveEventLogger;

    .line 39
    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 43
    .line 44
    new-instance v0, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda3;

    .line 45
    .line 46
    const/4 v1, 0x4

    .line 47
    invoke-direct {v0, v1}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda3;-><init>(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void

    .line 54
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$log:Landroid/metrics/LogMaker;

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/metrics/LogMaker;->getType()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_2

    .line 61
    .line 62
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$log:Landroid/metrics/LogMaker;

    .line 63
    .line 64
    const/4 v1, 0x2

    .line 65
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 66
    .line 67
    .line 68
    :cond_2
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$log:Landroid/metrics/LogMaker;

    .line 73
    .line 74
    invoke-virtual {v0, p0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onSave()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$log:Landroid/metrics/LogMaker;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$response:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lcom/android/server/autofill/SaveEventLogger;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 14
    .line 15
    new-instance v1, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda3;

    .line 16
    .line 17
    const/4 v2, 0x3

    .line 18
    invoke-direct {v1, v2}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda3;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideSaveUiUiThread(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)Lcom/android/server/autofill/ui/PendingUi;

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 32
    .line 33
    check-cast v0, Lcom/android/server/autofill/Session;

    .line 34
    .line 35
    const-string v1, "Call to Session#save() rejected - session: "

    .line 36
    .line 37
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 38
    .line 39
    monitor-enter v2

    .line 40
    :try_start_0
    iget-boolean v3, v0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    .line 41
    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    const-string v3, "AutofillSession"

    .line 45
    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget v0, v0, Lcom/android/server/autofill/Session;->id:I

    .line 52
    .line 53
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v0, " destroyed"

    .line 57
    .line 58
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    monitor-exit v2

    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mSaveEventLogger:Lcom/android/server/autofill/SaveEventLogger;

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 78
    .line 79
    .line 80
    move-result-wide v3

    .line 81
    iget-wide v5, v1, Lcom/android/server/autofill/SaveEventLogger;->mSessionStartTimestamp:J

    .line 82
    .line 83
    sub-long/2addr v3, v5

    .line 84
    iget-object v1, v1, Lcom/android/server/autofill/SaveEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 85
    .line 86
    new-instance v5, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda0;

    .line 87
    .line 88
    const/4 v6, 0x1

    .line 89
    invoke-direct {v5, v3, v4, v6}, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda0;-><init>(JI)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 93
    .line 94
    .line 95
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    .line 97
    .line 98
    new-instance v2, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda9;

    .line 99
    .line 100
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 101
    .line 102
    .line 103
    iget-object v3, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 104
    .line 105
    invoke-static {v2, v3, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 110
    .line 111
    .line 112
    :goto_0
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 113
    .line 114
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$focusedId:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast p0, Lcom/android/server/autofill/ui/PendingUi;

    .line 117
    .line 118
    const/4 v1, 0x1

    .line 119
    invoke-virtual {v0, p0, v1}, Lcom/android/server/autofill/ui/AutoFillUI;->destroySaveUiUiThread(Lcom/android/server/autofill/ui/PendingUi;Z)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    throw p0
.end method

.method public requestHideFillUi()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/autofill/ui/AutoFillUI;->mCallback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$focusedId:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Landroid/view/autofill/AutofillId;

    .line 10
    .line 11
    check-cast v0, Lcom/android/server/autofill/Session;

    .line 12
    .line 13
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v1

    .line 16
    :try_start_0
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 17
    .line 18
    iget v3, v0, Lcom/android/server/autofill/Session;->id:I

    .line 19
    .line 20
    invoke-interface {v2, v3, p0}, Landroid/view/autofill/IAutoFillManagerClient;->requestHideFillUi(ILandroid/view/autofill/AutofillId;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :catch_0
    move-exception v2

    .line 27
    :try_start_1
    const-string v3, "AutofillSession"

    .line 28
    .line 29
    const-string v4, "Error requesting to hide fill UI"

    .line 30
    .line 31
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    .line 33
    .line 34
    :goto_0
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    .line 35
    .line 36
    invoke-virtual {v2, p0}, Lcom/android/server/autofill/AutofillInlineSessionController;->hideInlineSuggestionsUiLocked(Landroid/view/autofill/AutofillId;)V

    .line 37
    .line 38
    .line 39
    iget-object p0, v0, Lcom/android/server/autofill/Session;->mPresentationStatsEventLogger:Lcom/android/server/autofill/PresentationStatsEventLogger;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/autofill/PresentationStatsEventLogger;->mEventInternal:Ljava/util/Optional;

    .line 42
    .line 43
    new-instance v0, Lcom/android/server/autofill/PresentationStatsEventLogger$$ExternalSyntheticLambda27;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 49
    .line 50
    .line 51
    monitor-exit v1

    .line 52
    goto :goto_2

    .line 53
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    throw p0

    .line 55
    :cond_0
    :goto_2
    return-void
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/autofill/ui/AutoFillUI$1;->val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/autofill/Session;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/Session;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
