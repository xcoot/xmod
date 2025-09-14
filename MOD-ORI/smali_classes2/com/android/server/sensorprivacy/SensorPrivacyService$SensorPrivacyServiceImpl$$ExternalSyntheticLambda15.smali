.class public final synthetic Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/HexConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda15;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda15;->$r8$classId:I

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 4
    .line 5
    check-cast p2, Ljava/lang/Integer;

    .line 6
    .line 7
    packed-switch p0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    check-cast p3, Ljava/lang/Integer;

    .line 15
    .line 16
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    check-cast p4, Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    check-cast p5, Ljava/lang/Long;

    .line 27
    .line 28
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    check-cast p6, Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-static/range {v0 .. v5}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->logSensorPrivacyToggle(IIJZZ)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    check-cast p3, Ljava/lang/Integer;

    .line 50
    .line 51
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    check-cast p4, Ljava/lang/Integer;

    .line 56
    .line 57
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result p3

    .line 61
    check-cast p5, Ljava/lang/Long;

    .line 62
    .line 63
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    .line 64
    .line 65
    .line 66
    move-result-wide p4

    .line 67
    check-cast p6, Ljava/lang/Boolean;

    .line 68
    .line 69
    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 70
    .line 71
    .line 72
    move-result p6

    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 77
    .line 78
    .line 79
    move-result-wide v0

    .line 80
    sub-long/2addr v0, p4

    .line 81
    const-wide/32 p4, 0xea60

    .line 82
    .line 83
    .line 84
    div-long/2addr v0, p4

    .line 85
    const-wide/16 p4, 0x0

    .line 86
    .line 87
    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 88
    .line 89
    .line 90
    move-result-wide v6

    .line 91
    const/4 p1, 0x3

    .line 92
    const/4 p4, 0x0

    .line 93
    const/4 p5, 0x2

    .line 94
    const/4 v0, 0x1

    .line 95
    if-nez p6, :cond_0

    .line 96
    .line 97
    if-eq p3, v0, :cond_3

    .line 98
    .line 99
    if-eq p3, p5, :cond_2

    .line 100
    .line 101
    if-eq p3, p1, :cond_1

    .line 102
    .line 103
    :cond_0
    move v4, p4

    .line 104
    goto :goto_0

    .line 105
    :cond_1
    move v4, p1

    .line 106
    goto :goto_0

    .line 107
    :cond_2
    move v4, v0

    .line 108
    goto :goto_0

    .line 109
    :cond_3
    move v4, p5

    .line 110
    :goto_0
    if-eq p2, v0, :cond_5

    .line 111
    .line 112
    if-eq p2, p5, :cond_4

    .line 113
    .line 114
    move v3, p4

    .line 115
    goto :goto_1

    .line 116
    :cond_4
    move v3, p5

    .line 117
    goto :goto_1

    .line 118
    :cond_5
    move v3, v0

    .line 119
    :goto_1
    if-eq p0, v0, :cond_8

    .line 120
    .line 121
    if-eq p0, p5, :cond_7

    .line 122
    .line 123
    if-eq p0, p1, :cond_6

    .line 124
    .line 125
    move v5, p4

    .line 126
    goto :goto_2

    .line 127
    :cond_6
    move v5, v0

    .line 128
    goto :goto_2

    .line 129
    :cond_7
    move v5, p5

    .line 130
    goto :goto_2

    .line 131
    :cond_8
    move v5, p1

    .line 132
    :goto_2
    const/16 v2, 0x17d

    .line 133
    .line 134
    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIJ)V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    nop

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
