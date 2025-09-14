.class public final Lcom/android/server/power/Notifier$3;
.super Landroid/content/IIntentReceiver$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/power/Notifier;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/Notifier;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/power/Notifier$3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/power/Notifier$3;->this$0:Lcom/android/server/power/Notifier;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/android/server/power/Notifier$3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide p2

    .line 15
    iget-object p4, p0, Lcom/android/server/power/Notifier$3;->this$0:Lcom/android/server/power/Notifier;

    .line 16
    .line 17
    iget-wide p4, p4, Lcom/android/server/power/Notifier;->mBroadcastStartTime:J

    .line 18
    .line 19
    sub-long/2addr p2, p4

    .line 20
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    const/4 p3, 0x1

    .line 25
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/16 p2, 0xaa6

    .line 34
    .line 35
    invoke-static {p2, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/power/Notifier$3;->this$0:Lcom/android/server/power/Notifier;

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :pswitch_0
    const/4 p1, 0x1

    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 50
    .line 51
    .line 52
    move-result-wide p2

    .line 53
    iget-object p4, p0, Lcom/android/server/power/Notifier$3;->this$0:Lcom/android/server/power/Notifier;

    .line 54
    .line 55
    iget-wide p4, p4, Lcom/android/server/power/Notifier;->mBroadcastStartTime:J

    .line 56
    .line 57
    sub-long/2addr p2, p4

    .line 58
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    filled-new-array {p1, p2, p1}, [Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const/16 p2, 0xaa6

    .line 67
    .line 68
    invoke-static {p2, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 69
    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/server/power/Notifier$3;->this$0:Lcom/android/server/power/Notifier;

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/android/server/power/Notifier;->sendNextBroadcast()V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
