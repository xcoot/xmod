.class public final Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public mActiveOverflow:Landroid/util/ArrayMap;

.field public mCurOverflow:Ljava/lang/Object;

.field public mLastCleanupTimeMs:J

.field public mLastOverflowFinishTimeMs:J

.field public mLastOverflowTimeMs:J

.field public final mMap:Landroid/util/ArrayMap;

.field public final mUid:I

.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryStatsImpl$Uid;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mMap:Landroid/util/ArrayMap;

    .line 3
    iput p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mUid:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$Uid;Lcom/android/server/power/stats/BatteryStatsImpl;II)V
    .locals 0

    iput p4, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->$r8$classId:I

    packed-switch p4, :pswitch_data_0

    .line 4
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;-><init>(I)V

    return-void

    .line 5
    :pswitch_0
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;-><init>(I)V

    return-void

    .line 6
    :pswitch_1
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;-><init>(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final add(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, ""

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mMap:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    const-string v0, "*overflow*"

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mCurOverflow:Ljava/lang/Object;

    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public final cleanup(J)V
    .locals 3

    .line 1
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mLastCleanupTimeMs:J

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mActiveOverflow:Landroid/util/ArrayMap;

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mActiveOverflow:Landroid/util/ArrayMap;

    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mActiveOverflow:Landroid/util/ArrayMap;

    .line 17
    .line 18
    const-string v0, "BatteryStatsImpl"

    .line 19
    .line 20
    const-string v1, "*overflow*"

    .line 21
    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mMap:Landroid/util/ArrayMap;

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v2, "Cleaning up with no active overflow, but have overflow entry "

    .line 35
    .line 36
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mMap:Landroid/util/ArrayMap;

    .line 40
    .line 41
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mMap:Landroid/util/ArrayMap;

    .line 56
    .line 57
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    :cond_1
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mCurOverflow:Ljava/lang/Object;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mCurOverflow:Ljava/lang/Object;

    .line 64
    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mMap:Landroid/util/ArrayMap;

    .line 68
    .line 69
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-nez p1, :cond_4

    .line 74
    .line 75
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string p2, "Cleaning up with active overflow, but no overflow entry: cur="

    .line 78
    .line 79
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mCurOverflow:Ljava/lang/Object;

    .line 83
    .line 84
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string p2, " map="

    .line 88
    .line 89
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mMap:Landroid/util/ArrayMap;

    .line 93
    .line 94
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    :cond_4
    :goto_0
    return-void
.end method

.method public final instantiateObject()Ljava/lang/Object;
    .locals 15

    .line 1
    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 7
    .line 8
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 9
    .line 10
    iget-object p0, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 13
    .line 14
    iget-object v6, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 15
    .line 16
    iget-object v7, v3, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 17
    .line 18
    const/16 v4, 0xe

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    move-object v1, v0

    .line 22
    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    :pswitch_0
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 27
    .line 28
    iget-object v10, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 29
    .line 30
    iget-object p0, v10, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 31
    .line 32
    iget-object v9, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 33
    .line 34
    iget-object v13, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 35
    .line 36
    iget-object v14, v10, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    .line 37
    .line 38
    const/16 v11, 0xd

    .line 39
    .line 40
    const/4 v12, 0x0

    .line 41
    move-object v8, v0

    .line 42
    invoke-direct/range {v8 .. v14}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    .line 43
    .line 44
    .line 45
    return-object v0

    .line 46
    :pswitch_1
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 51
    .line 52
    invoke-direct {v0}, Landroid/os/BatteryStats$Uid$Wakelock;-><init>()V

    .line 53
    .line 54
    .line 55
    return-object v0

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final startObject(JLjava/lang/String;)Ljava/lang/Object;
    .locals 4

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    const-string p3, ""

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mMap:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mActiveOverflow:Landroid/util/ArrayMap;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    const-string v2, "*overflow*"

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/util/MutableInt;

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mCurOverflow:Ljava/lang/Object;

    .line 30
    .line 31
    if-nez p1, :cond_2

    .line 32
    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string p2, "Have active overflow "

    .line 36
    .line 37
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p2, " but null overflow"

    .line 44
    .line 45
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string p2, "BatteryStatsImpl"

    .line 53
    .line 54
    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->instantiateObject()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mCurOverflow:Ljava/lang/Object;

    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mMap:Landroid/util/ArrayMap;

    .line 64
    .line 65
    invoke-virtual {p0, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    :cond_2
    iget p0, v0, Landroid/util/MutableInt;->value:I

    .line 69
    .line 70
    add-int/2addr p0, v1

    .line 71
    iput p0, v0, Landroid/util/MutableInt;->value:I

    .line 72
    .line 73
    return-object p1

    .line 74
    :cond_3
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mMap:Landroid/util/ArrayMap;

    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    sget v3, Lcom/android/server/power/stats/BatteryStatsImpl;->MAX_WAKELOCKS_PER_UID:I

    .line 81
    .line 82
    if-lt v0, v3, :cond_6

    .line 83
    .line 84
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mCurOverflow:Ljava/lang/Object;

    .line 85
    .line 86
    if-nez v0, :cond_4

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->instantiateObject()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mCurOverflow:Ljava/lang/Object;

    .line 93
    .line 94
    iget-object v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mMap:Landroid/util/ArrayMap;

    .line 95
    .line 96
    invoke-virtual {v3, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    :cond_4
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mActiveOverflow:Landroid/util/ArrayMap;

    .line 100
    .line 101
    if-nez v2, :cond_5

    .line 102
    .line 103
    new-instance v2, Landroid/util/ArrayMap;

    .line 104
    .line 105
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 106
    .line 107
    .line 108
    iput-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mActiveOverflow:Landroid/util/ArrayMap;

    .line 109
    .line 110
    :cond_5
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mActiveOverflow:Landroid/util/ArrayMap;

    .line 111
    .line 112
    new-instance v3, Landroid/util/MutableInt;

    .line 113
    .line 114
    invoke-direct {v3, v1}, Landroid/util/MutableInt;-><init>(I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, p3, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mLastOverflowTimeMs:J

    .line 121
    .line 122
    return-object v0

    .line 123
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->instantiateObject()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mMap:Landroid/util/ArrayMap;

    .line 128
    .line 129
    invoke-virtual {p0, p3, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    return-object p1
.end method

.method public final stopObject(JLjava/lang/String;)Ljava/lang/Object;
    .locals 5

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    const-string p3, ""

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mMap:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mActiveOverflow:Landroid/util/ArrayMap;

    .line 15
    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/util/MutableInt;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mCurOverflow:Ljava/lang/Object;

    .line 27
    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    iget v2, v0, Landroid/util/MutableInt;->value:I

    .line 31
    .line 32
    add-int/lit8 v2, v2, -0x1

    .line 33
    .line 34
    iput v2, v0, Landroid/util/MutableInt;->value:I

    .line 35
    .line 36
    if-gtz v2, :cond_2

    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mActiveOverflow:Landroid/util/ArrayMap;

    .line 39
    .line 40
    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    iput-wide p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mLastOverflowFinishTimeMs:J

    .line 44
    .line 45
    :cond_2
    return-object v1

    .line 46
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v1, "Unable to find object for "

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string p3, " in uid "

    .line 60
    .line 61
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mUid:I

    .line 65
    .line 66
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string p3, " mapsize="

    .line 70
    .line 71
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget-object p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mMap:Landroid/util/ArrayMap;

    .line 75
    .line 76
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    .line 77
    .line 78
    .line 79
    move-result p3

    .line 80
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string p3, " activeoverflow="

    .line 84
    .line 85
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mActiveOverflow:Landroid/util/ArrayMap;

    .line 89
    .line 90
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string p3, " curoverflow="

    .line 94
    .line 95
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object p3, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mCurOverflow:Ljava/lang/Object;

    .line 99
    .line 100
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mLastOverflowTimeMs:J

    .line 104
    .line 105
    const-wide/16 v3, 0x0

    .line 106
    .line 107
    cmp-long p3, v1, v3

    .line 108
    .line 109
    if-eqz p3, :cond_4

    .line 110
    .line 111
    const-string p3, " lastOverflowTime="

    .line 112
    .line 113
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mLastOverflowTimeMs:J

    .line 117
    .line 118
    sub-long/2addr v1, p1

    .line 119
    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 120
    .line 121
    .line 122
    :cond_4
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mLastOverflowFinishTimeMs:J

    .line 123
    .line 124
    cmp-long p3, v1, v3

    .line 125
    .line 126
    if-eqz p3, :cond_5

    .line 127
    .line 128
    const-string p3, " lastOverflowFinishTime="

    .line 129
    .line 130
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mLastOverflowFinishTimeMs:J

    .line 134
    .line 135
    sub-long/2addr v1, p1

    .line 136
    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 137
    .line 138
    .line 139
    :cond_5
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mLastCleanupTimeMs:J

    .line 140
    .line 141
    cmp-long p3, v1, v3

    .line 142
    .line 143
    if-eqz p3, :cond_6

    .line 144
    .line 145
    const-string p3, " lastCleanupTime="

    .line 146
    .line 147
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->mLastCleanupTimeMs:J

    .line 151
    .line 152
    sub-long/2addr v1, p1

    .line 153
    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 154
    .line 155
    .line 156
    :cond_6
    const-string p0, "BatteryStatsImpl"

    .line 157
    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    const/4 p0, 0x0

    .line 166
    return-object p0
.end method
