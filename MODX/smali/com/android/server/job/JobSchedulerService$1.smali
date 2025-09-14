.class public final Lcom/android/server/job/JobSchedulerService$1;
.super Lcom/android/server/job/JobSchedulerService$MySimpleClock;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Ljava/time/ZoneId;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/job/JobSchedulerService$1;->$r8$classId:I

    .line 3
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService$MySimpleClock;-><init>(Ljava/time/ZoneId;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final millis()J
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/server/job/JobSchedulerService$1;->$r8$classId:I

    .line 3
    packed-switch p0, :pswitch_data_0

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    move-result-wide v0

    .line 10
    return-wide v0

    .line 11
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v0

    .line 15
    return-wide v0

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
