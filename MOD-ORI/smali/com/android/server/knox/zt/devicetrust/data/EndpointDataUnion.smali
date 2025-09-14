.class public abstract Lcom/android/server/knox/zt/devicetrust/data/EndpointDataUnion;
.super Lcom/android/server/knox/zt/devicetrust/data/EndpointData;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final realData:Lcom/android/server/knox/zt/devicetrust/data/EndpointData;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/zt/devicetrust/data/EndpointData;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const-wide/16 v1, 0x0

    .line 3
    .line 4
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;-><init>(IJ)V

    .line 5
    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointDataUnion;->realData:Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string p1, "Real data cannot be null"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method


# virtual methods
.method public final adjustTime(J)Lcom/android/server/knox/zt/devicetrust/data/EndpointData;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointDataUnion;->getTypeChecked()Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->adjustTime(J)Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :cond_0
    return-object p0
.end method

.method public final getEvent()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointDataUnion;->getTypeChecked()Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getEvent()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public final getPid()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointDataUnion;->getTypeChecked()Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getPid()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public final getReal()Lcom/android/server/knox/zt/devicetrust/data/EndpointData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointDataUnion;->realData:Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTime()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointDataUnion;->getTypeChecked()Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getTime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0

    .line 12
    :cond_0
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    return-wide v0
.end method

.method public abstract getTypeChecked()Lcom/android/server/knox/zt/devicetrust/data/EndpointData;
.end method

.method public final getUid()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointDataUnion;->getTypeChecked()Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getUid()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, -0x1

    .line 13
    return p0
.end method

.method public final toBundle()Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointDataUnion;->getTypeChecked()Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->toBundle()Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance p0, Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public final toJson()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointDataUnion;->getTypeChecked()Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->toJson()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance p0, Lorg/json/JSONObject;

    .line 13
    .line 14
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public final toLine()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointDataUnion;->getTypeChecked()Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->toLine()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    const-string p0, ""

    .line 13
    .line 14
    return-object p0
.end method

.method public final toMap()Ljava/util/Map;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointDataUnion;->getTypeChecked()Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->toMap()Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance p0, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    return-object p0
.end method
