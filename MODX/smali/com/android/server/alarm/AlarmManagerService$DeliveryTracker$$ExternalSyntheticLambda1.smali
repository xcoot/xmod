.class public final synthetic Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

.field public final synthetic f$1:Lcom/android/server/alarm/Alarm;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;Lcom/android/server/alarm/Alarm;ZZI)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

    .line 5
    iput-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/alarm/Alarm;

    .line 7
    iput-boolean p3, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticLambda1;->f$2:Z

    .line 9
    iput-boolean p4, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticLambda1;->f$3:Z

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public final updateAlarmDelivery(Lcom/android/server/alarm/Alarm;)Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticLambda1;->f$3:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    iget-boolean v2, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticLambda1;->f$2:Z

    .line 6
    const/4 v3, 0x0

    .line 7
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/alarm/Alarm;

    .line 9
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

    .line 11
    iget p0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 13
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    packed-switch p0, :pswitch_data_0

    .line 19
    iget p0, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 21
    iget v6, v4, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 23
    if-ne p0, v6, :cond_5

    .line 25
    iget p0, v4, Lcom/android/server/alarm/Alarm;->flags:I

    .line 27
    and-int/lit8 p0, p0, 0x40

    .line 29
    if-nez p0, :cond_0

    .line 31
    goto :goto_3

    .line 32
    :cond_0
    if-eqz v2, :cond_1

    .line 34
    iget-object p0, v5, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 36
    sget-object v2, Lcom/android/server/alarm/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_1

    .line 44
    move p0, v1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move p0, v3

    .line 47
    :goto_0
    if-eqz v0, :cond_2

    .line 49
    iget-object v0, v5, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 51
    sget-object v2, Lcom/android/server/alarm/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    .line 53
    invoke-virtual {v0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnBatterySaver(Lcom/android/server/alarm/Alarm;)Z

    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_2

    .line 59
    move p1, v1

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    move p1, v3

    .line 62
    :goto_1
    if-nez p0, :cond_4

    .line 64
    if-eqz p1, :cond_3

    .line 66
    goto :goto_2

    .line 67
    :cond_3
    move v1, v3

    .line 68
    :cond_4
    :goto_2
    move v3, v1

    .line 69
    :cond_5
    :goto_3
    return v3

    .line 70
    :pswitch_0
    iget p0, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 72
    iget v4, v4, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 74
    if-ne p0, v4, :cond_b

    .line 76
    invoke-static {p1}, Lcom/android/server/alarm/AlarmManagerService;->isAllowedWhileIdleRestricted(Lcom/android/server/alarm/Alarm;)Z

    .line 79
    move-result p0

    .line 80
    if-nez p0, :cond_6

    .line 82
    goto :goto_7

    .line 83
    :cond_6
    if-eqz v2, :cond_7

    .line 85
    iget-object p0, v5, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    .line 90
    move-result p0

    .line 91
    if-eqz p0, :cond_7

    .line 93
    move p0, v1

    .line 94
    goto :goto_4

    .line 95
    :cond_7
    move p0, v3

    .line 96
    :goto_4
    if-eqz v0, :cond_8

    .line 98
    iget-object v0, v5, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 100
    invoke-virtual {v0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnBatterySaver(Lcom/android/server/alarm/Alarm;)Z

    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_8

    .line 106
    move p1, v1

    .line 107
    goto :goto_5

    .line 108
    :cond_8
    move p1, v3

    .line 109
    :goto_5
    if-nez p0, :cond_a

    .line 111
    if-eqz p1, :cond_9

    .line 113
    goto :goto_6

    .line 114
    :cond_9
    move v1, v3

    .line 115
    :cond_a
    :goto_6
    move v3, v1

    .line 116
    :cond_b
    :goto_7
    return v3

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
