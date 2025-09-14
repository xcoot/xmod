.class final Lcom/android/server/autofill/RemoteFillService;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field private final mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

.field private final mComponentName:Landroid/content/ComponentName;

.field private mConvertCredentialCallback:Ljava/util/concurrent/atomic/AtomicReference;

.field private mFillCallback:Ljava/util/concurrent/atomic/AtomicReference;

.field private final mIsCredentialAutofillService:Z

.field private final mLock:Ljava/lang/Object;

.field private mPendingFillRequest:Ljava/util/concurrent/CompletableFuture;

.field private mPendingFillRequestId:I

.field private mSaveCallback:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public static $r8$lambda$0drfjd02UtjtR1pzZwZfvLOqncQ(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/SaveRequest;Landroid/service/autofill/IAutoFillService;)Ljava/util/concurrent/CompletableFuture;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    const-string v0, "RemoteFillService"

    .line 10
    const-string/jumbo v1, "calling onSaveRequest()"

    .line 13
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_0
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    .line 18
    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 21
    new-instance v1, Lcom/android/server/autofill/RemoteFillService$4;

    .line 23
    invoke-direct {v1, v0}, Lcom/android/server/autofill/RemoteFillService$4;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    .line 26
    invoke-static {}, Landroid/service/autofill/Flags;->remoteFillServiceUseWeakReference()Z

    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 32
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 34
    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 37
    iput-object v2, p0, Lcom/android/server/autofill/RemoteFillService;->mSaveCallback:Ljava/util/concurrent/atomic/AtomicReference;

    .line 39
    new-instance p0, Lcom/android/server/autofill/RemoteFillService$4;

    .line 41
    invoke-direct {p0}, Lcom/android/server/autofill/RemoteFillService$4;-><init>()V

    .line 44
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 46
    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 49
    iput-object v2, p0, Lcom/android/server/autofill/RemoteFillService$4;->val$save:Ljava/lang/Object;

    .line 51
    move-object v1, p0

    .line 52
    :cond_1
    invoke-interface {p2, p1, v1}, Landroid/service/autofill/IAutoFillService;->onSaveRequest(Landroid/service/autofill/SaveRequest;Landroid/service/autofill/ISaveCallback;)V

    .line 55
    return-object v0
.end method

.method public static synthetic $r8$lambda$1hw0FNOarmG_sgD3O92JoX9WtBE(Lcom/android/server/autofill/RemoteFillService;Ljava/lang/Throwable;Landroid/content/IntentSender;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    .line 5
    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    .line 7
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p1, p0, p2}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onSaveRequestSuccess(Ljava/lang/String;Landroid/content/IntentSender;)V

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p2, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    .line 17
    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    .line 19
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p2, p1, p0}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onSaveRequestFailure(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 30
    :goto_0
    return-void
.end method

.method public static synthetic $r8$lambda$BpMSr5I3_9bplEhls6FgDTRLWpg(Lcom/android/server/autofill/RemoteFillService;Ljava/lang/Throwable;Landroid/service/autofill/FillRequest;Landroid/service/autofill/FillResponse;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequest:Ljava/util/concurrent/CompletableFuture;

    .line 7
    const/high16 v1, -0x80000000

    .line 9
    iput v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequestId:I

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    .line 14
    if-nez v0, :cond_0

    .line 16
    const-string p0, "RemoteFillService"

    .line 18
    const-string p1, "Error calling RemoteFillService - service already unbound"

    .line 20
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    if-nez p1, :cond_1

    .line 26
    invoke-virtual {p2}, Landroid/service/autofill/FillRequest;->getId()I

    .line 29
    move-result p1

    .line 30
    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    .line 32
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 35
    invoke-virtual {p2}, Landroid/service/autofill/FillRequest;->getFlags()I

    .line 38
    move-result p0

    .line 39
    invoke-interface {v0, p1, p3, p0}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onFillRequestSuccess(ILandroid/service/autofill/FillResponse;I)V

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const-string p3, "RemoteFillService"

    .line 45
    const-string v0, "Error calling on fill request"

    .line 47
    invoke-static {p3, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    instance-of p3, p1, Ljava/util/concurrent/TimeoutException;

    .line 52
    if-eqz p3, :cond_2

    .line 54
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 57
    move-result-object p3

    .line 58
    check-cast p3, Landroid/os/ICancellationSignal;

    .line 60
    invoke-static {p3}, Lcom/android/server/autofill/RemoteFillService;->dispatchCancellationSignal(Landroid/os/ICancellationSignal;)V

    .line 63
    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    .line 65
    invoke-virtual {p2}, Landroid/service/autofill/FillRequest;->getId()I

    .line 68
    move-result p2

    .line 69
    invoke-interface {p0, p2, p1}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onFillRequestFailure(ILjava/lang/Throwable;)V

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    instance-of p3, p1, Ljava/util/concurrent/CancellationException;

    .line 75
    if-eqz p3, :cond_3

    .line 77
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 80
    move-result-object p0

    .line 81
    check-cast p0, Landroid/os/ICancellationSignal;

    .line 83
    invoke-static {p0}, Lcom/android/server/autofill/RemoteFillService;->dispatchCancellationSignal(Landroid/os/ICancellationSignal;)V

    .line 86
    goto :goto_0

    .line 87
    :cond_3
    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    .line 89
    invoke-virtual {p2}, Landroid/service/autofill/FillRequest;->getId()I

    .line 92
    move-result p2

    .line 93
    invoke-interface {p0, p2, p1}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onFillRequestFailure(ILjava/lang/Throwable;)V

    .line 96
    :goto_0
    return-void

    .line 97
    :catchall_0
    move-exception p0

    .line 98
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    throw p0
.end method

.method public static synthetic $r8$lambda$PXtmzf6bY2FCvCgDzGBClXL04mI(Lcom/android/server/autofill/RemoteFillService;Ljava/lang/Throwable;Landroid/service/autofill/FillRequest;Landroid/service/autofill/FillResponse;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequest:Ljava/util/concurrent/CompletableFuture;

    .line 7
    const/high16 v1, -0x80000000

    .line 9
    iput v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequestId:I

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    if-nez p1, :cond_0

    .line 14
    iget-object p1, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    .line 16
    invoke-virtual {p2}, Landroid/service/autofill/FillRequest;->getId()I

    .line 19
    move-result p4

    .line 20
    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    .line 22
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 25
    invoke-virtual {p2}, Landroid/service/autofill/FillRequest;->getFlags()I

    .line 28
    move-result p0

    .line 29
    invoke-interface {p1, p4, p3, p0}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onFillRequestSuccess(ILandroid/service/autofill/FillResponse;I)V

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string p3, "RemoteFillService"

    .line 35
    const-string v0, "Error calling on fill request"

    .line 37
    invoke-static {p3, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    instance-of p3, p1, Ljava/util/concurrent/TimeoutException;

    .line 42
    if-eqz p3, :cond_1

    .line 44
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 47
    move-result-object p3

    .line 48
    check-cast p3, Landroid/os/ICancellationSignal;

    .line 50
    invoke-static {p3}, Lcom/android/server/autofill/RemoteFillService;->dispatchCancellationSignal(Landroid/os/ICancellationSignal;)V

    .line 53
    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    .line 55
    invoke-virtual {p2}, Landroid/service/autofill/FillRequest;->getId()I

    .line 58
    move-result p2

    .line 59
    invoke-interface {p0, p2, p1}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onFillRequestFailure(ILjava/lang/Throwable;)V

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    instance-of p3, p1, Ljava/util/concurrent/CancellationException;

    .line 65
    if-eqz p3, :cond_2

    .line 67
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Landroid/os/ICancellationSignal;

    .line 73
    invoke-static {p0}, Lcom/android/server/autofill/RemoteFillService;->dispatchCancellationSignal(Landroid/os/ICancellationSignal;)V

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    .line 79
    invoke-virtual {p2}, Landroid/service/autofill/FillRequest;->getId()I

    .line 82
    move-result p2

    .line 83
    invoke-interface {p0, p2, p1}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onFillRequestFailure(ILjava/lang/Throwable;)V

    .line 86
    :goto_0
    return-void

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;ZLandroid/content/ComponentName;)V
    .locals 8

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "android.service.autofill.AutofillService"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 11
    move-result-object v4

    .line 12
    if-eqz p5, :cond_0

    .line 14
    const/high16 p5, 0x400000

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p5, 0x0

    .line 18
    :goto_0
    const/high16 v0, 0x100000

    .line 20
    or-int v5, p5, v0

    .line 22
    new-instance v7, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda2;

    .line 24
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 27
    move-object v2, p0

    .line 28
    move-object v3, p1

    .line 29
    move v6, p3

    .line 30
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 33
    new-instance p1, Ljava/lang/Object;

    .line 35
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService;->mLock:Ljava/lang/Object;

    .line 40
    const/high16 p1, -0x80000000

    .line 42
    iput p1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequestId:I

    .line 44
    iput-object p4, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    .line 46
    iput-object p2, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    .line 48
    invoke-virtual {p2, p6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result p1

    .line 52
    iput-boolean p1, p0, Lcom/android/server/autofill/RemoteFillService;->mIsCredentialAutofillService:Z

    .line 54
    return-void
.end method

.method public static dispatchCancellationSignal(Landroid/os/ICancellationSignal;)V
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    goto :goto_0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    const-string v0, "RemoteFillService"

    .line 11
    const-string v1, "Error requesting a cancellation"

    .line 13
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    :goto_0
    return-void
.end method


# virtual methods
.method public final addLast(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/internal/infra/ServiceConnector$Job;

    .line 3
    invoke-virtual {p0}, Lcom/android/internal/infra/ServiceConnector$Impl;->cancelPendingJobs()V

    .line 6
    invoke-super {p0, p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->addLast(Ljava/lang/Object;)V

    .line 9
    return-void
.end method

.method public final cancelCurrentRequest()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequest:Ljava/util/concurrent/CompletableFuture;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 15
    iget p0, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequestId:I

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const/high16 p0, -0x80000000

    .line 22
    :goto_0
    monitor-exit v0

    .line 23
    return p0

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public final getAutoDisconnectTimeoutMs()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x1388

    .line 3
    return-wide v0
.end method

.method public final isCredentialAutofillService()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/autofill/RemoteFillService;->mIsCredentialAutofillService:Z

    .line 3
    return p0
.end method

.method public final maybeWrapWithWeakReference(Landroid/service/autofill/IFillCallback;)Landroid/service/autofill/IFillCallback;
    .locals 1

    .line 1
    invoke-static {}, Landroid/service/autofill/Flags;->remoteFillServiceUseWeakReference()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 12
    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mFillCallback:Ljava/util/concurrent/atomic/AtomicReference;

    .line 14
    new-instance p0, Lcom/android/server/autofill/RemoteFillService$IFillCallbackDelegate;

    .line 16
    invoke-direct {p0}, Landroid/service/autofill/IFillCallback$Stub;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 21
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 24
    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService$IFillCallbackDelegate;->mCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 26
    return-object p0

    .line 27
    :cond_0
    return-object p1
.end method

.method public final onFillCredentialRequest(Landroid/service/autofill/FillRequest;Landroid/os/IBinder;)V
    .locals 9

    .line 1
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v0, "RemoteFillService"

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    const-string/jumbo v2, "onFillRequest:"

    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 27
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 30
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 32
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 35
    new-instance v8, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda5;

    .line 37
    move-object v2, v8

    .line 38
    move-object v3, p0

    .line 39
    move-object v4, p1

    .line 40
    move-object v5, v1

    .line 41
    move-object v6, v0

    .line 42
    move-object v7, p2

    .line 43
    invoke-direct/range {v2 .. v7}, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Landroid/os/IBinder;)V

    .line 46
    invoke-virtual {p0, v8}, Lcom/android/internal/infra/ServiceConnector$Impl;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    .line 49
    move-result-object p2

    .line 50
    const-wide/16 v2, 0x1388

    .line 52
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 54
    invoke-virtual {p2, v2, v3, v4}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {v1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 61
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mLock:Ljava/lang/Object;

    .line 63
    monitor-enter v1

    .line 64
    :try_start_0
    iput-object p2, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequest:Ljava/util/concurrent/CompletableFuture;

    .line 66
    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getId()I

    .line 69
    move-result v2

    .line 70
    iput v2, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequestId:I

    .line 72
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    new-instance v1, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda4;

    .line 75
    const/4 v2, 0x1

    .line 76
    invoke-direct {v1, p0, p1, v0, v2}, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;I)V

    .line 79
    invoke-virtual {p2, v1}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    .line 82
    return-void

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    throw p0
.end method

.method public final onFillRequest(Landroid/service/autofill/FillRequest;)V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v0, "RemoteFillService"

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    const-string/jumbo v2, "onFillRequest:"

    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 27
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 30
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 32
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 35
    new-instance v2, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda3;

    .line 37
    invoke-direct {v2, p0, p1, v1, v0}, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 40
    invoke-virtual {p0, v2}, Lcom/android/internal/infra/ServiceConnector$Impl;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    .line 43
    move-result-object v2

    .line 44
    const-wide/16 v3, 0x1388

    .line 46
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 48
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 55
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mLock:Ljava/lang/Object;

    .line 57
    monitor-enter v1

    .line 58
    :try_start_0
    iput-object v2, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequest:Ljava/util/concurrent/CompletableFuture;

    .line 60
    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getId()I

    .line 63
    move-result v3

    .line 64
    iput v3, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequestId:I

    .line 66
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    new-instance v1, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda4;

    .line 69
    const/4 v3, 0x0

    .line 70
    invoke-direct {v1, p0, p1, v0, v3}, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;I)V

    .line 73
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    .line 76
    return-void

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    throw p0
.end method

.method public final onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .locals 1

    .line 1
    check-cast p1, Landroid/service/autofill/IAutoFillService;

    .line 3
    :try_start_0
    invoke-interface {p1, p2}, Landroid/service/autofill/IAutoFillService;->onConnectedStateChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 10
    const-string v0, "Exception calling onConnectedStateChanged("

    .line 12
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    const-string p2, "): "

    .line 20
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    const-string p1, "RemoteFillService"

    .line 32
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :goto_0
    return-void
.end method
