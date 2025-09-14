.class public final Lcom/android/server/knox/zt/devicetrust/data/SkData;
.super Lcom/android/server/knox/zt/devicetrust/data/TracepointData;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final dstAddr:Ljava/lang/String;

.field public final dstAddrV6:Ljava/lang/String;

.field public final dstPort:I

.field public final family:I

.field public final newState:I

.field public final oldState:I

.field public final protocol:I

.field public final srcAddr:Ljava/lang/String;

.field public final srcAddrV6:Ljava/lang/String;

.field public final srcPort:I


# direct methods
.method public constructor <init>(IIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;)V
    .locals 10

    .line 1
    move-object v9, p0

    .line 2
    move-object v0, p0

    .line 3
    move v1, p1

    .line 4
    move-wide/from16 v2, p12

    .line 5
    .line 6
    move-wide/from16 v4, p14

    .line 7
    .line 8
    move-wide/from16 v6, p16

    .line 9
    .line 10
    move-object/from16 v8, p18

    .line 11
    .line 12
    invoke-direct/range {v0 .. v8}, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;-><init>(IJJJLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    move v0, p2

    .line 16
    iput v0, v9, Lcom/android/server/knox/zt/devicetrust/data/SkData;->oldState:I

    .line 17
    .line 18
    move v0, p3

    .line 19
    iput v0, v9, Lcom/android/server/knox/zt/devicetrust/data/SkData;->newState:I

    .line 20
    .line 21
    move v0, p4

    .line 22
    iput v0, v9, Lcom/android/server/knox/zt/devicetrust/data/SkData;->srcPort:I

    .line 23
    .line 24
    move v0, p5

    .line 25
    iput v0, v9, Lcom/android/server/knox/zt/devicetrust/data/SkData;->dstPort:I

    .line 26
    .line 27
    move/from16 v0, p6

    .line 28
    .line 29
    iput v0, v9, Lcom/android/server/knox/zt/devicetrust/data/SkData;->family:I

    .line 30
    .line 31
    move/from16 v0, p7

    .line 32
    .line 33
    iput v0, v9, Lcom/android/server/knox/zt/devicetrust/data/SkData;->protocol:I

    .line 34
    .line 35
    move-object/from16 v0, p8

    .line 36
    .line 37
    iput-object v0, v9, Lcom/android/server/knox/zt/devicetrust/data/SkData;->srcAddr:Ljava/lang/String;

    .line 38
    .line 39
    move-object/from16 v0, p9

    .line 40
    .line 41
    iput-object v0, v9, Lcom/android/server/knox/zt/devicetrust/data/SkData;->dstAddr:Ljava/lang/String;

    .line 42
    .line 43
    move-object/from16 v0, p10

    .line 44
    .line 45
    iput-object v0, v9, Lcom/android/server/knox/zt/devicetrust/data/SkData;->srcAddrV6:Ljava/lang/String;

    .line 46
    .line 47
    move-object/from16 v0, p11

    .line 48
    .line 49
    iput-object v0, v9, Lcom/android/server/knox/zt/devicetrust/data/SkData;->dstAddrV6:Ljava/lang/String;

    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public final toBundle()Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->actualEventTime:J

    .line 7
    .line 8
    const-string/jumbo v3, "when"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 12
    .line 13
    .line 14
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->event:I

    .line 15
    .line 16
    const-string/jumbo v2, "what"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    const-string/jumbo v1, "pid"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->getPid()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->uidGid:J

    .line 33
    .line 34
    long-to-int v1, v1

    .line 35
    const-string/jumbo v2, "uid"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->comm:Ljava/lang/String;

    .line 42
    .line 43
    const-string/jumbo v2, "comm"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string/jumbo v1, "oldState"

    .line 50
    .line 51
    .line 52
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->oldState:I

    .line 53
    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    const-string/jumbo v1, "newState"

    .line 58
    .line 59
    .line 60
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->newState:I

    .line 61
    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    const-string/jumbo v1, "sport"

    .line 66
    .line 67
    .line 68
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->srcPort:I

    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    const-string/jumbo v1, "dport"

    .line 74
    .line 75
    .line 76
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->dstPort:I

    .line 77
    .line 78
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 79
    .line 80
    .line 81
    const-string/jumbo v1, "family"

    .line 82
    .line 83
    .line 84
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->family:I

    .line 85
    .line 86
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 87
    .line 88
    .line 89
    const-string/jumbo v1, "protocol"

    .line 90
    .line 91
    .line 92
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->protocol:I

    .line 93
    .line 94
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 95
    .line 96
    .line 97
    const-string/jumbo v1, "saddr"

    .line 98
    .line 99
    .line 100
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->srcAddr:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const-string/jumbo v1, "daddr"

    .line 106
    .line 107
    .line 108
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->dstAddr:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    const-string/jumbo v1, "saddr_v6"

    .line 114
    .line 115
    .line 116
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->srcAddrV6:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    const-string/jumbo v1, "daddr_v6"

    .line 122
    .line 123
    .line 124
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->dstAddrV6:Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, v0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->readExtras(Landroid/os/Bundle;)V

    .line 130
    .line 131
    .line 132
    return-object v0
.end method

.method public final toJson()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string/jumbo v1, "when"

    .line 7
    .line 8
    .line 9
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->actualEventTime:J

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    const-string/jumbo v1, "what"

    .line 15
    .line 16
    .line 17
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->event:I

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    const-string/jumbo v1, "pid"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->getPid()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    const-string/jumbo v1, "uid"

    .line 33
    .line 34
    .line 35
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->uidGid:J

    .line 36
    .line 37
    long-to-int v2, v2

    .line 38
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    const-string/jumbo v1, "comm"

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->comm:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    .line 48
    .line 49
    const-string/jumbo v1, "oldState"

    .line 50
    .line 51
    .line 52
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->oldState:I

    .line 53
    .line 54
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 55
    .line 56
    .line 57
    const-string/jumbo v1, "newState"

    .line 58
    .line 59
    .line 60
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->newState:I

    .line 61
    .line 62
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 63
    .line 64
    .line 65
    const-string/jumbo v1, "sport"

    .line 66
    .line 67
    .line 68
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->srcPort:I

    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 71
    .line 72
    .line 73
    const-string/jumbo v1, "dport"

    .line 74
    .line 75
    .line 76
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->dstPort:I

    .line 77
    .line 78
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 79
    .line 80
    .line 81
    const-string/jumbo v1, "family"

    .line 82
    .line 83
    .line 84
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->family:I

    .line 85
    .line 86
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 87
    .line 88
    .line 89
    const-string/jumbo v1, "protocol"

    .line 90
    .line 91
    .line 92
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->protocol:I

    .line 93
    .line 94
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 95
    .line 96
    .line 97
    const-string/jumbo v1, "saddr"

    .line 98
    .line 99
    .line 100
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->srcAddr:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    .line 104
    .line 105
    const-string/jumbo v1, "daddr"

    .line 106
    .line 107
    .line 108
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->dstAddr:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    .line 112
    .line 113
    const-string/jumbo v1, "saddr_v6"

    .line 114
    .line 115
    .line 116
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->srcAddrV6:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    .line 120
    .line 121
    const-string/jumbo v1, "daddr_v6"

    .line 122
    .line 123
    .line 124
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->dstAddrV6:Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, v0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->readExtras(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .line 131
    .line 132
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    return-object p0
.end method

.method public final toLine()Ljava/lang/String;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 4
    .line 5
    iget-wide v1, v0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->actualEventTime:J

    .line 6
    .line 7
    iget v3, v0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->event:I

    .line 8
    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->getPid()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    iget-wide v5, v0, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->uidGid:J

    .line 14
    .line 15
    long-to-int v5, v5

    .line 16
    iget-object v6, v0, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->comm:Ljava/lang/String;

    .line 17
    .line 18
    iget v7, v0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->oldState:I

    .line 19
    .line 20
    iget v8, v0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->newState:I

    .line 21
    .line 22
    iget v9, v0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->srcPort:I

    .line 23
    .line 24
    iget v10, v0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->dstPort:I

    .line 25
    .line 26
    iget v11, v0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->family:I

    .line 27
    .line 28
    iget v12, v0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->protocol:I

    .line 29
    .line 30
    iget-object v13, v0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->srcAddr:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v14, v0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->dstAddr:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v15, v0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->srcAddrV6:Ljava/lang/String;

    .line 35
    .line 36
    move-object/from16 v16, v14

    .line 37
    .line 38
    iget-object v14, v0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->dstAddrV6:Ljava/lang/String;

    .line 39
    .line 40
    move-object/from16 v17, v14

    .line 41
    .line 42
    const/4 v14, 0x1

    .line 43
    invoke-virtual {v0, v14}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->readExtras(Z)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string/jumbo v14, "when : "

    .line 48
    .line 49
    .line 50
    move-object/from16 p0, v0

    .line 51
    .line 52
    const-string v0, " | what : "

    .line 53
    .line 54
    invoke-static {v3, v14, v1, v2, v0}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v1, " | pid : "

    .line 59
    .line 60
    const-string v2, " | uid : "

    .line 61
    .line 62
    invoke-static {v4, v5, v1, v2, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 63
    .line 64
    .line 65
    const-string v1, " | comm : "

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, " | oldstate : "

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v1, " | newstate : "

    .line 82
    .line 83
    const-string v2, " | sport : "

    .line 84
    .line 85
    invoke-static {v8, v9, v1, v2, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 86
    .line 87
    .line 88
    const-string v1, " | dport : "

    .line 89
    .line 90
    const-string v2, " | family : "

    .line 91
    .line 92
    invoke-static {v10, v11, v1, v2, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 93
    .line 94
    .line 95
    const-string v1, " | protocol : "

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, " | saddr : "

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v1, " | daddr : "

    .line 112
    .line 113
    const-string v2, " | saddr_v6 : "

    .line 114
    .line 115
    move-object/from16 v3, v16

    .line 116
    .line 117
    invoke-static {v0, v1, v3, v2, v15}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const-string v1, " | daddr_v6 : "

    .line 121
    .line 122
    move-object/from16 v3, p0

    .line 123
    .line 124
    move-object/from16 v2, v17

    .line 125
    .line 126
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    return-object v0
.end method

.method public final toMap()Ljava/util/Map;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->actualEventTime:J

    .line 7
    .line 8
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string/jumbo v2, "when"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->event:I

    .line 19
    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string/jumbo v2, "what"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->getPid()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string/jumbo v2, "pid"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->uidGid:J

    .line 45
    .line 46
    long-to-int v1, v1

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string/jumbo v2, "uid"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lcom/android/server/knox/zt/devicetrust/data/TracepointData;->comm:Ljava/lang/String;

    .line 58
    .line 59
    const-string/jumbo v2, "comm"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->oldState:I

    .line 66
    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const-string/jumbo v2, "oldState"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->newState:I

    .line 78
    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const-string/jumbo v2, "newState"

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->srcPort:I

    .line 90
    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    const-string/jumbo v2, "sport"

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->dstPort:I

    .line 102
    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    const-string/jumbo v2, "dport"

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->family:I

    .line 114
    .line 115
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    const-string/jumbo v2, "family"

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->protocol:I

    .line 126
    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    const-string/jumbo v2, "protocol"

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    const-string/jumbo v1, "saddr"

    .line 138
    .line 139
    .line 140
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->srcAddr:Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    const-string/jumbo v1, "daddr"

    .line 146
    .line 147
    .line 148
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->dstAddr:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    const-string/jumbo v1, "saddr_v6"

    .line 154
    .line 155
    .line 156
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->srcAddrV6:Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    const-string/jumbo v1, "daddr_v6"

    .line 162
    .line 163
    .line 164
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/data/SkData;->dstAddrV6:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    return-object v0
.end method
