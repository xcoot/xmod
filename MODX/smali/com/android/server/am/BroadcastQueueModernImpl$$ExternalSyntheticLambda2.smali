.class public final synthetic Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    iput p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda2;->f$0:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 3
    iget p0, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda2;->f$0:I

    .line 5
    check-cast p1, Lcom/android/server/am/BroadcastProcessQueue;

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 10
    iget p1, p1, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    .line 12
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 15
    move-result p1

    .line 16
    if-ne p1, p0, :cond_0

    .line 18
    const/4 p0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    :goto_0
    return p0

    .line 22
    :pswitch_0
    iget p1, p1, Lcom/android/server/am/BroadcastProcessQueue;->uid:I

    .line 24
    if-ne p1, p0, :cond_1

    .line 26
    const/4 p0, 0x1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/4 p0, 0x0

    .line 29
    :goto_1
    return p0

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
