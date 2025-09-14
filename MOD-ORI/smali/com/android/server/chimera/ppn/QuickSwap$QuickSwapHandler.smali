.class public final Lcom/android/server/chimera/ppn/QuickSwap$QuickSwapHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/ppn/QuickSwap;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/ppn/QuickSwap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/chimera/ppn/QuickSwap$QuickSwapHandler;->this$0:Lcom/android/server/chimera/ppn/QuickSwap;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/chimera/ppn/QuickSwap;->mQuickSwapThread:Lcom/android/server/ServiceThread;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/chimera/ppn/QuickSwap$QuickSwapHandler;->this$0:Lcom/android/server/chimera/ppn/QuickSwap;

    .line 10
    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    const-wide/32 v1, 0x200000

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/chimera/ppn/QuickSwap;->doQuickSwap(IJ)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    check-cast p1, Ljava/lang/Long;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/chimera/ppn/QuickSwap;->doQuickSwap(IJ)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method
