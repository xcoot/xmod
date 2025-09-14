.class public final Lcom/android/server/battery/batteryInfo/BattInfoManager$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/battery/batteryInfo/BattInfoManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/battery/batteryInfo/BattInfoManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager$1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager$1;->this$0:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager$1;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager$1;->this$0:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 8
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mAsocData:Lcom/android/server/battery/batteryInfo/AsocData;

    .line 10
    invoke-virtual {p0}, Lcom/android/server/battery/batteryInfo/AsocData;->updateAndSet()V

    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager$1;->this$0:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 16
    iget-object v0, v0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mHandler:Landroid/os/Handler;

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 22
    iget-object v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager$1;->this$0:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 24
    iget-object v0, v0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mFirstUseDateData:Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    .line 26
    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0}, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->unregisterFudReceiver()V

    .line 31
    invoke-virtual {v0}, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->unregisterDateChangedReceiver()V

    .line 34
    iget-object v1, v0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mHandler:Landroid/os/Handler;

    .line 36
    new-instance v2, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;

    .line 38
    const/4 v3, 0x0

    .line 39
    invoke-direct {v2, v3, v0}, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;-><init>(ILjava/lang/Object;)V

    .line 42
    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 45
    :cond_0
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager$1;->this$0:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    .line 47
    invoke-virtual {p0}, Lcom/android/server/battery/batteryInfo/BattInfoManager;->init()V

    .line 50
    return-void

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
