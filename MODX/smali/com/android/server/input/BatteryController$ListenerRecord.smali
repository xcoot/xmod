.class public final Lcom/android/server/input/BatteryController$ListenerRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDeathRecipient:Lcom/android/server/input/BatteryController$ListenerRecord$$ExternalSyntheticLambda0;

.field public final mListener:Landroid/hardware/input/IInputDeviceBatteryListener;

.field public final mMonitoredDevices:Ljava/util/Set;

.field public final mPid:I

.field public final synthetic this$0:Lcom/android/server/input/BatteryController;


# direct methods
.method public constructor <init>(Lcom/android/server/input/BatteryController;ILandroid/hardware/input/IInputDeviceBatteryListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/input/BatteryController$ListenerRecord;->this$0:Lcom/android/server/input/BatteryController;

    .line 6
    iput p2, p0, Lcom/android/server/input/BatteryController$ListenerRecord;->mPid:I

    .line 8
    iput-object p3, p0, Lcom/android/server/input/BatteryController$ListenerRecord;->mListener:Landroid/hardware/input/IInputDeviceBatteryListener;

    .line 10
    new-instance p1, Landroid/util/ArraySet;

    .line 12
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/server/input/BatteryController$ListenerRecord;->mMonitoredDevices:Ljava/util/Set;

    .line 17
    new-instance p1, Lcom/android/server/input/BatteryController$ListenerRecord$$ExternalSyntheticLambda0;

    .line 19
    invoke-direct {p1, p0, p2}, Lcom/android/server/input/BatteryController$ListenerRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/BatteryController$ListenerRecord;I)V

    .line 22
    iput-object p1, p0, Lcom/android/server/input/BatteryController$ListenerRecord;->mDeathRecipient:Lcom/android/server/input/BatteryController$ListenerRecord$$ExternalSyntheticLambda0;

    .line 24
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "pid="

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget v1, p0, Lcom/android/server/input/BatteryController$ListenerRecord;->mPid:I

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, ", monitored devices="

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object p0, p0, Lcom/android/server/input/BatteryController$ListenerRecord;->mMonitoredDevices:Ljava/util/Set;

    .line 21
    check-cast p0, Landroid/util/ArraySet;

    .line 23
    invoke-virtual {p0}, Landroid/util/ArraySet;->toArray()[Ljava/lang/Object;

    .line 26
    move-result-object p0

    .line 27
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method
