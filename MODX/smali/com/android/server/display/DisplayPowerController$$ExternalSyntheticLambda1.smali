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

    .line 3
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/DisplayPowerController;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/display/DisplayPowerController;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    new-instance v0, Landroid/content/IntentFilter;

    .line 13
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 16
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 23
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mShutdownReceiver:Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;

    .line 25
    const/4 v3, 0x0

    .line 26
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 28
    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 31
    return-void

    .line 32
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->postBrightnessChangeRunnable()V

    .line 35
    return-void

    .line 36
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 39
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->postBrightnessChangeRunnable()V

    .line 42
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 44
    if-eqz p0, :cond_0

    .line 46
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    .line 48
    const/4 v0, 0x6

    .line 49
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 52
    :cond_0
    return-void

    .line 53
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    .line 56
    return-void

    .line 57
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 60
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->postBrightnessChangeRunnable()V

    .line 63
    return-void

    .line 64
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

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
