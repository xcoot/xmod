.class public final Lcom/android/server/display/config/SensorData;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final maxRefreshRate:F

.field public final minRefreshRate:F

.field public final name:Ljava/lang/String;

.field public final supportedModes:Ljava/util/List;

.field public final type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Lcom/android/server/display/config/SensorData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 2
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/display/config/SensorData;-><init>(Ljava/lang/String;Ljava/lang/String;FF)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FF)V
    .locals 6

    .line 3
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/config/SensorData;-><init>(Ljava/lang/String;Ljava/lang/String;FFLjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FFLjava/util/List;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/android/server/display/config/SensorData;->type:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/android/server/display/config/SensorData;->name:Ljava/lang/String;

    .line 7
    iput p3, p0, Lcom/android/server/display/config/SensorData;->minRefreshRate:F

    .line 8
    iput p4, p0, Lcom/android/server/display/config/SensorData;->maxRefreshRate:F

    .line 9
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/config/SensorData;->supportedModes:Ljava/util/List;

    return-void
.end method

.method public static loadProxSensorConfig(Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/config/DisplayConfiguration;)Lcom/android/server/display/config/SensorData;
    .locals 5

    .line 1
    new-instance v0, Lcom/android/server/display/config/SensorData;

    .line 3
    invoke-direct {v0}, Lcom/android/server/display/config/SensorData;-><init>()V

    .line 6
    iget-object v1, p1, Lcom/android/server/display/config/DisplayConfiguration;->proxSensor:Ljava/util/List;

    .line 8
    if-nez v1, :cond_0

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    iput-object v1, p1, Lcom/android/server/display/config/DisplayConfiguration;->proxSensor:Ljava/util/List;

    .line 17
    :cond_0
    iget-object p1, p1, Lcom/android/server/display/config/DisplayConfiguration;->proxSensor:Ljava/util/List;

    .line 19
    check-cast p1, Ljava/util/ArrayList;

    .line 21
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 27
    return-object v0

    .line 28
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object v1

    .line 32
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_3

    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lcom/android/server/display/config/SensorDetails;

    .line 44
    iget-object v3, v2, Lcom/android/server/display/config/SensorDetails;->featureFlag:Ljava/lang/String;

    .line 46
    iget-object v4, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mUseFusionProxSensor:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 48
    invoke-virtual {v4}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_2

    .line 54
    iget-object v4, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mUseFusionProxSensor:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 56
    iget-object v4, v4, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->mName:Ljava/lang/String;

    .line 58
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_2

    .line 64
    invoke-static {v2}, Lcom/android/server/display/config/SensorData;->loadSensorData(Lcom/android/server/display/config/SensorDetails;)Lcom/android/server/display/config/SensorData;

    .line 67
    move-result-object p0

    .line 68
    goto :goto_0

    .line 69
    :cond_3
    move-object p0, v0

    .line 70
    :goto_0
    if-ne v0, p0, :cond_5

    .line 72
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 75
    move-result-object p1

    .line 76
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_5

    .line 82
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Lcom/android/server/display/config/SensorDetails;

    .line 88
    iget-object v2, v1, Lcom/android/server/display/config/SensorDetails;->featureFlag:Ljava/lang/String;

    .line 90
    if-eqz v2, :cond_4

    .line 92
    goto :goto_1

    .line 93
    :cond_4
    invoke-static {v1}, Lcom/android/server/display/config/SensorData;->loadSensorData(Lcom/android/server/display/config/SensorDetails;)Lcom/android/server/display/config/SensorData;

    .line 96
    move-result-object p0

    .line 97
    :cond_5
    if-eq v0, p0, :cond_6

    .line 99
    const-string p1, ""

    .line 101
    iget-object v0, p0, Lcom/android/server/display/config/SensorData;->name:Ljava/lang/String;

    .line 103
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_6

    .line 109
    iget-object v0, p0, Lcom/android/server/display/config/SensorData;->type:Ljava/lang/String;

    .line 111
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_6

    .line 117
    const/4 p0, 0x0

    .line 118
    :cond_6
    return-object p0
.end method

.method public static loadSensorData(Lcom/android/server/display/config/SensorDetails;)Lcom/android/server/display/config/SensorData;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/display/config/SensorDetails;->refreshRate:Lcom/android/server/display/config/RefreshRateRange;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v1, v0, Lcom/android/server/display/config/RefreshRateRange;->minimum:Ljava/math/BigInteger;

    .line 7
    invoke-virtual {v1}, Ljava/math/BigInteger;->floatValue()F

    .line 10
    move-result v1

    .line 11
    iget-object v0, v0, Lcom/android/server/display/config/RefreshRateRange;->maximum:Ljava/math/BigInteger;

    .line 13
    invoke-virtual {v0}, Ljava/math/BigInteger;->floatValue()F

    .line 16
    move-result v0

    .line 17
    :goto_0
    move v6, v0

    .line 18
    move v5, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 23
    goto :goto_0

    .line 24
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/config/SensorDetails;->supportedModes:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    .line 26
    invoke-static {v0}, Lcom/android/server/display/config/SupportedModeData;->load(Lcom/android/server/display/config/NonNegativeFloatToFloatMap;)Ljava/util/List;

    .line 29
    move-result-object v7

    .line 30
    new-instance v0, Lcom/android/server/display/config/SensorData;

    .line 32
    iget-object v3, p0, Lcom/android/server/display/config/SensorDetails;->type:Ljava/lang/String;

    .line 34
    iget-object v4, p0, Lcom/android/server/display/config/SensorDetails;->name:Ljava/lang/String;

    .line 36
    move-object v2, v0

    .line 37
    invoke-direct/range {v2 .. v7}, Lcom/android/server/display/config/SensorData;-><init>(Ljava/lang/String;Ljava/lang/String;FFLjava/util/List;)V

    .line 40
    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "SensorData{type= "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/server/display/config/SensorData;->type:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ", name= "

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object v1, p0, Lcom/android/server/display/config/SensorData;->name:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, ", refreshRateRange: ["

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget v1, p0, Lcom/android/server/display/config/SensorData;->minRefreshRate:F

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 33
    const-string v1, ", "

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget v1, p0, Lcom/android/server/display/config/SensorData;->maxRefreshRate:F

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 43
    const-string v1, "], supportedModes="

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-object p0, p0, Lcom/android/server/display/config/SensorData;->supportedModes:Ljava/util/List;

    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    const/16 p0, 0x7d

    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method
