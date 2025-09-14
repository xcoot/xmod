.class public abstract Lcom/android/server/display/utils/SensorUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;I)Landroid/hardware/Sensor;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v1

    .line 9
    xor-int/lit8 v1, v1, 0x1

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v2

    .line 15
    xor-int/lit8 v2, v2, 0x1

    .line 17
    if-nez v1, :cond_1

    .line 19
    if-eqz v2, :cond_5

    .line 21
    :cond_1
    const/4 v3, -0x1

    .line 22
    invoke-virtual {p0, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    .line 25
    move-result-object v3

    .line 26
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object v3

    .line 30
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_5

    .line 36
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Landroid/hardware/Sensor;

    .line 42
    if-eqz v1, :cond_3

    .line 44
    invoke-virtual {v4}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_2

    .line 54
    :cond_3
    if-eqz v2, :cond_4

    .line 56
    invoke-virtual {v4}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    .line 59
    move-result-object v5

    .line 60
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result v5

    .line 64
    if-eqz v5, :cond_2

    .line 66
    :cond_4
    return-object v4

    .line 67
    :cond_5
    if-eqz p3, :cond_6

    .line 69
    invoke-virtual {p0, p3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 72
    move-result-object p0

    .line 73
    return-object p0

    .line 74
    :cond_6
    return-object v0
.end method

.method public static getSensorTemperatureType(Lcom/android/server/display/config/SensorData;)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/config/SensorData;->type:Ljava/lang/String;

    .line 3
    const-string v1, "DISPLAY"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    const/16 p0, 0xb

    .line 13
    return p0

    .line 14
    :cond_0
    const-string v0, "SKIN"

    .line 16
    iget-object p0, p0, Lcom/android/server/display/config/SensorData;->type:Ljava/lang/String;

    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 24
    const/4 p0, 0x3

    .line 25
    return p0

    .line 26
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    const-string/jumbo v2, "tempSensor doesn\'t support type: "

    .line 33
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    throw v0
.end method
