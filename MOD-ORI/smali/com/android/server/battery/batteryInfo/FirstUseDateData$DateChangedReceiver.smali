.class public final Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/battery/batteryInfo/FirstUseDateData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/battery/batteryInfo/FirstUseDateData;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;->this$0:Lcom/android/server/battery/batteryInfo/FirstUseDateData;

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
    .locals 2

    .line 1
    iget p1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;->this$0:Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "[WriteFirstUseDateReceiver_onReceive]intent:"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;->this$0:Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    .line 32
    .line 33
    iget-object p2, p1, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mHandler:Landroid/os/Handler;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mUpdateDateRunnable:Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;

    .line 36
    .line 37
    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;->this$0:Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mHandler:Landroid/os/Handler;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mUpdateDateRunnable:Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;

    .line 45
    .line 46
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;->this$0:Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    .line 51
    .line 52
    iget-object p1, p1, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    .line 53
    .line 54
    const-string p2, "[DateChangedReceiver_onReceive]"

    .line 55
    .line 56
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;->this$0:Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    .line 60
    .line 61
    iget-object p1, p1, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mHandler:Landroid/os/Handler;

    .line 62
    .line 63
    new-instance p2, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;

    .line 64
    .line 65
    const/4 v0, 0x2

    .line 66
    invoke-direct {p2, v0, p0}, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;-><init>(ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
