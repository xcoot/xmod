.class public final Lcom/android/server/knox/zt/devicetrust/data/ScFchownatData;
.super Lcom/android/server/knox/zt/devicetrust/data/TracepointData;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final dfd:I

.field public final filename:Ljava/lang/String;

.field public final flag:I

.field public final group:I

.field public final owner:I

.field public final ret:J


# direct methods
.method public constructor <init>(IILjava/lang/String;IIIJJJJLjava/lang/String;)V
    .locals 10

    .line 1
    move-object v9, p0

    .line 2
    move-object v0, p0

    .line 3
    move v1, p1

    .line 4
    move-wide/from16 v2, p9

    .line 6
    move-wide/from16 v4, p11

    .line 8
    move-wide/from16 v6, p13

    .line 10
    move-object/from16 v8, p15

    .line 12
    invoke-direct/range {v0 .. v8}, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;-><init>(IJJJLjava/lang/String;)V

    .line 15
    move v0, p2

    .line 16
    iput v0, v9, Lcom/android/server/knox/zt/devicetrust/data/ScFchownatData;->dfd:I

    .line 18
    move-object v0, p3

    .line 19
    iput-object v0, v9, Lcom/android/server/knox/zt/devicetrust/data/ScFchownatData;->filename:Ljava/lang/String;

    .line 21
    move v0, p4

    .line 22
    iput v0, v9, Lcom/android/server/knox/zt/devicetrust/data/ScFchownatData;->owner:I

    .line 24
    move v0, p5

    .line 25
    iput v0, v9, Lcom/android/server/knox/zt/devicetrust/data/ScFchownatData;->group:I

    .line 27
    move/from16 v0, p6

    .line 29
    iput v0, v9, Lcom/android/server/knox/zt/devicetrust/data/ScFchownatData;->flag:I

    .line 31
    move-wide/from16 v0, p7

    .line 33
    iput-wide v0, v9, Lcom/android/server/knox/zt/devicetrust/data/ScFchownatData;->ret:J

    .line 35
    return-void
.end method


# virtual methods
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
    const-string/jumbo v1, "pid"

    .line 25
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->getPid()I

    .line 28
    move-result v2

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 32
    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->uidGid:J

    .line 34
    long-to-int v1, v1

    .line 35
    const-string/jumbo v2, "uid"

    .line 38
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 41
    iget-object v1, p0, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->comm:Ljava/lang/String;

    .line 43
    const-string/jumbo v2, "comm"

    .line 46
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string/jumbo v1, "dfd"

    .line 52
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScFchownatData;->dfd:I

    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 57
    const-string/jumbo v1, "filename"

    .line 60
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScFchownatData;->filename:Ljava/lang/String;

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string/jumbo v1, "owner"

    .line 68
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScFchownatData;->owner:I

    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 73
    const-string/jumbo v1, "group"

    .line 76
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScFchownatData;->group:I

    .line 78
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 81
    const-string/jumbo v1, "flag"

    .line 84
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScFchownatData;->flag:I

    .line 86
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 89
    const-string/jumbo v1, "ret"

    .line 92
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScFchownatData;->ret:J

    .line 94
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 97
    invoke-virtual {p0, v0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->readExtras(Landroid/os/Bundle;)V

    .line 100
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
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->getPid()I

    .line 28
    move-result v2

    .line 29
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 32
    const-string/jumbo v1, "uid"

    .line 35
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->uidGid:J

    .line 37
    long-to-int v2, v2

    .line 38
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 41
    const-string/jumbo v1, "comm"

    .line 44
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->comm:Ljava/lang/String;

    .line 46
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string/jumbo v1, "dfd"

    .line 52
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScFchownatData;->dfd:I

    .line 54
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 57
    const-string/jumbo v1, "filename"

    .line 60
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScFchownatData;->filename:Ljava/lang/String;

    .line 62
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string/jumbo v1, "owner"

    .line 68
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScFchownatData;->owner:I

    .line 70
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 73
    const-string/jumbo v1, "group"

    .line 76
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScFchownatData;->group:I

    .line 78
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 81
    const-string/jumbo v1, "flag"

    .line 84
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScFchownatData;->flag:I

    .line 86
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 89
    const-string/jumbo v1, "ret"

    .line 92
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScFchownatData;->ret:J

    .line 94
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 97
    invoke-virtual {p0, v0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->readExtras(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 103
    move-result-object p0

    .line 104
    return-object p0
.end method

.method public final toLine()Ljava/lang/String;
    .locals 15

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 3
    iget-wide v0, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->actualEventTime:J

    .line 5
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->event:I

    .line 7
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->getPid()I

    .line 10
    move-result v3

    .line 11
    iget-wide v4, p0, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->uidGid:J

    .line 13
    long-to-int v4, v4

    .line 14
    iget-object v5, p0, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->comm:Ljava/lang/String;

    .line 16
    iget v6, p0, Lcom/android/server/knox/zt/devicetrust/data/ScFchownatData;->dfd:I

    .line 18
    iget-object v7, p0, Lcom/android/server/knox/zt/devicetrust/data/ScFchownatData;->filename:Ljava/lang/String;

    .line 20
    iget v8, p0, Lcom/android/server/knox/zt/devicetrust/data/ScFchownatData;->owner:I

    .line 22
    iget v9, p0, Lcom/android/server/knox/zt/devicetrust/data/ScFchownatData;->group:I

    .line 24
    iget v10, p0, Lcom/android/server/knox/zt/devicetrust/data/ScFchownatData;->flag:I

    .line 26
    iget-wide v11, p0, Lcom/android/server/knox/zt/devicetrust/data/ScFchownatData;->ret:J

    .line 28
    const/4 v13, 0x1

    .line 29
    invoke-virtual {p0, v13}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->readExtras(Z)Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    const-string/jumbo v13, "when : "

    .line 36
    const-string v14, " | what : "

    .line 38
    invoke-static {v2, v13, v0, v1, v14}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    move-result-object v0

    .line 42
    const-string v1, " | pid : "

    .line 44
    const-string v2, " | uid : "

    .line 46
    invoke-static {v3, v4, v1, v2, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 49
    const-string v1, " | comm : "

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string v1, " | dfd : "

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, " | filename : "

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, " | owner : "

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, " | group : "

    .line 83
    const-string v2, " | flag : "

    .line 85
    invoke-static {v9, v10, v1, v2, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 88
    const-string v1, " | ret : "

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object p0

    .line 103
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
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->getPid()I

    .line 33
    move-result v1

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    const-string/jumbo v2, "pid"

    .line 41
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->uidGid:J

    .line 46
    long-to-int v1, v1

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 51
    const-string/jumbo v2, "uid"

    .line 54
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v1, p0, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->comm:Ljava/lang/String;

    .line 59
    const-string/jumbo v2, "comm"

    .line 62
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ScFchownatData;->dfd:I

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 70
    move-result-object v1

    .line 71
    const-string/jumbo v2, "dfd"

    .line 74
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string/jumbo v1, "filename"

    .line 80
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScFchownatData;->filename:Ljava/lang/String;

    .line 82
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ScFchownatData;->owner:I

    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 90
    move-result-object v1

    .line 91
    const-string/jumbo v2, "owner"

    .line 94
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ScFchownatData;->group:I

    .line 99
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 102
    move-result-object v1

    .line 103
    const-string/jumbo v2, "group"

    .line 106
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ScFchownatData;->flag:I

    .line 111
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 114
    move-result-object v1

    .line 115
    const-string/jumbo v2, "flag"

    .line 118
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ScFchownatData;->ret:J

    .line 123
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 126
    move-result-object p0

    .line 127
    const-string/jumbo v1, "ret"

    .line 130
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    return-object v0
.end method
