.class public final synthetic Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget p0, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lcom/android/server/am/BroadcastProcessQueue;

    .line 9
    .line 10
    sget-object p0, Lcom/android/server/am/BroadcastQueueModernImpl;->QUEUE_PREDICATE_ANY:Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda1;

    .line 11
    .line 12
    return v1

    .line 13
    :pswitch_0
    check-cast p1, Lcom/android/server/am/BroadcastProcessQueue;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isActive()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-nez p0, :cond_1

    .line 26
    .line 27
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isDeferredUntilActive()Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_2

    .line 32
    .line 33
    :cond_1
    move v0, v1

    .line 34
    :cond_2
    return v0

    .line 35
    :pswitch_1
    check-cast p1, Landroid/util/Pair;

    .line 36
    .line 37
    iget-object p0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p0, Ljava/util/function/BooleanSupplier;

    .line 40
    .line 41
    invoke-interface {p0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-eqz p0, :cond_3

    .line 46
    .line 47
    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 52
    .line 53
    .line 54
    move v0, v1

    .line 55
    :cond_3
    return v0

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
