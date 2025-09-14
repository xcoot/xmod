.class public final Lcom/android/server/alarm/AlarmManagerService$5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/alarm/AlarmManagerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/alarm/AlarmManagerService$5;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$5;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/server/alarm/AlarmManagerService$5;->$r8$classId:I

    .line 3
    packed-switch p0, :pswitch_data_0

    .line 6
    check-cast p1, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 8
    check-cast p2, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 10
    iget-wide p0, p1, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->aggregateTime:J

    .line 12
    iget-wide v0, p2, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->aggregateTime:J

    .line 14
    cmp-long p0, p0, v0

    .line 16
    if-gez p0, :cond_0

    .line 18
    const/4 p0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    if-lez p0, :cond_1

    .line 22
    const/4 p0, -0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 p0, 0x0

    .line 25
    :goto_0
    return p0

    .line 26
    :pswitch_0
    check-cast p1, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 28
    check-cast p2, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 30
    iget-wide p0, p1, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->aggregateTime:J

    .line 32
    iget-wide v0, p2, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->aggregateTime:J

    .line 34
    cmp-long p0, p0, v0

    .line 36
    if-gez p0, :cond_2

    .line 38
    const/4 p0, 0x1

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    if-lez p0, :cond_3

    .line 42
    const/4 p0, -0x1

    .line 43
    goto :goto_1

    .line 44
    :cond_3
    const/4 p0, 0x0

    .line 45
    :goto_1
    return p0

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
