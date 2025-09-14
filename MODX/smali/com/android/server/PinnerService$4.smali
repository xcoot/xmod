.class public final Lcom/android/server/PinnerService$4;
.super Landroid/app/UidObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/PinnerService;


# direct methods
.method public constructor <init>(Lcom/android/server/PinnerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/PinnerService$4;->this$0:Lcom/android/server/PinnerService;

    .line 3
    invoke-direct {p0}, Landroid/app/UidObserver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onUidActive(I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/PinnerService$4;->this$0:Lcom/android/server/PinnerService;

    .line 3
    iget-object v0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    .line 5
    new-instance v1, Lcom/android/server/PinnerService$$ExternalSyntheticLambda1;

    .line 7
    const/4 v2, 0x3

    .line 8
    invoke-direct {v1, v2}, Lcom/android/server/PinnerService$$ExternalSyntheticLambda1;-><init>(I)V

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object p1

    .line 15
    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 22
    return-void
.end method

.method public final onUidGone(IZ)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/PinnerService$4;->this$0:Lcom/android/server/PinnerService;

    .line 3
    iget-object p2, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    .line 5
    new-instance v0, Lcom/android/server/PinnerService$$ExternalSyntheticLambda1;

    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-direct {v0, v1}, Lcom/android/server/PinnerService$$ExternalSyntheticLambda1;-><init>(I)V

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object p1

    .line 15
    invoke-static {v0, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 22
    return-void
.end method
