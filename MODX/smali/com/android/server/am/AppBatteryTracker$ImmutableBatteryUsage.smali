.class public final Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
.super Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final add(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 3
    const-string p1, "Readonly"

    .line 5
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p0
.end method

.method public final subtract(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 3
    const-string p1, "Readonly"

    .line 5
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p0
.end method
