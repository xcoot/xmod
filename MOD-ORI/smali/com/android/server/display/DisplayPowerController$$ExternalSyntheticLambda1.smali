.class public final synthetic Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayPowerController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/DisplayPowerController;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/DisplayPowerController;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroid/content/IntentFilter;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mShutdownReceiver:Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 27
    .line 28
    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->postBrightnessChangeRunnable()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->postBrightnessChangeRunnable()V

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 43
    .line 44
    if-eqz p0, :cond_0

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    .line 47
    .line 48
    const/4 v0, 0x6

    .line 49
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void

    .line 53
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->postBrightnessChangeRunnable()V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
