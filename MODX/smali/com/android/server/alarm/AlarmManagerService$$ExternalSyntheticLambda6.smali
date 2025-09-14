.class public final synthetic Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda6;
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
    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    check-cast p0, Lcom/android/server/alarm/Alarm;

    .line 10
    check-cast p1, Lcom/android/server/alarm/Alarm;

    .line 12
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result p0

    .line 16
    return p0

    .line 17
    :pswitch_0
    check-cast p0, Ljava/lang/String;

    .line 19
    check-cast p1, Lcom/android/server/alarm/Alarm;

    .line 21
    sget-object v0, Lcom/android/server/alarm/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    .line 23
    iget-object p1, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result p0

    .line 29
    return p0

    .line 30
    :pswitch_1
    check-cast p0, Lcom/android/server/alarm/AlarmManagerService;

    .line 32
    check-cast p1, Lcom/android/server/alarm/Alarm;

    .line 34
    sget-object v0, Lcom/android/server/alarm/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->isBackgroundRestricted(Lcom/android/server/alarm/Alarm;)Z

    .line 39
    move-result p0

    .line 40
    return p0

    .line 41
    :pswitch_2
    check-cast p0, [I

    .line 43
    check-cast p1, Lcom/android/server/alarm/Alarm;

    .line 45
    sget-object v0, Lcom/android/server/alarm/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    .line 47
    iget v0, p1, Lcom/android/server/alarm/Alarm;->uid:I

    .line 49
    invoke-static {p0, v0}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    .line 52
    move-result p0

    .line 53
    if-eqz p0, :cond_1

    .line 55
    iget-object p0, p1, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    .line 57
    if-eqz p0, :cond_1

    .line 59
    iget-wide v0, p1, Lcom/android/server/alarm/Alarm;->windowLength:J

    .line 61
    const-wide/16 v2, 0x0

    .line 63
    cmp-long p0, v0, v2

    .line 65
    if-eqz p0, :cond_0

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 70
    const-string v0, "Alarm "

    .line 72
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->listenerTag:Ljava/lang/String;

    .line 77
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v0, " being removed for "

    .line 82
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget v0, p1, Lcom/android/server/alarm/Alarm;->uid:I

    .line 87
    invoke-static {v0}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v0, ":"

    .line 96
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-object p1, p1, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    .line 101
    const-string v0, " because the app got frozen"

    .line 103
    const-string v1, "AlarmManager"

    .line 105
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/ProfileService$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const/4 p0, 0x1

    .line 109
    goto :goto_1

    .line 110
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 111
    :goto_1
    return p0

    .line 112
    nop

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
