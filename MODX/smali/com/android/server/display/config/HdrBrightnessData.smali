.class public final Lcom/android/server/display/config/HdrBrightnessData;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBrightnessDecreaseDebounceMillis:J

.field public final mBrightnessIncreaseDebounceMillis:J

.field public final mMaxBrightnessLimits:Ljava/util/Map;

.field public final mScreenBrightnessRampDecrease:F

.field public final mScreenBrightnessRampIncrease:F


# direct methods
.method public constructor <init>(Ljava/util/Map;JFJF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/config/HdrBrightnessData;->mMaxBrightnessLimits:Ljava/util/Map;

    .line 6
    iput-wide p2, p0, Lcom/android/server/display/config/HdrBrightnessData;->mBrightnessIncreaseDebounceMillis:J

    .line 8
    iput p4, p0, Lcom/android/server/display/config/HdrBrightnessData;->mScreenBrightnessRampIncrease:F

    .line 10
    iput-wide p5, p0, Lcom/android/server/display/config/HdrBrightnessData;->mBrightnessDecreaseDebounceMillis:J

    .line 12
    iput p7, p0, Lcom/android/server/display/config/HdrBrightnessData;->mScreenBrightnessRampDecrease:F

    .line 14
    return-void
.end method

.method public static loadConfig(Lcom/android/server/display/config/DisplayConfiguration;)Lcom/android/server/display/config/HdrBrightnessData;
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/server/display/config/DisplayConfiguration;->hdrBrightnessConfig:Lcom/android/server/display/config/HdrBrightnessConfig;

    .line 3
    if-nez p0, :cond_0

    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->brightnessMap:Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    .line 9
    invoke-virtual {v0}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->getPoint()Ljava/util/List;

    .line 12
    move-result-object v0

    .line 13
    new-instance v2, Ljava/util/HashMap;

    .line 15
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 18
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v0

    .line 22
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;

    .line 34
    iget-object v3, v1, Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;->first:Ljava/math/BigDecimal;

    .line 36
    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    .line 39
    move-result v3

    .line 40
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 43
    move-result-object v3

    .line 44
    iget-object v1, v1, Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;->second:Ljava/math/BigDecimal;

    .line 46
    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    .line 49
    move-result v1

    .line 50
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    new-instance v0, Lcom/android/server/display/config/HdrBrightnessData;

    .line 60
    iget-object v1, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->brightnessIncreaseDebounceMillis:Ljava/math/BigInteger;

    .line 62
    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    .line 65
    move-result-wide v3

    .line 66
    iget-object v1, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->screenBrightnessRampIncrease:Ljava/math/BigDecimal;

    .line 68
    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    .line 71
    move-result v5

    .line 72
    iget-object v1, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->brightnessDecreaseDebounceMillis:Ljava/math/BigInteger;

    .line 74
    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    .line 77
    move-result-wide v6

    .line 78
    iget-object p0, p0, Lcom/android/server/display/config/HdrBrightnessConfig;->screenBrightnessRampDecrease:Ljava/math/BigDecimal;

    .line 80
    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    .line 83
    move-result v8

    .line 84
    move-object v1, v0

    .line 85
    invoke-direct/range {v1 .. v8}, Lcom/android/server/display/config/HdrBrightnessData;-><init>(Ljava/util/Map;JFJF)V

    .line 88
    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "HdrBrightnessData {mMaxBrightnessLimits: "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/server/display/config/HdrBrightnessData;->mMaxBrightnessLimits:Ljava/util/Map;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ", mBrightnessIncreaseDebounceMillis: "

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-wide v1, p0, Lcom/android/server/display/config/HdrBrightnessData;->mBrightnessIncreaseDebounceMillis:J

    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, ", mScreenBrightnessRampIncrease: "

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget v1, p0, Lcom/android/server/display/config/HdrBrightnessData;->mScreenBrightnessRampIncrease:F

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 33
    const-string v1, ", mBrightnessDecreaseDebounceMillis: "

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-wide v1, p0, Lcom/android/server/display/config/HdrBrightnessData;->mBrightnessDecreaseDebounceMillis:J

    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 43
    const-string v1, ", mScreenBrightnessRampDecrease: "

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget p0, p0, Lcom/android/server/display/config/HdrBrightnessData;->mScreenBrightnessRampDecrease:F

    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 53
    const-string/jumbo p0, "} "

    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 63
    return-object p0
.end method
