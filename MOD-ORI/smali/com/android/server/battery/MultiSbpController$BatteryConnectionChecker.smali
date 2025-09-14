.class public final Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEFAULT_BATTERY_NODES:[Ljava/lang/String;


# instance fields
.field public final FULLY_CONNECTED:I

.field public mCurrentConnections:I

.field public mPreviousConnections:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "/sys/class/power_supply/battery/batt_main_con_det"

    .line 2
    .line 3
    const-string v1, "/sys/class/power_supply/battery/batt_sub_con_det"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->DEFAULT_BATTERY_NODES:[Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, -0x80000000

    .line 5
    .line 6
    iput v0, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->mPreviousConnections:I

    .line 7
    .line 8
    iput v0, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->mCurrentConnections:I

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    int-to-double v0, v0

    .line 12
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 13
    .line 14
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    double-to-int v0, v0

    .line 19
    add-int/lit8 v0, v0, -0x1

    .line 20
    .line 21
    iput v0, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->FULLY_CONNECTED:I

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final check()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    sget-object v3, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->DEFAULT_BATTERY_NODES:[Ljava/lang/String;

    .line 5
    .line 6
    const/4 v4, 0x2

    .line 7
    const-string v5, "[SS]MultiSbpController.BatteryConnectionChecker"

    .line 8
    .line 9
    if-ge v1, v4, :cond_1

    .line 10
    .line 11
    aget-object v4, v3, v1

    .line 12
    .line 13
    const/4 v6, -0x1

    .line 14
    :try_start_0
    invoke-static {v4, v0}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_1

    .line 23
    :catch_0
    const-string v4, "[SS]BattUtils"

    .line 24
    .line 25
    const-string v7, "[readNodeAsInt]NumberFormatException"

    .line 26
    .line 27
    invoke-static {v4, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move v4, v6

    .line 31
    :goto_1
    if-ne v4, v6, :cond_0

    .line 32
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string/jumbo v2, "call wrong battery connection value "

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    aget-object v1, v3, v1

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, "="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move v2, v6

    .line 62
    goto :goto_2

    .line 63
    :cond_0
    shl-int v3, v4, v1

    .line 64
    .line 65
    add-int/2addr v2, v3

    .line 66
    add-int/lit8 v1, v1, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    :goto_2
    iget v0, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->mCurrentConnections:I

    .line 70
    .line 71
    const/high16 v1, -0x80000000

    .line 72
    .line 73
    if-eq v0, v1, :cond_2

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_2
    move v0, v2

    .line 77
    :goto_3
    iput v0, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->mPreviousConnections:I

    .line 78
    .line 79
    iput v2, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->mCurrentConnections:I

    .line 80
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string/jumbo v1, "check previousConnections:"

    .line 84
    .line 85
    .line 86
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget v1, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->mPreviousConnections:I

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v1, " ,currentConnections:"

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget p0, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->mCurrentConnections:I

    .line 100
    .line 101
    invoke-static {v0, p0, v5}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public final isFullyConnected()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->mCurrentConnections:I

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->FULLY_CONNECTED:I

    .line 4
    .line 5
    if-ne v0, p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 2
    .line 3
    iget v0, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->mPreviousConnections:I

    .line 4
    .line 5
    iget v1, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->mCurrentConnections:I

    .line 6
    .line 7
    const-string/jumbo v2, "prev["

    .line 8
    .line 9
    .line 10
    const-string v3, "] > curr["

    .line 11
    .line 12
    const-string v4, "] / full["

    .line 13
    .line 14
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget p0, p0, Lcom/android/server/battery/MultiSbpController$BatteryConnectionChecker;->FULLY_CONNECTED:I

    .line 19
    .line 20
    const-string v1, "]"

    .line 21
    .line 22
    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method
