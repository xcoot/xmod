.class public final synthetic Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda20;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda20;->$r8$classId:I

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/am/BroadcastProcessQueue;

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget p0, p1, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizeEarliestRequests:I

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    sub-int/2addr p0, v0

    .line 12
    iput p0, p1, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizeEarliestRequests:I

    .line 13
    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    iput-boolean v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    if-gez p0, :cond_1

    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    iput p0, p1, Lcom/android/server/am/BroadcastProcessQueue;->mCountPrioritizeEarliestRequests:I

    .line 23
    .line 24
    :cond_1
    :goto_0
    return-void

    .line 25
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->addPrioritizeEarliestRequest()Z

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
