.class public final Lcom/android/server/power/stats/UserPowerCalculator;
.super Lcom/android/server/power/stats/PowerCalculator;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final calculate(Landroid/os/BatteryUsageStats$Builder;Landroid/os/BatteryStats;JJLandroid/os/BatteryUsageStatsQuery;)V
    .locals 0

    .line 1
    invoke-virtual {p7}, Landroid/os/BatteryUsageStatsQuery;->getUserIds()[I

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 p2, -0x1

    .line 6
    invoke-static {p0, p2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats$Builder;->getUidBatteryConsumerBuilders()Landroid/util/SparseArray;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    add-int/lit8 p3, p3, -0x1

    .line 22
    .line 23
    :goto_0
    if-ltz p3, :cond_4

    .line 24
    .line 25
    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p4

    .line 29
    check-cast p4, Landroid/os/UidBatteryConsumer$Builder;

    .line 30
    .line 31
    invoke-virtual {p4}, Landroid/os/UidBatteryConsumer$Builder;->isVirtualUid()Z

    .line 32
    .line 33
    .line 34
    move-result p5

    .line 35
    if-eqz p5, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    invoke-virtual {p4}, Landroid/os/UidBatteryConsumer$Builder;->getUid()I

    .line 39
    .line 40
    .line 41
    move-result p5

    .line 42
    invoke-static {p5}, Landroid/os/UserHandle;->getAppId(I)I

    .line 43
    .line 44
    .line 45
    move-result p6

    .line 46
    const/16 p7, 0x2710

    .line 47
    .line 48
    if-ge p6, p7, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    invoke-static {p5}, Landroid/os/UserHandle;->getUserId(I)I

    .line 52
    .line 53
    .line 54
    move-result p5

    .line 55
    invoke-static {p0, p5}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    .line 56
    .line 57
    .line 58
    move-result p6

    .line 59
    if-nez p6, :cond_3

    .line 60
    .line 61
    invoke-virtual {p4}, Landroid/os/UidBatteryConsumer$Builder;->excludeFromBatteryUsageStats()Landroid/os/UidBatteryConsumer$Builder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p5}, Landroid/os/BatteryUsageStats$Builder;->getOrCreateUserBatteryConsumerBuilder(I)Landroid/os/UserBatteryConsumer$Builder;

    .line 65
    .line 66
    .line 67
    move-result-object p5

    .line 68
    invoke-virtual {p5, p4}, Landroid/os/UserBatteryConsumer$Builder;->addUidBatteryConsumer(Landroid/os/UidBatteryConsumer$Builder;)V

    .line 69
    .line 70
    .line 71
    :cond_3
    :goto_1
    add-int/lit8 p3, p3, -0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_4
    return-void
.end method

.method public final isPowerComponentSupported(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method
