.class public final Lcom/android/server/autofill/RemoteFieldClassificationService$1;
.super Landroid/service/assist/classification/IFieldClassificationCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/RemoteFieldClassificationService;

.field public final synthetic val$fieldClassificationServiceCallbacksWeakRef:Ljava/lang/ref/WeakReference;

.field public final synthetic val$startTime:J


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/RemoteFieldClassificationService;Ljava/lang/ref/WeakReference;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$1;->this$0:Lcom/android/server/autofill/RemoteFieldClassificationService;

    .line 3
    iput-object p2, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$1;->val$fieldClassificationServiceCallbacksWeakRef:Ljava/lang/ref/WeakReference;

    .line 5
    iput-wide p3, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$1;->val$startTime:J

    .line 7
    invoke-direct {p0}, Landroid/service/assist/classification/IFieldClassificationCallback$Stub;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 0

    .line 1
    return-void
.end method

.method public final isCompleted()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final onCancellable(Landroid/os/ICancellationSignal;)V
    .locals 6

    .line 1
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 3
    if-eqz p1, :cond_0

    .line 5
    sget p1, Lcom/android/server/autofill/RemoteFieldClassificationService;->$r8$clinit:I

    .line 7
    const-string/jumbo p1, "onCancellable"

    .line 10
    const-string v0, "AutofillRemoteFieldClassificationService"

    .line 12
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$1;->val$fieldClassificationServiceCallbacksWeakRef:Ljava/lang/ref/WeakReference;

    .line 17
    sget v0, Lcom/android/server/autofill/RemoteFieldClassificationService;->$r8$clinit:I

    .line 19
    const-string/jumbo v0, "onCancellable "

    .line 22
    invoke-static {p1, v0}, Lcom/android/server/autofill/Helper;->weakDeref(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    move-object v3, p1

    .line 27
    check-cast v3, Lcom/android/server/autofill/RemoteFieldClassificationService$FieldClassificationServiceCallbacks;

    .line 29
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$1;->this$0:Lcom/android/server/autofill/RemoteFieldClassificationService;

    .line 31
    iget-wide v1, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$1;->val$startTime:J

    .line 33
    const/4 v4, 0x3

    .line 34
    const/4 v5, 0x0

    .line 35
    invoke-static/range {v0 .. v5}, Lcom/android/server/autofill/RemoteFieldClassificationService;->-$$Nest$mlogFieldClassificationEvent(Lcom/android/server/autofill/RemoteFieldClassificationService;JLcom/android/server/autofill/RemoteFieldClassificationService$FieldClassificationServiceCallbacks;ILandroid/service/assist/classification/FieldClassificationResponse;)V

    .line 38
    return-void
.end method

.method public final onFailure()V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    sget v0, Lcom/android/server/autofill/RemoteFieldClassificationService;->$r8$clinit:I

    .line 7
    const-string/jumbo v0, "onFailure"

    .line 10
    const-string v1, "AutofillRemoteFieldClassificationService"

    .line 12
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$1;->val$fieldClassificationServiceCallbacksWeakRef:Ljava/lang/ref/WeakReference;

    .line 17
    sget v1, Lcom/android/server/autofill/RemoteFieldClassificationService;->$r8$clinit:I

    .line 19
    const-string/jumbo v1, "onFailure "

    .line 22
    invoke-static {v0, v1}, Lcom/android/server/autofill/Helper;->weakDeref(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    move-object v4, v0

    .line 27
    check-cast v4, Lcom/android/server/autofill/RemoteFieldClassificationService$FieldClassificationServiceCallbacks;

    .line 29
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$1;->this$0:Lcom/android/server/autofill/RemoteFieldClassificationService;

    .line 31
    iget-wide v2, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$1;->val$startTime:J

    .line 33
    const/4 v5, 0x2

    .line 34
    const/4 v6, 0x0

    .line 35
    invoke-static/range {v1 .. v6}, Lcom/android/server/autofill/RemoteFieldClassificationService;->-$$Nest$mlogFieldClassificationEvent(Lcom/android/server/autofill/RemoteFieldClassificationService;JLcom/android/server/autofill/RemoteFieldClassificationService$FieldClassificationServiceCallbacks;ILandroid/service/assist/classification/FieldClassificationResponse;)V

    .line 38
    return-void
.end method

.method public final onSuccess(Landroid/service/assist/classification/FieldClassificationResponse;)V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    .line 3
    const-string/jumbo v1, "onSuccess "

    .line 6
    if-eqz v0, :cond_3

    .line 8
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 10
    const-string v2, "AutofillRemoteFieldClassificationService"

    .line 12
    if-eqz v0, :cond_0

    .line 14
    sget v0, Lcom/android/server/autofill/RemoteFieldClassificationService;->$r8$clinit:I

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    const-string/jumbo v3, "onSuccess Response: "

    .line 21
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    goto :goto_2

    .line 35
    :cond_0
    if-eqz p1, :cond_2

    .line 37
    invoke-virtual {p1}, Landroid/service/assist/classification/FieldClassificationResponse;->getClassifications()Ljava/util/Set;

    .line 40
    move-result-object v0

    .line 41
    if-nez v0, :cond_1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    const-string/jumbo v3, "size: "

    .line 49
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Landroid/service/assist/classification/FieldClassificationResponse;->getClassifications()Ljava/util/Set;

    .line 55
    move-result-object v3

    .line 56
    invoke-interface {v3}, Ljava/util/Set;->size()I

    .line 59
    move-result v3

    .line 60
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    :goto_0
    const-string/jumbo v0, "null response"

    .line 71
    :goto_1
    sget v3, Lcom/android/server/autofill/RemoteFieldClassificationService;->$r8$clinit:I

    .line 73
    invoke-static {v1, v0, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$1;->val$fieldClassificationServiceCallbacksWeakRef:Ljava/lang/ref/WeakReference;

    .line 78
    sget v2, Lcom/android/server/autofill/RemoteFieldClassificationService;->$r8$clinit:I

    .line 80
    invoke-static {v0, v1}, Lcom/android/server/autofill/Helper;->weakDeref(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Lcom/android/server/autofill/RemoteFieldClassificationService$FieldClassificationServiceCallbacks;

    .line 86
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$1;->this$0:Lcom/android/server/autofill/RemoteFieldClassificationService;

    .line 88
    iget-wide v2, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$1;->val$startTime:J

    .line 90
    const/4 v5, 0x1

    .line 91
    move-object v4, v0

    .line 92
    move-object v6, p1

    .line 93
    invoke-static/range {v1 .. v6}, Lcom/android/server/autofill/RemoteFieldClassificationService;->-$$Nest$mlogFieldClassificationEvent(Lcom/android/server/autofill/RemoteFieldClassificationService;JLcom/android/server/autofill/RemoteFieldClassificationService$FieldClassificationServiceCallbacks;ILandroid/service/assist/classification/FieldClassificationResponse;)V

    .line 96
    if-nez v0, :cond_4

    .line 98
    return-void

    .line 99
    :cond_4
    check-cast v0, Lcom/android/server/autofill/Session;

    .line 101
    iget-object p0, v0, Lcom/android/server/autofill/Session;->mClassificationState:Lcom/android/server/autofill/Session$ClassificationState;

    .line 103
    const/4 v0, 0x4

    .line 104
    iput v0, p0, Lcom/android/server/autofill/Session$ClassificationState;->mState:I

    .line 106
    iput-object p1, p0, Lcom/android/server/autofill/Session$ClassificationState;->mLastFieldClassificationResponse:Landroid/service/assist/classification/FieldClassificationResponse;

    .line 108
    const/4 p1, 0x0

    .line 109
    iput-object p1, p0, Lcom/android/server/autofill/Session$ClassificationState;->mPendingFieldClassificationRequest:Landroid/service/assist/classification/FieldClassificationRequest;

    .line 111
    invoke-virtual {p0}, Lcom/android/server/autofill/Session$ClassificationState;->processResponse()Z

    .line 114
    return-void
.end method
