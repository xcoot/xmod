.class public final Lcom/android/server/location/injector/SystemEmergencyHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/location/injector/SystemEmergencyHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/injector/SystemEmergencyHelper;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/location/injector/SystemEmergencyHelper$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/location/injector/SystemEmergencyHelper$1;->this$0:Lcom/android/server/location/injector/SystemEmergencyHelper;

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
    .locals 3

    .line 1
    iget p1, p0, Lcom/android/server/location/injector/SystemEmergencyHelper$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string p1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper$1;->this$0:Lcom/android/server/location/injector/SystemEmergencyHelper;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/location/injector/EmergencyHelper;->dispatchEmergencyStateChanged()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void

    .line 25
    :pswitch_0
    const-string p1, "android.intent.action.NEW_OUTGOING_CALL"

    .line 26
    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_1
    iget-object p1, p0, Lcom/android/server/location/injector/SystemEmergencyHelper$1;->this$0:Lcom/android/server/location/injector/SystemEmergencyHelper;

    .line 39
    .line 40
    monitor-enter p1

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper$1;->this$0:Lcom/android/server/location/injector/SystemEmergencyHelper;

    .line 42
    .line 43
    iget-object v1, v0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 44
    .line 45
    const-string v2, "android.intent.extra.PHONE_NUMBER"

    .line 46
    .line 47
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {v1, p2}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    iput-boolean p2, v0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mIsInEmergencyCall:Z

    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper$1;->this$0:Lcom/android/server/location/injector/SystemEmergencyHelper;

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/android/server/location/injector/EmergencyHelper;->dispatchEmergencyStateChanged()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_3

    .line 65
    :catch_0
    move-exception p0

    .line 66
    :try_start_1
    const-string p2, "LocationManagerService"

    .line 67
    .line 68
    const-string v0, "Failed to call TelephonyManager.isEmergencyNumber()."

    .line 69
    .line 70
    invoke-static {p2, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    .line 72
    .line 73
    :goto_1
    monitor-exit p1

    .line 74
    :goto_2
    return-void

    .line 75
    :goto_3
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    throw p0

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
