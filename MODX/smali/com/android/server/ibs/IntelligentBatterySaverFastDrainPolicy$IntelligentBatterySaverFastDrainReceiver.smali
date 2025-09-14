.class public final Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_5

    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    const/4 p2, -0x1

    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 21
    move-result v0

    .line 22
    sparse-switch v0, :sswitch_data_0

    .line 25
    goto :goto_0

    .line 26
    :sswitch_0
    const-string v0, "android.intent.action.REBOOT"

    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p2, 0x2

    .line 36
    goto :goto_0

    .line 37
    :sswitch_1
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_2

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const/4 p2, 0x1

    .line 47
    goto :goto_0

    .line 48
    :sswitch_2
    const-string v0, "android.intent.action.TIME_SET"

    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_3

    .line 56
    goto :goto_0

    .line 57
    :cond_3
    const/4 p2, 0x0

    .line 58
    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 61
    goto :goto_1

    .line 62
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 64
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mHandler:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;

    .line 66
    if-eqz p0, :cond_5

    .line 68
    const/4 p1, 0x4

    .line 69
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 76
    goto :goto_1

    .line 77
    :pswitch_1
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 79
    iget-object p2, p1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mAlarmManager:Landroid/app/AlarmManager;

    .line 81
    if-eqz p2, :cond_4

    .line 83
    iget-object p1, p1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mTimeoutAlarmListener:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$$ExternalSyntheticLambda0;

    .line 85
    if-eqz p1, :cond_4

    .line 87
    invoke-virtual {p2, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 90
    :cond_4
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 92
    invoke-virtual {p0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->updateActivated()V

    .line 95
    :cond_5
    :goto_1
    return-void

    .line 96
    nop

    .line 97
    :sswitch_data_0
    .sparse-switch
        0x1e1f7f95 -> :sswitch_2
        0x741706da -> :sswitch_1
        0x79950caa -> :sswitch_0
    .end sparse-switch

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
