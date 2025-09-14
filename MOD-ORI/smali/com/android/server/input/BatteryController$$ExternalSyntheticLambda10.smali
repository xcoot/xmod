.class public final synthetic Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/BatteryController$State;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/BatteryController$State;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/input/BatteryController$State;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/input/BatteryController$State;

    .line 2
    .line 3
    check-cast p1, Ljava/lang/Integer;

    .line 4
    .line 5
    check-cast p2, Lcom/android/server/input/BatteryController$ListenerRecord;

    .line 6
    .line 7
    sget-boolean p1, Lcom/android/server/input/BatteryController;->DEBUG:Z

    .line 8
    .line 9
    iget-object p1, p2, Lcom/android/server/input/BatteryController$ListenerRecord;->mMonitoredDevices:Ljava/util/Set;

    .line 10
    .line 11
    iget v0, p0, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast p1, Landroid/util/ArraySet;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-static {p2, p0}, Lcom/android/server/input/BatteryController;->notifyBatteryListener(Lcom/android/server/input/BatteryController$ListenerRecord;Lcom/android/server/input/BatteryController$State;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
