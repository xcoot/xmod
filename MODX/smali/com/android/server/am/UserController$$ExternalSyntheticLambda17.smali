.class public final synthetic Lcom/android/server/am/UserController$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(IIILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda17;->$r8$classId:I

    .line 3
    iput-object p4, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda17;->f$0:Ljava/lang/Object;

    .line 5
    iput p1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda17;->f$1:I

    .line 7
    iput p2, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda17;->f$2:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda17;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda17;->f$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Lcom/android/server/am/UserController$4;

    .line 10
    iget v1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda17;->f$1:I

    .line 12
    iget p0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda17;->f$2:I

    .line 14
    iget-object v0, v0, Lcom/android/server/am/UserController$4;->this$0:Lcom/android/server/am/UserController;

    .line 16
    invoke-virtual {v0, v1, p0}, Lcom/android/server/am/UserController;->startUser(II)Z

    .line 19
    return-void

    .line 20
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda17;->f$0:Ljava/lang/Object;

    .line 22
    check-cast v0, Lcom/android/server/am/UserController;

    .line 24
    iget v1, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda17;->f$1:I

    .line 26
    iget p0, p0, Lcom/android/server/am/UserController$$ExternalSyntheticLambda17;->f$2:I

    .line 28
    iget-object v2, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 30
    const/16 v3, 0x50

    .line 32
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 35
    iget-object v0, v0, Lcom/android/server/am/UserController;->mHandler:Landroid/os/Handler;

    .line 37
    invoke-virtual {v0, v3, v1, p0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 44
    return-void

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
