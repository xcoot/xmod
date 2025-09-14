.class public final synthetic Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/UserSwitchingDialog;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/UserSwitchingDialog;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/am/UserSwitchingDialog;

    .line 6
    iput-object p2, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    iput-object p3, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;->f$2:Ljava/lang/Runnable;

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/am/UserSwitchingDialog;

    .line 3
    iget-object v1, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    iget-object p0, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;->f$2:Ljava/lang/Runnable;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 17
    iget-object v0, v0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 23
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 26
    :cond_0
    return-void
.end method
