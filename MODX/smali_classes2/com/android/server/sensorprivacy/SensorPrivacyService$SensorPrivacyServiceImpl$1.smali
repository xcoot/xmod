.class public final Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$1;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    iget p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$1;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;

    .line 9
    .line 10
    new-instance v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda1;

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    invoke-direct {v0, v1, p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p1, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v1

    .line 19
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/android/server/sensorprivacy/SensorPrivacyStateControllerImpl;->forEachStateLocked(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda1;)V

    .line 20
    .line 21
    .line 22
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$1;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 24
    .line 25
    sget-object p1, Landroid/hardware/SensorPrivacyManager;->EXTRA_SENSOR:Ljava/lang/String;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    const/4 p2, 0x1

    .line 36
    if-ne p1, p2, :cond_0

    .line 37
    .line 38
    const/16 p1, 0x41

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/16 p1, 0x42

    .line 42
    .line 43
    :goto_0
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    throw p0

    .line 54
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$1;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 55
    .line 56
    const-string v0, "android.intent.extra.USER"

    .line 57
    .line 58
    const-class v1, Landroid/os/UserHandle;

    .line 59
    .line 60
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Landroid/os/UserHandle;

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    sget-object v1, Landroid/hardware/SensorPrivacyManager;->EXTRA_SENSOR:Ljava/lang/String;

    .line 71
    .line 72
    const/4 v2, 0x0

    .line 73
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    const/4 v3, 0x5

    .line 78
    invoke-virtual {p1, v0, v3, v1, v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->setToggleSensorPrivacy(IIIZ)V

    .line 79
    .line 80
    .line 81
    sget-object p1, Landroid/hardware/SensorPrivacyManager;->EXTRA_NOTIFICATION_ID:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_1

    .line 88
    .line 89
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$1;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 90
    .line 91
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 92
    .line 93
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 94
    .line 95
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 96
    .line 97
    .line 98
    :cond_1
    return-void

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
