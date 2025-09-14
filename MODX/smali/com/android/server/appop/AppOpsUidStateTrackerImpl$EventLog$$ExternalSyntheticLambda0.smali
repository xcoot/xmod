.class public final synthetic Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/HeptConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget p0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    check-cast p1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;

    .line 5
    check-cast p2, Ljava/lang/Long;

    .line 7
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 10
    move-result-wide v0

    .line 11
    check-cast p3, Ljava/lang/Integer;

    .line 13
    packed-switch p0, :pswitch_data_0

    .line 16
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 19
    move-result p0

    .line 20
    check-cast p4, Ljava/lang/Integer;

    .line 22
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 25
    move-result p2

    .line 26
    check-cast p5, Ljava/lang/Integer;

    .line 28
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    .line 31
    move-result p3

    .line 32
    check-cast p6, Ljava/lang/Boolean;

    .line 34
    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    move-result p4

    .line 38
    check-cast p7, Ljava/lang/Boolean;

    .line 40
    invoke-virtual {p7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 43
    move-result p5

    .line 44
    iget p6, p1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogHead:I

    .line 46
    iget p7, p1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogSize:I

    .line 48
    add-int v2, p6, p7

    .line 50
    const/16 v3, 0xc8

    .line 52
    rem-int/2addr v2, v3

    .line 53
    const/4 v4, 0x1

    .line 54
    if-ne p7, v3, :cond_0

    .line 56
    add-int/2addr p6, v4

    .line 57
    rem-int/2addr p6, v3

    .line 58
    iput p6, p1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogHead:I

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    add-int/2addr p7, v4

    .line 62
    iput p7, p1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogSize:I

    .line 64
    :goto_0
    iget-object p6, p1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLog:[[I

    .line 66
    aget-object p6, p6, v2

    .line 68
    const/4 p7, 0x0

    .line 69
    aput p0, p6, p7

    .line 71
    aput p2, p6, v4

    .line 73
    const/4 p0, 0x2

    .line 74
    aput p3, p6, p0

    .line 76
    const/4 p2, 0x3

    .line 77
    aput p7, p6, p2

    .line 79
    if-eqz p4, :cond_1

    .line 81
    aput v4, p6, p2

    .line 83
    :cond_1
    if-eqz p5, :cond_2

    .line 85
    aget p3, p6, p2

    .line 87
    add-int/2addr p3, p0

    .line 88
    aput p3, p6, p2

    .line 90
    :cond_2
    iget-object p0, p1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogTimestamps:[J

    .line 92
    aput-wide v0, p0, v2

    .line 94
    return-void

    .line 95
    :pswitch_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 98
    move-result p0

    .line 99
    check-cast p4, Ljava/lang/Integer;

    .line 101
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 104
    move-result p2

    .line 105
    check-cast p5, Ljava/lang/Integer;

    .line 107
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    .line 110
    move-result p3

    .line 111
    check-cast p6, Ljava/lang/Integer;

    .line 113
    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    .line 116
    move-result p4

    .line 117
    check-cast p7, Ljava/lang/Integer;

    .line 119
    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    .line 122
    move-result p5

    .line 123
    iget p6, p1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogHead:I

    .line 125
    iget p7, p1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogSize:I

    .line 127
    add-int v2, p6, p7

    .line 129
    const/16 v3, 0xc8

    .line 131
    rem-int/2addr v2, v3

    .line 132
    const/4 v4, 0x1

    .line 133
    if-ne p7, v3, :cond_3

    .line 135
    add-int/2addr p6, v4

    .line 136
    rem-int/2addr p6, v3

    .line 137
    iput p6, p1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogHead:I

    .line 139
    goto :goto_1

    .line 140
    :cond_3
    add-int/2addr p7, v4

    .line 141
    iput p7, p1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogSize:I

    .line 143
    :goto_1
    iget-object p6, p1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLog:[[I

    .line 145
    aget-object p6, p6, v2

    .line 147
    const/4 p7, 0x0

    .line 148
    aput p0, p6, p7

    .line 150
    aput p2, p6, v4

    .line 152
    const/4 p0, 0x2

    .line 153
    aput p3, p6, p0

    .line 155
    const/4 p0, 0x3

    .line 156
    aput p4, p6, p0

    .line 158
    const/4 p0, 0x4

    .line 159
    aput p5, p6, p0

    .line 161
    iget-object p0, p1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogTimestamps:[J

    .line 163
    aput-wide v0, p0, v2

    .line 165
    return-void

    .line 166
    nop

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
