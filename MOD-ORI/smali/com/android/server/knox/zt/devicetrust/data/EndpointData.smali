.class public abstract Lcom/android/server/knox/zt/devicetrust/data/EndpointData;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final USE_ACTUAL_TIME:Z = true


# instance fields
.field public actualEventTime:J

.field public final event:I

.field public final eventTime:J

.field public extras:Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->event:I

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->eventTime:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public adjustTime(J)Lcom/android/server/knox/zt/devicetrust/data/EndpointData;
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->actualEventTime:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->eventTime:J

    .line 10
    .line 11
    add-long/2addr p1, v0

    .line 12
    const-wide/32 v0, 0xf4240

    .line 13
    .line 14
    .line 15
    div-long/2addr p1, v0

    .line 16
    iput-wide p1, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->actualEventTime:J

    .line 17
    .line 18
    :cond_0
    return-object p0
.end method

.method public getEvent()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->event:I

    .line 2
    .line 3
    return p0
.end method

.method public abstract getPid()I
.end method

.method public getTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->actualEventTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public abstract getUid()I
.end method

.method public final readExtras(Z)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->extras:Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/StringJoiner;

    const-string v2, " | "

    if-eqz p1, :cond_1

    move-object p1, v2

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    invoke-direct {v0, p1, v2, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->extras:Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;

    iget-object p1, p1, Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;->label:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "label : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->extras:Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;

    iget-object v1, v1, Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;->label:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->extras:Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;

    iget-object p1, p1, Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;->packageName:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "pkgName : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->extras:Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;

    iget-object v1, v1, Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->extras:Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;

    iget-object p1, p1, Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;->processName:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "procName : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->extras:Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;->processName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 9
    :cond_4
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final readExtras(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->extras:Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;

    if-nez v0, :cond_1

    return-void

    .line 11
    :cond_1
    iget-object v0, v0, Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;->label:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 12
    const-string/jumbo v1, "label"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->extras:Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;

    iget-object v0, v0, Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 14
    const-string/jumbo v1, "pkgName"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_3
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->extras:Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;->processName:Ljava/lang/String;

    if-eqz p0, :cond_4

    .line 16
    const-string/jumbo v0, "procName"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final readExtras(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->extras:Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;

    if-nez v0, :cond_1

    return-void

    .line 18
    :cond_1
    iget-object v0, v0, Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;->label:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 19
    const-string/jumbo v1, "label"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->extras:Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;

    iget-object v0, v0, Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 21
    const-string/jumbo v1, "pkgName"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    :cond_3
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->extras:Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;->processName:Ljava/lang/String;

    if-eqz p0, :cond_4

    .line 23
    const-string/jumbo v0, "procName"

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    return-void
.end method

.method public abstract toBundle()Landroid/os/Bundle;
.end method

.method public abstract toJson()Ljava/lang/String;
.end method

.method public abstract toLine()Ljava/lang/String;
.end method

.method public abstract toMap()Ljava/util/Map;
.end method

.method public final updateExtras(I)Lcom/android/server/knox/zt/devicetrust/data/EndpointData;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-object p0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->extras:Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    new-instance v0, Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->extras:Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;

    .line 14
    .line 15
    :cond_1
    and-int/lit8 v0, p1, 0x1

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->extras:Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;

    .line 20
    .line 21
    sget-object v1, Lcom/android/server/knox/zt/devicetrust/data/Utils$InstanceHolder;->INSTANCE:Lcom/android/server/knox/zt/devicetrust/data/Utils;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getPid()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {v1, v2}, Lcom/android/server/knox/zt/devicetrust/data/Utils;->getProcessNameForPid(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iput-object v1, v0, Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;->processName:Ljava/lang/String;

    .line 32
    .line 33
    :cond_2
    and-int/lit8 v0, p1, 0x2

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->extras:Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;

    .line 38
    .line 39
    sget-object v1, Lcom/android/server/knox/zt/devicetrust/data/Utils$InstanceHolder;->INSTANCE:Lcom/android/server/knox/zt/devicetrust/data/Utils;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getUid()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-virtual {v1, v2}, Lcom/android/server/knox/zt/devicetrust/data/Utils;->getPackageNameForUid(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iput-object v1, v0, Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;->packageName:Ljava/lang/String;

    .line 50
    .line 51
    :cond_3
    and-int/lit8 p1, p1, 0x4

    .line 52
    .line 53
    if-eqz p1, :cond_4

    .line 54
    .line 55
    iget-object p1, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->extras:Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;

    .line 56
    .line 57
    sget-object v0, Lcom/android/server/knox/zt/devicetrust/data/Utils$InstanceHolder;->INSTANCE:Lcom/android/server/knox/zt/devicetrust/data/Utils;

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->getPid()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-virtual {v0, v1}, Lcom/android/server/knox/zt/devicetrust/data/Utils;->getSecurityContextForPid(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p1, Lcom/android/server/knox/zt/devicetrust/data/EndpointExtras;->label:Ljava/lang/String;

    .line 68
    .line 69
    :cond_4
    return-object p0
.end method
