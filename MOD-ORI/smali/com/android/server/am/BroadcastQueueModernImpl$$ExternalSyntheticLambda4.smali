.class public final synthetic Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/am/BroadcastProcessQueue$BroadcastConsumer;
.implements Lcom/android/server/am/BroadcastProcessQueue$BroadcastPredicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/am/BroadcastRecord;I)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    move-object v0, p0

    .line 9
    check-cast v0, Lcom/android/server/am/BroadcastQueueModernImpl;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object p0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    const/4 v1, 0x0

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v6, 0x0

    .line 23
    const-string/jumbo v7, "mBroadcastConsumerDeferClear"

    .line 24
    .line 25
    .line 26
    move-object v3, p1

    .line 27
    move v4, p2

    .line 28
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/BroadcastQueueModernImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_0
    move-object v0, p0

    .line 33
    check-cast v0, Lcom/android/server/am/BroadcastQueueModernImpl;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iget-object p0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    const/4 v1, 0x0

    .line 45
    const/4 v2, 0x0

    .line 46
    const/4 v6, 0x6

    .line 47
    const-string/jumbo v7, "mBroadcastConsumerDeferApply"

    .line 48
    .line 49
    .line 50
    move-object v3, p1

    .line 51
    move v4, p2

    .line 52
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/BroadcastQueueModernImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :pswitch_1
    move-object v0, p0

    .line 57
    check-cast v0, Lcom/android/server/am/BroadcastQueueModernImpl;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    iget-object p0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 63
    .line 64
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    const/4 v6, 0x2

    .line 69
    const-string/jumbo v7, "mBroadcastConsumerSkipAndCanceled"

    .line 70
    .line 71
    .line 72
    const/4 v1, 0x0

    .line 73
    const/4 v2, 0x0

    .line 74
    move-object v3, p1

    .line 75
    move v4, p2

    .line 76
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/BroadcastQueueModernImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const/4 p0, 0x0

    .line 80
    iput p0, p1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    .line 81
    .line 82
    const/4 p0, 0x0

    .line 83
    iput-object p0, p1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    .line 84
    .line 85
    iput-object p0, p1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    .line 86
    .line 87
    return-void

    .line 88
    :pswitch_2
    move-object v0, p0

    .line 89
    check-cast v0, Lcom/android/server/am/BroadcastQueueModernImpl;

    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    iget-object p0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 95
    .line 96
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    const/4 v1, 0x0

    .line 101
    const/4 v2, 0x0

    .line 102
    const/4 v6, 0x2

    .line 103
    const-string/jumbo v7, "mBroadcastConsumerSkip"

    .line 104
    .line 105
    .line 106
    move-object v3, p1

    .line 107
    move v4, p2

    .line 108
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/BroadcastQueueModernImpl;->setDeliveryState(Lcom/android/server/am/BroadcastProcessQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;ILjava/lang/Object;ILjava/lang/String;)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    nop

    .line 113
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public test(Lcom/android/server/am/BroadcastRecord;I)Z
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/android/server/am/BroadcastRecord;->getReceiverPackageName(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method
