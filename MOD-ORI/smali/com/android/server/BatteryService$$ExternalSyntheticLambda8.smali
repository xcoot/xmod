.class public final synthetic Lcom/android/server/BatteryService$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/BatteryService;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/BatteryService;Landroid/content/Intent;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/BatteryService;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda8;->f$1:Landroid/content/Intent;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/BatteryService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda8;->f$1:Landroid/content/Intent;

    .line 9
    .line 10
    const/4 v1, -0x1

    .line 11
    iget-object v0, v0, Lcom/android/server/BatteryService;->mBatteryChangedOptions:Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-static {p0, v1, v0, v1}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;ILandroid/os/Bundle;I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/BatteryService;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda8;->f$1:Landroid/content/Intent;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v2, "Sending ACTION_SEC_BATTERY_CURRENT_CHANGED: current_now:"

    .line 31
    .line 32
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 36
    .line 37
    iget v0, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentNow:I

    .line 38
    .line 39
    const-string v2, "BatteryService"

    .line 40
    .line 41
    invoke-static {v1, v0, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    const/4 v0, -0x1

    .line 45
    invoke-static {p0, v0}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
