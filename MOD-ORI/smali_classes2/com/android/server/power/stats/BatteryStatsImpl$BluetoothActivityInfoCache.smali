.class public final Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothActivityInfoCache;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public energy:J

.field public idleTimeMs:J

.field public rxTimeMs:J

.field public txTimeMs:J

.field public uidRxBytes:Landroid/util/SparseLongArray;

.field public uidTxBytes:Landroid/util/SparseLongArray;


# virtual methods
.method public final set(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerIdleTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothActivityInfoCache;->idleTimeMs:J

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerRxTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothActivityInfoCache;->rxTimeMs:J

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerTxTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothActivityInfoCache;->txTimeMs:J

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerEnergyUsed()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    iput-wide v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothActivityInfoCache;->energy:J

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getUidTraffic()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getUidTraffic()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Landroid/bluetooth/UidTraffic;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothActivityInfoCache;->uidRxBytes:Landroid/util/SparseLongArray;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/bluetooth/UidTraffic;->getUid()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-virtual {v0}, Landroid/bluetooth/UidTraffic;->getRxBytes()J

    .line 62
    .line 63
    .line 64
    move-result-wide v3

    .line 65
    invoke-virtual {v1, v2, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothActivityInfoCache;->uidTxBytes:Landroid/util/SparseLongArray;

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/bluetooth/UidTraffic;->getUid()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    invoke-virtual {v0}, Landroid/bluetooth/UidTraffic;->getTxBytes()J

    .line 75
    .line 76
    .line 77
    move-result-wide v3

    .line 78
    invoke-virtual {v1, v2, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    return-void
.end method
