.class public final synthetic Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/SameProcessApplicationThread;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/SameProcessApplicationThread;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/SameProcessApplicationThread;

    .line 5
    iput-object p2, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/SameProcessApplicationThread;

    .line 8
    iget-object p0, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 10
    check-cast p0, Ljava/util/List;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/SameProcessApplicationThread;->mWrapped:Landroid/app/IApplicationThread;

    .line 17
    invoke-interface {v0, p0}, Landroid/app/IApplicationThread;->scheduleReceiverList(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return-void

    .line 21
    :catch_0
    move-exception p0

    .line 22
    new-instance v0, Ljava/lang/RuntimeException;

    .line 24
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 27
    throw v0

    .line 28
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/SameProcessApplicationThread;

    .line 30
    iget-object p0, p0, Lcom/android/server/am/SameProcessApplicationThread$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Object;

    .line 32
    check-cast p0, Landroid/os/RemoteCallback;

    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    :try_start_1
    iget-object v0, v0, Lcom/android/server/am/SameProcessApplicationThread;->mWrapped:Landroid/app/IApplicationThread;

    .line 39
    invoke-interface {v0, p0}, Landroid/app/IApplicationThread;->schedulePing(Landroid/os/RemoteCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 42
    return-void

    .line 43
    :catch_1
    move-exception p0

    .line 44
    new-instance v0, Ljava/lang/RuntimeException;

    .line 46
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 49
    throw v0

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
