.class public final synthetic Lcom/android/server/am/BroadcastLoopers$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/am/BroadcastLoopers$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/am/BroadcastLoopers$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    check-cast p1, Landroid/os/Looper;

    .line 5
    check-cast p2, Ljava/util/concurrent/CountDownLatch;

    .line 7
    packed-switch p0, :pswitch_data_0

    .line 10
    new-instance p0, Landroid/os/Handler;

    .line 12
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 15
    new-instance p1, Lcom/android/server/am/BroadcastLoopers$$ExternalSyntheticLambda3;

    .line 17
    invoke-direct {p1, p2}, Lcom/android/server/am/BroadcastLoopers$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 20
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    return-void

    .line 24
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    .line 27
    move-result-object p0

    .line 28
    new-instance p1, Lcom/android/server/am/BroadcastLoopers$$ExternalSyntheticLambda2;

    .line 30
    invoke-direct {p1, p2}, Lcom/android/server/am/BroadcastLoopers$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 33
    invoke-virtual {p0, p1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 36
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
