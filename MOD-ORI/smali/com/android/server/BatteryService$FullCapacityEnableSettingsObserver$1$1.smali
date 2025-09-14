.class public final Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$2:Lcom/android/server/BatteryService$31;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/BatteryService$31;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1$1;->this$2:Lcom/android/server/BatteryService$31;

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
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1$1;->this$2:Lcom/android/server/BatteryService$31;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lcom/android/server/BatteryService$15;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-static {p0, v0}, Lcom/android/server/BatteryService;->-$$Nest$mactivateSleepChargingManager(Lcom/android/server/BatteryService;Z)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1$1;->this$2:Lcom/android/server/BatteryService$31;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/BatteryService$31;->val$intent:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Lcom/android/server/BatteryService$15;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    invoke-static {p0, v0}, Lcom/android/server/BatteryService;->-$$Nest$mactivateSleepChargingManager(Lcom/android/server/BatteryService;Z)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
