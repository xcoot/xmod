.class public final Lcom/android/server/autofill/RemoteFillService$1;
.super Landroid/service/autofill/IFillCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/autofill/RemoteFillService;

.field public final synthetic val$cancellationSink:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic val$fillRequest:Ljava/util/concurrent/CompletableFuture;

.field public final synthetic val$futureRef:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/RemoteFillService;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CompletableFuture;I)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/android/server/autofill/RemoteFillService$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$1;->this$0:Lcom/android/server/autofill/RemoteFillService;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/autofill/RemoteFillService$1;->val$futureRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/android/server/autofill/RemoteFillService$1;->val$cancellationSink:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    .line 9
    iput-object p4, p0, Lcom/android/server/autofill/RemoteFillService$1;->val$fillRequest:Ljava/util/concurrent/CompletableFuture;

    .line 10
    .line 11
    invoke-direct {p0}, Landroid/service/autofill/IFillCallback$Stub;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onCancellable(Landroid/os/ICancellationSignal;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/autofill/RemoteFillService$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$1;->val$futureRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/util/concurrent/CompletableFuture;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->isCancelled()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService$1;->this$0:Lcom/android/server/autofill/RemoteFillService;

    .line 23
    .line 24
    sget v0, Lcom/android/server/autofill/RemoteFillService;->$r8$clinit:I

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lcom/android/server/autofill/RemoteFillService;->dispatchCancellationSignal(Landroid/os/ICancellationSignal;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService$1;->val$cancellationSink:Ljava/util/concurrent/atomic/AtomicReference;

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void

    .line 39
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$1;->val$futureRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ljava/util/concurrent/CompletableFuture;

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->isCancelled()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService$1;->this$0:Lcom/android/server/autofill/RemoteFillService;

    .line 56
    .line 57
    sget v0, Lcom/android/server/autofill/RemoteFillService;->$r8$clinit:I

    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-static {p1}, Lcom/android/server/autofill/RemoteFillService;->dispatchCancellationSignal(Landroid/os/ICancellationSignal;)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService$1;->val$cancellationSink:Ljava/util/concurrent/atomic/AtomicReference;

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :goto_1
    return-void

    .line 72
    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onFailure(ILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/android/server/autofill/RemoteFillService$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :goto_0
    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService$1;->val$fillRequest:Ljava/util/concurrent/CompletableFuture;

    .line 16
    .line 17
    new-instance p2, Ljava/lang/RuntimeException;

    .line 18
    .line 19
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p2}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    if-nez p2, :cond_1

    .line 27
    .line 28
    const-string p1, ""

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :goto_1
    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService$1;->val$fillRequest:Ljava/util/concurrent/CompletableFuture;

    .line 36
    .line 37
    new-instance p2, Ljava/lang/RuntimeException;

    .line 38
    .line 39
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p2}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onSuccess(Landroid/service/autofill/FillResponse;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/autofill/RemoteFillService$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService$1;->val$fillRequest:Ljava/util/concurrent/CompletableFuture;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService$1;->val$fillRequest:Ljava/util/concurrent/CompletableFuture;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
