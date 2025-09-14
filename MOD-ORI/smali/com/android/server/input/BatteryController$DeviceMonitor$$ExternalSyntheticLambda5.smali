.class public final synthetic Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/BatteryController$DeviceMonitor;

.field public final synthetic f$1:I

.field public final synthetic f$2:[B


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/BatteryController$DeviceMonitor;I[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/input/BatteryController$DeviceMonitor;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda5;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda5;->f$2:[B

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/input/BatteryController$DeviceMonitor;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda5;->f$1:I

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda5;->f$2:[B

    .line 6
    .line 7
    check-cast p1, Ljava/lang/Long;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    invoke-virtual {v0, v2, v3, p0, v1}, Lcom/android/server/input/BatteryController$DeviceMonitor;->updateBluetoothMetadataState(J[BI)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
