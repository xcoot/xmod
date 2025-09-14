.class public final synthetic Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda10;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda10;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda10;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Landroid/content/Intent;

    .line 9
    .line 10
    check-cast p1, Lcom/android/server/am/BroadcastProcessQueue;

    .line 11
    .line 12
    iget-object v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v0, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    move v0, v1

    .line 30
    :goto_1
    iget-object v3, p1, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    .line 31
    .line 32
    invoke-static {v3, p0}, Lcom/android/server/am/BroadcastProcessQueue;->isDispatchedInQueue(Ljava/util/ArrayDeque;Landroid/content/Intent;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    iget-object v4, p1, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    .line 37
    .line 38
    invoke-static {v4, p0}, Lcom/android/server/am/BroadcastProcessQueue;->isDispatchedInQueue(Ljava/util/ArrayDeque;Landroid/content/Intent;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    iget-object v5, p1, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    .line 43
    .line 44
    invoke-static {v5, p0}, Lcom/android/server/am/BroadcastProcessQueue;->isDispatchedInQueue(Ljava/util/ArrayDeque;Landroid/content/Intent;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    if-eqz v4, :cond_2

    .line 53
    .line 54
    if-nez p0, :cond_4

    .line 55
    .line 56
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isDeferredUntilActive()Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-eqz p0, :cond_3

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_3
    move v1, v2

    .line 64
    :cond_4
    :goto_2
    return v1

    .line 65
    :pswitch_0
    check-cast p0, Ljava/lang/String;

    .line 66
    .line 67
    check-cast p1, Lcom/android/server/am/BroadcastProcessQueue;

    .line 68
    .line 69
    iget-object p1, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    .line 70
    .line 71
    if-nez p1, :cond_5

    .line 72
    .line 73
    const/4 p1, 0x0

    .line 74
    goto :goto_3

    .line 75
    :cond_5
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 76
    .line 77
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 78
    .line 79
    :goto_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    return p0

    .line 84
    nop

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
