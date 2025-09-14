.class public final synthetic Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final test(Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 3
    packed-switch p0, :pswitch_data_0

    .line 6
    iget-object p0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 8
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    move-result-object p0

    .line 12
    instance-of p0, p0, Lcom/android/server/am/BroadcastFilter;

    .line 14
    return p0

    .line 15
    :pswitch_0
    sget-object p0, Lcom/android/server/am/BroadcastQueueModernImpl;->QUEUE_PREDICATE_ANY:Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda1;

    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
