.class public Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final BATT_DIMENS:[Landroid/os/BatteryConsumer$Dimensions;


# instance fields
.field public mPercentage:[D

.field public mUsage:[D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Landroid/os/BatteryConsumer$Dimensions;

    .line 3
    .line 4
    new-instance v1, Landroid/os/BatteryConsumer$Dimensions;

    .line 5
    .line 6
    const/4 v2, -0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v1, v2, v3}, Landroid/os/BatteryConsumer$Dimensions;-><init>(II)V

    .line 9
    .line 10
    .line 11
    aput-object v1, v0, v3

    .line 12
    .line 13
    new-instance v1, Landroid/os/BatteryConsumer$Dimensions;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Landroid/os/BatteryConsumer$Dimensions;-><init>(II)V

    .line 17
    .line 18
    .line 19
    aput-object v1, v0, v3

    .line 20
    .line 21
    new-instance v1, Landroid/os/BatteryConsumer$Dimensions;

    .line 22
    .line 23
    const/4 v3, 0x2

    .line 24
    invoke-direct {v1, v2, v3}, Landroid/os/BatteryConsumer$Dimensions;-><init>(II)V

    .line 25
    .line 26
    .line 27
    aput-object v1, v0, v3

    .line 28
    .line 29
    new-instance v1, Landroid/os/BatteryConsumer$Dimensions;

    .line 30
    .line 31
    const/4 v3, 0x3

    .line 32
    invoke-direct {v1, v2, v3}, Landroid/os/BatteryConsumer$Dimensions;-><init>(II)V

    .line 33
    .line 34
    .line 35
    aput-object v1, v0, v3

    .line 36
    .line 37
    new-instance v1, Landroid/os/BatteryConsumer$Dimensions;

    .line 38
    .line 39
    const/4 v3, 0x4

    .line 40
    invoke-direct {v1, v2, v3}, Landroid/os/BatteryConsumer$Dimensions;-><init>(II)V

    .line 41
    .line 42
    .line 43
    aput-object v1, v0, v3

    .line 44
    .line 45
    sput-object v0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->BATT_DIMENS:[Landroid/os/BatteryConsumer$Dimensions;

    .line 46
    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    return-void

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-object v0, p1, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    array-length v0, v0

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    .line 5
    iget-object v1, p1, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget-object v0, p1, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    if-eqz v0, :cond_0

    .line 7
    array-length v0, v0

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    .line 8
    iget-object p0, p1, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    array-length p1, p0

    invoke-static {p0, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    :goto_0
    return-void
.end method


# virtual methods
.method public add(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p1, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    .line 8
    .line 9
    aget-wide v3, v2, v0

    .line 10
    .line 11
    aget-wide v5, v1, v0

    .line 12
    .line 13
    add-double/2addr v3, v5

    .line 14
    aput-wide v3, v2, v0

    .line 15
    .line 16
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method public final calcPercentage(ILcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    array-length v0, v0

    .line 8
    array-length v2, v1

    .line 9
    if-eq v0, v2, :cond_1

    .line 10
    .line 11
    :cond_0
    array-length v0, v1

    .line 12
    new-array v0, v0, [D

    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    .line 15
    .line 16
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    if-lez p1, :cond_2

    .line 20
    .line 21
    iget-object v2, p2, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    .line 22
    .line 23
    check-cast v2, Lcom/android/server/am/AppBatteryTracker;

    .line 24
    .line 25
    iget-object v2, v2, Lcom/android/server/am/AppBatteryTracker;->mDebugUidPercentages:Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    move-object p1, v0

    .line 38
    :goto_0
    if-eqz p1, :cond_3

    .line 39
    .line 40
    iget-object v0, p1, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    .line 41
    .line 42
    :cond_3
    const/4 p1, 0x0

    .line 43
    :goto_1
    array-length v2, v1

    .line 44
    if-ge p1, v2, :cond_5

    .line 45
    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    aget-wide v2, v0, p1

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_4
    aget-wide v2, v1, p1

    .line 52
    .line 53
    iget v4, p2, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBatteryFullChargeMah:I

    .line 54
    .line 55
    int-to-double v4, v4

    .line 56
    div-double/2addr v2, v4

    .line 57
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 58
    .line 59
    mul-double/2addr v2, v4

    .line 60
    :goto_2
    aput-wide v2, p0, p1

    .line 61
    .line 62
    add-int/lit8 p1, p1, 0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_5
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    check-cast p1, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 6
    .line 7
    move v1, v0

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    .line 9
    .line 10
    array-length v3, v2

    .line 11
    if-ge v1, v3, :cond_2

    .line 12
    .line 13
    aget-wide v2, v2, v1

    .line 14
    .line 15
    iget-object v4, p1, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    .line 16
    .line 17
    aget-wide v4, v4, v1

    .line 18
    .line 19
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    return v0

    .line 26
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/4 p0, 0x1

    .line 30
    return p0
.end method

.method public final getUsagePowerMah(I)D
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_3

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    const-wide/16 p0, 0x0

    .line 16
    .line 17
    return-wide p0

    .line 18
    :cond_0
    aget-wide p0, p0, v0

    .line 19
    .line 20
    return-wide p0

    .line 21
    :cond_1
    aget-wide p0, p0, v0

    .line 22
    .line 23
    return-wide p0

    .line 24
    :cond_2
    aget-wide p0, p0, v0

    .line 25
    .line 26
    return-wide p0

    .line 27
    :cond_3
    aget-wide p0, p0, v0

    .line 28
    .line 29
    return-wide p0
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    if-ge v0, v3, :cond_0

    .line 7
    .line 8
    aget-wide v2, v2, v0

    .line 9
    .line 10
    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    mul-int/lit8 v1, v1, 0x1f

    .line 15
    .line 16
    add-int/2addr v1, v2

    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return v1
.end method

.method public final percentageToString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    aget-wide v0, p0, v0

    .line 5
    .line 6
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x1

    .line 11
    aget-wide v1, p0, v1

    .line 12
    .line 13
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x2

    .line 18
    aget-wide v2, p0, v2

    .line 19
    .line 20
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const/4 v3, 0x3

    .line 25
    aget-wide v3, p0, v3

    .line 26
    .line 27
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const/4 v4, 0x4

    .line 32
    aget-wide v4, p0, v4

    .line 33
    .line 34
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const-string v0, "%4.2f%% %4.2f%% %4.2f%% %4.2f%% %4.2f%%"

    .line 43
    .line 44
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method

.method public final scaleInternal(D)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    aget-wide v2, v1, v0

    .line 8
    .line 9
    mul-double/2addr v2, p1

    .line 10
    aput-wide v2, v1, v0

    .line 11
    .line 12
    add-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method

.method public subtract(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p1, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    .line 8
    .line 9
    aget-wide v3, v2, v0

    .line 10
    .line 11
    aget-wide v5, v1, v0

    .line 12
    .line 13
    sub-double/2addr v3, v5

    .line 14
    const-wide/16 v5, 0x0

    .line 15
    .line 16
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(DD)D

    .line 17
    .line 18
    .line 19
    move-result-wide v3

    .line 20
    aput-wide v3, v2, v0

    .line 21
    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    .line 3
    .line 4
    aget-wide v0, p0, v0

    .line 5
    .line 6
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x1

    .line 11
    aget-wide v1, p0, v1

    .line 12
    .line 13
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x2

    .line 18
    aget-wide v2, p0, v2

    .line 19
    .line 20
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const/4 v3, 0x3

    .line 25
    aget-wide v3, p0, v3

    .line 26
    .line 27
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const/4 v4, 0x4

    .line 32
    aget-wide v4, p0, v4

    .line 33
    .line 34
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    const-string v0, "%.3f %.3f %.3f %.3f %.3f mAh"

    .line 43
    .line 44
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method
