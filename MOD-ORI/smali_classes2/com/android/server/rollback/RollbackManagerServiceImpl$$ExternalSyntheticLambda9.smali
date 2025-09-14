.class public final synthetic Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;JI)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 4
    .line 5
    iput-wide p2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda9;->f$1:J

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 7
    .line 8
    iget-wide v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda9;->f$1:J

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v0, "RollbackManagerHandlerThread interrupted"

    .line 20
    .line 21
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p0

    .line 25
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 26
    .line 27
    iget-wide v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda9;->f$1:J

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 30
    .line 31
    .line 32
    iget-object p0, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mSleepDuration:Landroid/util/LongArrayQueue;

    .line 33
    .line 34
    invoke-virtual {p0, v1, v2}, Landroid/util/LongArrayQueue;->addLast(J)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
