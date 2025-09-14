.class public final Lcom/android/server/knox/zt/devicetrust/data/AppBindingData;
.super Lcom/android/server/knox/zt/devicetrust/data/EndpointData;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final label:Ljava/lang/String;

.field public final pid:I

.field public final procName:Ljava/lang/String;

.field public final uid:I


# direct methods
.method public constructor <init>(IJIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;-><init>(IJ)V

    .line 4
    iput p4, p0, Lcom/android/server/knox/zt/devicetrust/data/AppBindingData;->pid:I

    .line 6
    iput p5, p0, Lcom/android/server/knox/zt/devicetrust/data/AppBindingData;->uid:I

    .line 8
    iput-object p6, p0, Lcom/android/server/knox/zt/devicetrust/data/AppBindingData;->procName:Ljava/lang/String;

    .line 10
    iput-object p7, p0, Lcom/android/server/knox/zt/devicetrust/data/AppBindingData;->label:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public final getPid()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/knox/zt/devicetrust/data/AppBindingData;->pid:I

    .line 3
    return p0
.end method

.method public final getUid()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/knox/zt/devicetrust/data/AppBindingData;->uid:I

    .line 3
    return p0
.end method

.method public final toBundle()Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->actualEventTime:J

    .line 8
    const-string/jumbo v3, "when"

    .line 11
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 14
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->event:I

    .line 16
    const-string/jumbo v2, "what"

    .line 19
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 22
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/AppBindingData;->pid:I

    .line 24
    const-string/jumbo v2, "pid"

    .line 27
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 30
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/AppBindingData;->uid:I

    .line 32
    const-string/jumbo v2, "uid"

    .line 35
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 38
    const-string/jumbo v1, "procName"

    .line 41
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/AppBindingData;->procName:Ljava/lang/String;

    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string/jumbo v1, "label"

    .line 49
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/AppBindingData;->label:Ljava/lang/String;

    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0, v0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->readExtras(Landroid/os/Bundle;)V

    .line 57
    const-string/jumbo v1, "cmdline"

    .line 60
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/data/AppBindingData;->procName:Ljava/lang/String;

    .line 62
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-object v0
.end method

.method public final toJson()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    :try_start_0
    const-string/jumbo v1, "when"

    .line 9
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->actualEventTime:J

    .line 11
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 14
    const-string/jumbo v1, "what"

    .line 17
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->event:I

    .line 19
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 22
    const-string/jumbo v1, "pid"

    .line 25
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/AppBindingData;->pid:I

    .line 27
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 30
    const-string/jumbo v1, "uid"

    .line 33
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/AppBindingData;->uid:I

    .line 35
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 38
    const-string/jumbo v1, "procName"

    .line 41
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/AppBindingData;->procName:Ljava/lang/String;

    .line 43
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    const-string/jumbo v1, "label"

    .line 49
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/AppBindingData;->label:Ljava/lang/String;

    .line 51
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    invoke-virtual {p0, v0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->readExtras(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 60
    move-result-object p0

    .line 61
    return-object p0
.end method

.method public final toLine()Ljava/lang/String;
    .locals 8

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 3
    iget-wide v0, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->actualEventTime:J

    .line 5
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->event:I

    .line 7
    iget v3, p0, Lcom/android/server/knox/zt/devicetrust/data/AppBindingData;->pid:I

    .line 9
    iget v4, p0, Lcom/android/server/knox/zt/devicetrust/data/AppBindingData;->uid:I

    .line 11
    iget-object v5, p0, Lcom/android/server/knox/zt/devicetrust/data/AppBindingData;->procName:Ljava/lang/String;

    .line 13
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/data/AppBindingData;->label:Ljava/lang/String;

    .line 15
    const-string/jumbo v6, "when : "

    .line 18
    const-string v7, " | what : "

    .line 20
    invoke-static {v2, v6, v0, v1, v7}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    move-result-object v0

    .line 24
    const-string v1, " | pid : "

    .line 26
    const-string v2, " | uid : "

    .line 28
    invoke-static {v3, v4, v1, v2, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 31
    const-string v1, " | procName : "

    .line 33
    const-string v2, " | label : "

    .line 35
    invoke-static {v0, v1, v5, v2, p0}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method public final toMap()Ljava/util/Map;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->actualEventTime:J

    .line 8
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    const-string/jumbo v2, "when"

    .line 15
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->event:I

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    const-string/jumbo v2, "what"

    .line 27
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/AppBindingData;->pid:I

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    const-string/jumbo v2, "pid"

    .line 39
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/AppBindingData;->uid:I

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    const-string/jumbo v2, "uid"

    .line 51
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string/jumbo v1, "procName"

    .line 57
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/AppBindingData;->procName:Ljava/lang/String;

    .line 59
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string/jumbo v1, "label"

    .line 65
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/data/AppBindingData;->label:Ljava/lang/String;

    .line 67
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-object v0
.end method
