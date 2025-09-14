.class public final Lcom/android/server/knox/zt/devicetrust/data/ScMountData;
.super Lcom/android/server/knox/zt/devicetrust/data/TracepointData;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final data:Ljava/lang/String;

.field public final devName:Ljava/lang/String;

.field public final dirName:Ljava/lang/String;

.field public final flags:J

.field public final ret:J

.field public final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJJJLjava/lang/String;)V
    .locals 10

    .line 1
    move-object v9, p0

    .line 2
    move-object v0, p0

    .line 3
    move v1, p1

    .line 4
    move-wide/from16 v2, p10

    .line 6
    move-wide/from16 v4, p12

    .line 8
    move-wide/from16 v6, p14

    .line 10
    move-object/from16 v8, p16

    .line 12
    invoke-direct/range {v0 .. v8}, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;-><init>(IJJJLjava/lang/String;)V

    .line 15
    move-object v0, p2

    .line 16
    iput-object v0, v9, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->devName:Ljava/lang/String;

    .line 18
    move-object v0, p3

    .line 19
    iput-object v0, v9, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->dirName:Ljava/lang/String;

    .line 21
    move-object v0, p4

    .line 22
    iput-object v0, v9, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->type:Ljava/lang/String;

    .line 24
    move-wide v0, p5

    .line 25
    iput-wide v0, v9, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->flags:J

    .line 27
    move-object/from16 v0, p7

    .line 29
    iput-object v0, v9, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->data:Ljava/lang/String;

    .line 31
    move-wide/from16 v0, p8

    .line 33
    iput-wide v0, v9, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->ret:J

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
    const-string/jumbo v1, "dev_name"

    .line 52
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->devName:Ljava/lang/String;

    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string/jumbo v1, "dir_name"

    .line 60
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->dirName:Ljava/lang/String;

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string/jumbo v1, "type"

    .line 68
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->type:Ljava/lang/String;

    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string/jumbo v1, "flags"

    .line 76
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->flags:J

    .line 78
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 81
    const-string/jumbo v1, "data"

    .line 84
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->data:Ljava/lang/String;

    .line 86
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string/jumbo v1, "ret"

    .line 92
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->ret:J

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
    const-string/jumbo v1, "dev_name"

    .line 52
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->devName:Ljava/lang/String;

    .line 54
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string/jumbo v1, "dir_name"

    .line 60
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->dirName:Ljava/lang/String;

    .line 62
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string/jumbo v1, "type"

    .line 68
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->type:Ljava/lang/String;

    .line 70
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string/jumbo v1, "flags"

    .line 76
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->flags:J

    .line 78
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 81
    const-string/jumbo v1, "data"

    .line 84
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->data:Ljava/lang/String;

    .line 86
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    const-string/jumbo v1, "ret"

    .line 92
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->ret:J

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
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 5
    iget-wide v1, v0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->actualEventTime:J

    .line 7
    iget v3, v0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->event:I

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->getPid()I

    .line 12
    move-result v4

    .line 13
    iget-wide v5, v0, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->uidGid:J

    .line 15
    long-to-int v5, v5

    .line 16
    iget-object v6, v0, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->comm:Ljava/lang/String;

    .line 18
    iget-object v7, v0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->devName:Ljava/lang/String;

    .line 20
    iget-object v8, v0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->dirName:Ljava/lang/String;

    .line 22
    iget-object v9, v0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->type:Ljava/lang/String;

    .line 24
    iget-wide v10, v0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->flags:J

    .line 26
    iget-object v12, v0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->data:Ljava/lang/String;

    .line 28
    iget-wide v13, v0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->ret:J

    .line 30
    const/4 v15, 0x1

    .line 31
    invoke-virtual {v0, v15}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->readExtras(Z)Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    const-string/jumbo v15, "when : "

    .line 38
    move-object/from16 p0, v0

    .line 40
    const-string v0, " | what : "

    .line 42
    invoke-static {v3, v15, v1, v2, v0}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    move-result-object v0

    .line 46
    const-string v1, " | pid : "

    .line 48
    const-string v2, " | uid : "

    .line 50
    invoke-static {v4, v5, v1, v2, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 53
    const-string v1, " | comm : "

    .line 55
    const-string v2, " | dev_name : "

    .line 57
    invoke-static {v0, v1, v6, v2, v7}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v1, " | dir_name : "

    .line 62
    const-string v2, " | type : "

    .line 64
    invoke-static {v0, v1, v8, v2, v9}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v1, " | flags : "

    .line 69
    const-string v2, " | data : "

    .line 71
    invoke-static {v0, v1, v10, v11, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 74
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, " | ret : "

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 85
    move-object/from16 v1, p0

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object v0

    .line 94
    return-object v0
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
    const-string/jumbo v1, "dev_name"

    .line 68
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->devName:Ljava/lang/String;

    .line 70
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string/jumbo v1, "dir_name"

    .line 76
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->dirName:Ljava/lang/String;

    .line 78
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string/jumbo v1, "type"

    .line 84
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->type:Ljava/lang/String;

    .line 86
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->flags:J

    .line 91
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 94
    move-result-object v1

    .line 95
    const-string/jumbo v2, "flags"

    .line 98
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string/jumbo v1, "data"

    .line 104
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->data:Ljava/lang/String;

    .line 106
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ScMountData;->ret:J

    .line 111
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 114
    move-result-object p0

    .line 115
    const-string/jumbo v1, "ret"

    .line 118
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return-object v0
.end method
