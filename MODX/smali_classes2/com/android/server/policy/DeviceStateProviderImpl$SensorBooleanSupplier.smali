.class public final Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final mExpectedValues:Ljava/util/List;

.field public final mSensor:Landroid/hardware/Sensor;

.field public final synthetic this$0:Lcom/android/server/policy/DeviceStateProviderImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/DeviceStateProviderImpl;Landroid/hardware/Sensor;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;->this$0:Lcom/android/server/policy/DeviceStateProviderImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;->mSensor:Landroid/hardware/Sensor;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;->mExpectedValues:Ljava/util/List;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 7

    .line 1
    const-string v0, "Number of supplied numeric range(s) does not match the number of values in the latest sensor event for sensor: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;->this$0:Lcom/android/server/policy/DeviceStateProviderImpl;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;->this$0:Lcom/android/server/policy/DeviceStateProviderImpl;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/android/server/policy/DeviceStateProviderImpl;->mLatestSensorEvent:Ljava/util/Map;

    .line 11
    .line 12
    iget-object v3, p0, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;->mSensor:Landroid/hardware/Sensor;

    .line 13
    .line 14
    check-cast v2, Landroid/util/ArrayMap;

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Landroid/hardware/SensorEvent;

    .line 21
    .line 22
    if-eqz v2, :cond_6

    .line 23
    .line 24
    iget-object v3, v2, Landroid/hardware/SensorEvent;->values:[F

    .line 25
    .line 26
    array-length v3, v3

    .line 27
    iget-object v4, p0, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;->mExpectedValues:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-lt v3, v4, :cond_5

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    move v3, v0

    .line 37
    :goto_0
    iget-object v4, p0, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;->mExpectedValues:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-ge v3, v4, :cond_4

    .line 44
    .line 45
    iget-object v4, v2, Landroid/hardware/SensorEvent;->values:[F

    .line 46
    .line 47
    aget v4, v4, v3

    .line 48
    .line 49
    iget-object v5, p0, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;->mExpectedValues:Ljava/util/List;

    .line 50
    .line 51
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    check-cast v5, Lcom/android/server/policy/devicestate/config/NumericRange;

    .line 56
    .line 57
    iget-object v6, v5, Lcom/android/server/policy/devicestate/config/NumericRange;->min_optional:Ljava/math/BigDecimal;

    .line 58
    .line 59
    if-eqz v6, :cond_0

    .line 60
    .line 61
    invoke-virtual {v6}, Ljava/math/BigDecimal;->floatValue()F

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    cmpg-float v6, v4, v6

    .line 66
    .line 67
    if-gtz v6, :cond_0

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_0
    iget-object v6, v5, Lcom/android/server/policy/devicestate/config/NumericRange;->minInclusive_optional:Ljava/math/BigDecimal;

    .line 71
    .line 72
    if-eqz v6, :cond_1

    .line 73
    .line 74
    invoke-virtual {v6}, Ljava/math/BigDecimal;->floatValue()F

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    cmpg-float v6, v4, v6

    .line 79
    .line 80
    if-gez v6, :cond_1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    iget-object v6, v5, Lcom/android/server/policy/devicestate/config/NumericRange;->max_optional:Ljava/math/BigDecimal;

    .line 84
    .line 85
    if-eqz v6, :cond_2

    .line 86
    .line 87
    invoke-virtual {v6}, Ljava/math/BigDecimal;->floatValue()F

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    cmpl-float v6, v4, v6

    .line 92
    .line 93
    if-ltz v6, :cond_2

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_2
    iget-object v5, v5, Lcom/android/server/policy/devicestate/config/NumericRange;->maxInclusive_optional:Ljava/math/BigDecimal;

    .line 97
    .line 98
    if-eqz v5, :cond_3

    .line 99
    .line 100
    invoke-virtual {v5}, Ljava/math/BigDecimal;->floatValue()F

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    cmpl-float v4, v4, v5

    .line 105
    .line 106
    if-lez v4, :cond_3

    .line 107
    .line 108
    :goto_1
    monitor-exit v1

    .line 109
    return v0

    .line 110
    :catchall_0
    move-exception p0

    .line 111
    goto :goto_2

    .line 112
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_4
    monitor-exit v1

    .line 116
    const/4 p0, 0x1

    .line 117
    return p0

    .line 118
    :cond_5
    new-instance v2, Ljava/lang/RuntimeException;

    .line 119
    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget-object p0, p0, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;->mSensor:Landroid/hardware/Sensor;

    .line 126
    .line 127
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-direct {v2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw v2

    .line 138
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 139
    .line 140
    const-string v0, "Have not received sensor event."

    .line 141
    .line 142
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw p0

    .line 146
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    throw p0
.end method
