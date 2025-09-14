.class public final Lcom/android/server/am/BroadcastQueueModernImpl$1;
.super Landroid/app/UidObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/BroadcastQueueModernImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BroadcastQueueModernImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl$1;->this$0:Lcom/android/server/am/BroadcastQueueModernImpl;

    .line 3
    invoke-direct {p0}, Landroid/app/UidObserver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onUidStateChanged(IIJI)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/android/server/am/BroadcastQueueModernImpl$1;->this$0:Lcom/android/server/am/BroadcastQueueModernImpl;

    .line 3
    iget-object p3, p3, Lcom/android/server/am/BroadcastQueueModernImpl;->mLocalHandler:Landroid/os/Handler;

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object p4

    .line 9
    const/4 p5, 0x7

    .line 10
    invoke-virtual {p3, p5, p4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 13
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueModernImpl$1;->this$0:Lcom/android/server/am/BroadcastQueueModernImpl;

    .line 15
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueModernImpl;->mLocalHandler:Landroid/os/Handler;

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object p1

    .line 21
    const/4 p3, 0x0

    .line 22
    invoke-virtual {p0, p5, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 29
    return-void
.end method
