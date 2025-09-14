.class public final synthetic Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda8;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "com.google.android.gms"

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    const-string/jumbo v0, "com.google.android.intent.action.GCM_RECONNECT"

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda8;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget v2, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 4
    .line 5
    packed-switch v2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v2, Ljava/lang/String;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Ljava/lang/String;

    .line 15
    .line 16
    check-cast p1, Lcom/android/server/alarm/Alarm;

    .line 17
    .line 18
    sget-object v3, Lcom/android/server/alarm/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    .line 19
    .line 20
    iget-object v3, p1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 21
    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    iget-object v2, p1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    iget-object p1, p1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-eqz p0, :cond_0

    .line 57
    .line 58
    move v0, v1

    .line 59
    :cond_0
    return v0

    .line 60
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v2, Landroid/app/PendingIntent;

    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p0, Landroid/app/IAlarmListener;

    .line 67
    .line 68
    check-cast p1, Lcom/android/server/alarm/Alarm;

    .line 69
    .line 70
    sget-object v3, Lcom/android/server/alarm/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    .line 71
    .line 72
    iget-object v3, p1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 73
    .line 74
    if-eqz v3, :cond_1

    .line 75
    .line 76
    invoke-virtual {v3, v2}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    if-eqz p0, :cond_2

    .line 82
    .line 83
    iget-object p1, p1, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    .line 84
    .line 85
    invoke-interface {p1}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-interface {p0}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-interface {p1, p0}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    if-eqz p0, :cond_2

    .line 98
    .line 99
    move v0, v1

    .line 100
    :cond_2
    :goto_0
    return v0

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
