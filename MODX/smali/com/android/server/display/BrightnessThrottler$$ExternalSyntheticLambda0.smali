.class public final synthetic Lcom/android/server/display/BrightnessThrottler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiFunction;


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 3
    check-cast p2, Ljava/lang/String;

    .line 5
    :try_start_0
    invoke-static {p1}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->parseThermalStatus(Ljava/lang/String;)I

    .line 8
    move-result p0

    .line 9
    invoke-static {p2}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->parseBrightness(Ljava/lang/String;)F

    .line 12
    move-result p1

    .line 13
    new-instance p2, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData$ThrottlingLevel;

    .line 15
    invoke-direct {p2, p1, p0}, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData$ThrottlingLevel;-><init>(FI)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    const/4 p2, 0x0

    .line 20
    :goto_0
    return-object p2
.end method
