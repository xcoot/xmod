.class public final Lcom/android/server/knox/zt/devicetrust/data/SockEventData;
.super Lcom/android/server/knox/zt/devicetrust/data/EndpointData;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final daddr:Ljava/lang/String;

.field public final dport:I

.field public final exitCode:I

.field public final family:I

.field public final fd:I

.field public final filepath:Ljava/lang/String;

.field public final gid:I

.field public final newstate:I

.field public final oldstate:I

.field public final pid:I

.field public final ppid:I

.field public final protocol:I

.field public final saddr:Ljava/lang/String;

.field public final sport:I

.field public final syscall:I

.field public final tid:I

.field public final type:I

.field public final uid:I


# direct methods
.method public constructor <init>(IJIIIIIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;-><init>(IJ)V

    .line 5
    move v1, p4

    .line 6
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->syscall:I

    .line 8
    move v1, p5

    .line 9
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->exitCode:I

    .line 11
    move v1, p6

    .line 12
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->tid:I

    .line 14
    move v1, p7

    .line 15
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->pid:I

    .line 17
    move v1, p8

    .line 18
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->ppid:I

    .line 20
    move v1, p9

    .line 21
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->uid:I

    .line 23
    move v1, p10

    .line 24
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->gid:I

    .line 26
    move v1, p11

    .line 27
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->oldstate:I

    .line 29
    move v1, p12

    .line 30
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->newstate:I

    .line 32
    move v1, p13

    .line 33
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->fd:I

    .line 35
    move/from16 v1, p14

    .line 37
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->family:I

    .line 39
    move/from16 v1, p15

    .line 41
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->type:I

    .line 43
    move/from16 v1, p16

    .line 45
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->protocol:I

    .line 47
    move/from16 v1, p17

    .line 49
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->sport:I

    .line 51
    move/from16 v1, p18

    .line 53
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->dport:I

    .line 55
    move-object/from16 v1, p19

    .line 57
    iput-object v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->saddr:Ljava/lang/String;

    .line 59
    move-object/from16 v1, p20

    .line 61
    iput-object v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->daddr:Ljava/lang/String;

    .line 63
    move-object/from16 v1, p21

    .line 65
    iput-object v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->filepath:Ljava/lang/String;

    .line 67
    return-void
.end method


# virtual methods
.method public final getPid()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->pid:I

    .line 3
    return p0
.end method

.method public final getUid()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->uid:I

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
    const-string/jumbo v1, "syscall"

    .line 25
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->syscall:I

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 30
    const-string/jumbo v1, "exitCode"

    .line 33
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->exitCode:I

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 38
    const-string/jumbo v1, "tid"

    .line 41
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->tid:I

    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 46
    const-string/jumbo v1, "pid"

    .line 49
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->pid:I

    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 54
    const-string/jumbo v1, "ppid"

    .line 57
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->ppid:I

    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62
    const-string/jumbo v1, "uid"

    .line 65
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->uid:I

    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 70
    const-string/jumbo v1, "gid"

    .line 73
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->gid:I

    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 78
    const-string/jumbo v1, "oldstate"

    .line 81
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->oldstate:I

    .line 83
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 86
    const-string/jumbo v1, "newstate"

    .line 89
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->newstate:I

    .line 91
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 94
    const-string/jumbo v1, "fd"

    .line 97
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->fd:I

    .line 99
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    const-string/jumbo v1, "family"

    .line 105
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->family:I

    .line 107
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    const-string/jumbo v1, "type"

    .line 113
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->type:I

    .line 115
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 118
    const-string/jumbo v1, "protocol"

    .line 121
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->protocol:I

    .line 123
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 126
    const-string/jumbo v1, "sport"

    .line 129
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->sport:I

    .line 131
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 134
    const-string/jumbo v1, "dport"

    .line 137
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->dport:I

    .line 139
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 142
    const-string/jumbo v1, "saddr"

    .line 145
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->saddr:Ljava/lang/String;

    .line 147
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string/jumbo v1, "daddr"

    .line 153
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->daddr:Ljava/lang/String;

    .line 155
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string/jumbo v1, "filepath"

    .line 161
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->filepath:Ljava/lang/String;

    .line 163
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0, v0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->readExtras(Landroid/os/Bundle;)V

    .line 169
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
    const-string/jumbo v1, "syscall"

    .line 25
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->syscall:I

    .line 27
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 30
    const-string/jumbo v1, "exitCode"

    .line 33
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->exitCode:I

    .line 35
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 38
    const-string/jumbo v1, "tid"

    .line 41
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->tid:I

    .line 43
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 46
    const-string/jumbo v1, "pid"

    .line 49
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->pid:I

    .line 51
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 54
    const-string/jumbo v1, "ppid"

    .line 57
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->ppid:I

    .line 59
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 62
    const-string/jumbo v1, "uid"

    .line 65
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->uid:I

    .line 67
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 70
    const-string/jumbo v1, "gid"

    .line 73
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->gid:I

    .line 75
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 78
    const-string/jumbo v1, "oldstate"

    .line 81
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->oldstate:I

    .line 83
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 86
    const-string/jumbo v1, "newstate"

    .line 89
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->newstate:I

    .line 91
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 94
    const-string/jumbo v1, "fd"

    .line 97
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->fd:I

    .line 99
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 102
    const-string/jumbo v1, "family"

    .line 105
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->family:I

    .line 107
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 110
    const-string/jumbo v1, "type"

    .line 113
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->type:I

    .line 115
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 118
    const-string/jumbo v1, "protocol"

    .line 121
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->protocol:I

    .line 123
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 126
    const-string/jumbo v1, "sport"

    .line 129
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->sport:I

    .line 131
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 134
    const-string/jumbo v1, "dport"

    .line 137
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->dport:I

    .line 139
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 142
    const-string/jumbo v1, "saddr"

    .line 145
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->saddr:Ljava/lang/String;

    .line 147
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    const-string/jumbo v1, "daddr"

    .line 153
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->daddr:Ljava/lang/String;

    .line 155
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    const-string/jumbo v1, "filepath"

    .line 161
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->filepath:Ljava/lang/String;

    .line 163
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 169
    move-result-object p0

    .line 170
    return-object p0
.end method

.method public final toLine()Ljava/lang/String;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 3
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 5
    iget-wide v2, v0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->actualEventTime:J

    .line 7
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    move-result-object v4

    .line 11
    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->event:I

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v5

    .line 17
    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->syscall:I

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v6

    .line 23
    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->exitCode:I

    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v7

    .line 29
    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->tid:I

    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object v8

    .line 35
    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->pid:I

    .line 37
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v9

    .line 41
    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->ppid:I

    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object v10

    .line 47
    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->uid:I

    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    move-result-object v11

    .line 53
    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->gid:I

    .line 55
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v12

    .line 59
    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->oldstate:I

    .line 61
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    move-result-object v13

    .line 65
    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->newstate:I

    .line 67
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    move-result-object v14

    .line 71
    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->fd:I

    .line 73
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    move-result-object v15

    .line 77
    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->family:I

    .line 79
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    move-result-object v16

    .line 83
    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->type:I

    .line 85
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    move-result-object v17

    .line 89
    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->protocol:I

    .line 91
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    move-result-object v18

    .line 95
    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->sport:I

    .line 97
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    move-result-object v19

    .line 101
    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->dport:I

    .line 103
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    move-result-object v20

    .line 107
    iget-object v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->saddr:Ljava/lang/String;

    .line 109
    move-object/from16 v21, v2

    .line 111
    iget-object v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->daddr:Ljava/lang/String;

    .line 113
    move-object/from16 v22, v2

    .line 115
    iget-object v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->filepath:Ljava/lang/String;

    .line 117
    move-object/from16 v23, v2

    .line 119
    const/4 v2, 0x1

    .line 120
    invoke-virtual {v0, v2}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->readExtras(Z)Ljava/lang/String;

    .line 123
    move-result-object v24

    .line 124
    filled-new-array/range {v4 .. v24}, [Ljava/lang/Object;

    .line 127
    move-result-object v0

    .line 128
    const-string/jumbo v2, "when : %d | what : %d | syscall : %d | exitCode : %d | tid : %d | pid : %d | ppid : %d | uid : %d | gid : %d | oldstate : %d | newstate : %d | fd : %d | family : %d | type : %d | protocol : %d | sport : %d | dport : %d | saddr : %d | daddr : %d | filepath : %s%s"

    .line 131
    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 134
    move-result-object v0

    .line 135
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
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->syscall:I

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    const-string/jumbo v2, "syscall"

    .line 39
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->exitCode:I

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    const-string/jumbo v2, "exitCode"

    .line 51
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->tid:I

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    const-string/jumbo v2, "tid"

    .line 63
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->pid:I

    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 72
    const-string/jumbo v2, "pid"

    .line 75
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->ppid:I

    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 83
    move-result-object v1

    .line 84
    const-string/jumbo v2, "ppid"

    .line 87
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->uid:I

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 95
    move-result-object v1

    .line 96
    const-string/jumbo v2, "uid"

    .line 99
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->gid:I

    .line 104
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 107
    move-result-object v1

    .line 108
    const-string/jumbo v2, "gid"

    .line 111
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->oldstate:I

    .line 116
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 119
    move-result-object v1

    .line 120
    const-string/jumbo v2, "oldstate"

    .line 123
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->newstate:I

    .line 128
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 131
    move-result-object v1

    .line 132
    const-string/jumbo v2, "newstate"

    .line 135
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->fd:I

    .line 140
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 143
    move-result-object v1

    .line 144
    const-string/jumbo v2, "fd"

    .line 147
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->family:I

    .line 152
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 155
    move-result-object v1

    .line 156
    const-string/jumbo v2, "family"

    .line 159
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->type:I

    .line 164
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 167
    move-result-object v1

    .line 168
    const-string/jumbo v2, "type"

    .line 171
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->protocol:I

    .line 176
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 179
    move-result-object v1

    .line 180
    const-string/jumbo v2, "protocol"

    .line 183
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->sport:I

    .line 188
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 191
    move-result-object v1

    .line 192
    const-string/jumbo v2, "sport"

    .line 195
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->dport:I

    .line 200
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 203
    move-result-object v1

    .line 204
    const-string/jumbo v2, "dport"

    .line 207
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string/jumbo v1, "saddr"

    .line 213
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->saddr:Ljava/lang/String;

    .line 215
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string/jumbo v1, "daddr"

    .line 221
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->daddr:Ljava/lang/String;

    .line 223
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string/jumbo v1, "filepath"

    .line 229
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->filepath:Ljava/lang/String;

    .line 231
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    return-object v0
.end method
