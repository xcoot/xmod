.class public final Lcom/android/server/autofill/RemoteFillService$4;
.super Landroid/service/autofill/ISaveCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public val$save:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/autofill/RemoteFillService$4;->$r8$classId:I

    invoke-direct {p0}, Landroid/service/autofill/ISaveCallback$Stub;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/CompletableFuture;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/autofill/RemoteFillService$4;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$4;->val$save:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/service/autofill/ISaveCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/autofill/RemoteFillService$4;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService$4;->val$save:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroid/service/autofill/ISaveCallback;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    invoke-interface {p0, p1}, Landroid/service/autofill/ISaveCallback;->onFailure(Ljava/lang/CharSequence;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void

    .line 22
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService$4;->val$save:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Ljava/util/concurrent/CompletableFuture;

    .line 25
    .line 26
    new-instance v0, Ljava/lang/RuntimeException;

    .line 27
    .line 28
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onSuccess(Landroid/content/IntentSender;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/autofill/RemoteFillService$4;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService$4;->val$save:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroid/service/autofill/ISaveCallback;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    invoke-interface {p0, p1}, Landroid/service/autofill/ISaveCallback;->onSuccess(Landroid/content/IntentSender;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void

    .line 22
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService$4;->val$save:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Ljava/util/concurrent/CompletableFuture;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
