.class public final synthetic Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoListener;


# instance fields
.field public final synthetic f$0:Landroid/os/SynchronousResultReceiver;


# direct methods
.method public synthetic constructor <init>(Landroid/os/SynchronousResultReceiver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda6;->f$0:Landroid/os/SynchronousResultReceiver;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onWifiActivityEnergyInfo(Landroid/os/connectivity/WifiActivityEnergyInfo;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryExternalStatsWorker$$ExternalSyntheticLambda6;->f$0:Landroid/os/SynchronousResultReceiver;

    .line 2
    .line 3
    new-instance v0, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "controller_activity"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1, v0}, Landroid/os/SynchronousResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
