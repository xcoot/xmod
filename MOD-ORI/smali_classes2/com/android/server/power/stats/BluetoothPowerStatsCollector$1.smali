.class public final Lcom/android/server/power/stats/BluetoothPowerStatsCollector$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;


# instance fields
.field public final synthetic val$immediateFuture:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$1;->val$immediateFuture:Ljava/util/concurrent/CompletableFuture;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBluetoothActivityEnergyInfoAvailable(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$1;->val$immediateFuture:Ljava/util/concurrent/CompletableFuture;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onBluetoothActivityEnergyInfoError(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BluetoothPowerStatsCollector$1;->val$immediateFuture:Ljava/util/concurrent/CompletableFuture;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/RuntimeException;

    .line 4
    .line 5
    const-string v1, "error: "

    .line 6
    .line 7
    invoke-static {p1, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method
