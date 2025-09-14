.class public final Lcom/android/server/knox/zt/devicetrust/data/SchedProcessExitData;
.super Lcom/android/server/knox/zt/devicetrust/data/TracepointData;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final comm:Ljava/lang/String;

.field public final pid:I

.field public final prio:I


# direct methods
.method public constructor <init>(IJJJLjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;-><init>(IJJJLjava/lang/String;)V

    .line 4
    iput-object p9, p0, Lcom/android/server/knox/zt/devicetrust/data/SchedProcessExitData;->comm:Ljava/lang/String;

    .line 6
    iput p10, p0, Lcom/android/server/knox/zt/devicetrust/data/SchedProcessExitData;->pid:I

    .line 8
    iput p11, p0, Lcom/android/server/knox/zt/devicetrust/data/SchedProcessExitData;->prio:I

    .line 10
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
    const-string/jumbo v1, "pid_base"

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
    const-string/jumbo v2, "comm_base"

    .line 46
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string/jumbo v1, "comm"

    .line 52
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SchedProcessExitData;->comm:Ljava/lang/String;

    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string/jumbo v1, "pid"

    .line 60
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SchedProcessExitData;->pid:I

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 65
    const-string/jumbo v1, "prio"

    .line 68
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SchedProcessExitData;->prio:I

    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 73
    invoke-virtual {p0, v0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->readExtras(Landroid/os/Bundle;)V

    .line 76
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
    const-string/jumbo v1, "pid_base"

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
    const-string/jumbo v1, "comm_base"

    .line 44
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->comm:Ljava/lang/String;

    .line 46
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string/jumbo v1, "comm"

    .line 52
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SchedProcessExitData;->comm:Ljava/lang/String;

    .line 54
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string/jumbo v1, "pid"

    .line 60
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SchedProcessExitData;->pid:I

    .line 62
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 65
    const-string/jumbo v1, "prio"

    .line 68
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SchedProcessExitData;->prio:I

    .line 70
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 73
    invoke-virtual {p0, v0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->readExtras(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 79
    move-result-object p0

    .line 80
    return-object p0
.end method

.method public final toLine()Ljava/lang/String;
    .locals 11

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
    iget-object v6, p0, Lcom/android/server/knox/zt/devicetrust/data/SchedProcessExitData;->comm:Ljava/lang/String;

    .line 18
    iget v7, p0, Lcom/android/server/knox/zt/devicetrust/data/SchedProcessExitData;->pid:I

    .line 20
    iget v8, p0, Lcom/android/server/knox/zt/devicetrust/data/SchedProcessExitData;->prio:I

    .line 22
    const/4 v9, 0x1

    .line 23
    invoke-virtual {p0, v9}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->readExtras(Z)Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    const-string/jumbo v9, "when : "

    .line 30
    const-string v10, " | what : "

    .line 32
    invoke-static {v2, v9, v0, v1, v10}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    move-result-object v0

    .line 36
    const-string v1, " | pid_base : "

    .line 38
    const-string v2, " | uid : "

    .line 40
    invoke-static {v3, v4, v1, v2, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 43
    const-string v1, " | comm_base : "

    .line 45
    const-string v2, " | comm : "

    .line 47
    invoke-static {v0, v1, v5, v2, v6}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v1, " | pid : "

    .line 52
    const-string v2, " | prio : "

    .line 54
    invoke-static {v7, v8, v1, v2, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p0

    .line 64
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
    const-string/jumbo v2, "pid_base"

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
    const-string/jumbo v2, "comm_base"

    .line 62
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string/jumbo v1, "comm"

    .line 68
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SchedProcessExitData;->comm:Ljava/lang/String;

    .line 70
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SchedProcessExitData;->pid:I

    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 78
    move-result-object v1

    .line 79
    const-string/jumbo v2, "pid"

    .line 82
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget p0, p0, Lcom/android/server/knox/zt/devicetrust/data/SchedProcessExitData;->prio:I

    .line 87
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 90
    move-result-object p0

    .line 91
    const-string/jumbo v1, "prio"

    .line 94
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-object v0
.end method
