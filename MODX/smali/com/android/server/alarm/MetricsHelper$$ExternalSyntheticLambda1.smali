.class public final synthetic Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;
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
    iput p1, p0, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    check-cast p1, Lcom/android/server/alarm/Alarm;

    .line 5
    packed-switch p0, :pswitch_data_0

    .line 8
    iget-object p0, p1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 10
    if-eqz p0, :cond_0

    .line 12
    invoke-virtual {p0}, Landroid/app/PendingIntent;->isService()Z

    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_0

    .line 18
    const/4 p0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    :goto_0
    return p0

    .line 22
    :pswitch_0
    iget-object p0, p1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 24
    if-eqz p0, :cond_1

    .line 26
    invoke-virtual {p0}, Landroid/app/PendingIntent;->isActivity()Z

    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_1

    .line 32
    const/4 p0, 0x1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/4 p0, 0x0

    .line 35
    :goto_1
    return p0

    .line 36
    :pswitch_1
    iget-object p0, p1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 38
    if-eqz p0, :cond_2

    .line 40
    invoke-virtual {p0}, Landroid/app/PendingIntent;->isForegroundService()Z

    .line 43
    move-result p0

    .line 44
    if-eqz p0, :cond_2

    .line 46
    const/4 p0, 0x1

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/4 p0, 0x0

    .line 49
    :goto_2
    return p0

    .line 50
    :pswitch_2
    iget p0, p1, Lcom/android/server/alarm/Alarm;->flags:I

    .line 52
    and-int/lit8 p0, p0, 0x40

    .line 54
    if-eqz p0, :cond_3

    .line 56
    const/4 p0, 0x1

    .line 57
    goto :goto_3

    .line 58
    :cond_3
    const/4 p0, 0x0

    .line 59
    :goto_3
    return p0

    .line 60
    :pswitch_3
    iget p0, p1, Lcom/android/server/alarm/Alarm;->flags:I

    .line 62
    and-int/lit8 p0, p0, 0x4

    .line 64
    if-eqz p0, :cond_4

    .line 66
    const/4 p0, 0x1

    .line 67
    goto :goto_4

    .line 68
    :cond_4
    const/4 p0, 0x0

    .line 69
    :goto_4
    return p0

    .line 70
    :pswitch_4
    iget-boolean p0, p1, Lcom/android/server/alarm/Alarm;->wakeup:Z

    .line 72
    return p0

    .line 73
    :pswitch_5
    iget p0, p1, Lcom/android/server/alarm/Alarm;->type:I

    .line 75
    invoke-static {p0}, Lcom/android/server/alarm/AlarmManagerService;->isRtc(I)Z

    .line 78
    move-result p0

    .line 79
    return p0

    .line 80
    :pswitch_6
    iget-object p0, p1, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 82
    if-eqz p0, :cond_5

    .line 84
    const/4 p0, 0x1

    .line 85
    goto :goto_5

    .line 86
    :cond_5
    const/4 p0, 0x0

    .line 87
    :goto_5
    return p0

    .line 88
    :pswitch_7
    iget-wide p0, p1, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    .line 90
    const-wide/16 v0, 0x0

    .line 92
    cmp-long p0, p0, v0

    .line 94
    if-eqz p0, :cond_6

    .line 96
    const/4 p0, 0x1

    .line 97
    goto :goto_6

    .line 98
    :cond_6
    const/4 p0, 0x0

    .line 99
    :goto_6
    return p0

    .line 100
    :pswitch_8
    iget-object p0, p1, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    .line 102
    if-eqz p0, :cond_7

    .line 104
    const/4 p0, 0x1

    .line 105
    goto :goto_7

    .line 106
    :cond_7
    const/4 p0, 0x0

    .line 107
    :goto_7
    return p0

    .line 108
    :pswitch_9
    iget-wide p0, p1, Lcom/android/server/alarm/Alarm;->windowLength:J

    .line 110
    const-wide/16 v0, 0x0

    .line 112
    cmp-long p0, p0, v0

    .line 114
    if-nez p0, :cond_8

    .line 116
    const/4 p0, 0x1

    .line 117
    goto :goto_8

    .line 118
    :cond_8
    const/4 p0, 0x0

    .line 119
    :goto_8
    return p0

    .line 120
    nop

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
