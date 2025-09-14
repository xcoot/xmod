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

    .line 3
    .line 4
    .line 5
    move v1, p4

    .line 6
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->syscall:I

    .line 7
    .line 8
    move v1, p5

    .line 9
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->exitCode:I

    .line 10
    .line 11
    move v1, p6

    .line 12
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->tid:I

    .line 13
    .line 14
    move v1, p7

    .line 15
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->pid:I

    .line 16
    .line 17
    move v1, p8

    .line 18
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->ppid:I

    .line 19
    .line 20
    move v1, p9

    .line 21
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->uid:I

    .line 22
    .line 23
    move v1, p10

    .line 24
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->gid:I

    .line 25
    .line 26
    move v1, p11

    .line 27
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->oldstate:I

    .line 28
    .line 29
    move v1, p12

    .line 30
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->newstate:I

    .line 31
    .line 32
    move v1, p13

    .line 33
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->fd:I

    .line 34
    .line 35
    move/from16 v1, p14

    .line 36
    .line 37
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->family:I

    .line 38
    .line 39
    move/from16 v1, p15

    .line 40
    .line 41
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->type:I

    .line 42
    .line 43
    move/from16 v1, p16

    .line 44
    .line 45
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->protocol:I

    .line 46
    .line 47
    move/from16 v1, p17

    .line 48
    .line 49
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->sport:I

    .line 50
    .line 51
    move/from16 v1, p18

    .line 52
    .line 53
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->dport:I

    .line 54
    .line 55
    move-object/from16 v1, p19

    .line 56
    .line 57
    iput-object v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->saddr:Ljava/lang/String;

    .line 58
    .line 59
    move-object/from16 v1, p20

    .line 60
    .line 61
    iput-object v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->daddr:Ljava/lang/String;

    .line 62
    .line 63
    move-object/from16 v1, p21

    .line 64
    .line 65
    iput-object v1, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->filepath:Ljava/lang/String;

    .line 66
    .line 67
    return-void
.end method


# virtual methods
.method public final getPid()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->pid:I

    .line 2
    .line 3
    return p0
.end method

.method public final getUid()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->uid:I

    .line 2
    .line 3
    return p0
.end method

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
    const-string/jumbo v1, "syscall"

    .line 23
    .line 24
    .line 25
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->syscall:I

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    const-string/jumbo v1, "exitCode"

    .line 31
    .line 32
    .line 33
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->exitCode:I

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    const-string/jumbo v1, "tid"

    .line 39
    .line 40
    .line 41
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->tid:I

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    const-string/jumbo v1, "pid"

    .line 47
    .line 48
    .line 49
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->pid:I

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    const-string/jumbo v1, "ppid"

    .line 55
    .line 56
    .line 57
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->ppid:I

    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    .line 61
    .line 62
    const-string/jumbo v1, "uid"

    .line 63
    .line 64
    .line 65
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->uid:I

    .line 66
    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    const-string/jumbo v1, "gid"

    .line 71
    .line 72
    .line 73
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->gid:I

    .line 74
    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    const-string/jumbo v1, "oldstate"

    .line 79
    .line 80
    .line 81
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->oldstate:I

    .line 82
    .line 83
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 84
    .line 85
    .line 86
    const-string/jumbo v1, "newstate"

    .line 87
    .line 88
    .line 89
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->newstate:I

    .line 90
    .line 91
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 92
    .line 93
    .line 94
    const-string/jumbo v1, "fd"

    .line 95
    .line 96
    .line 97
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->fd:I

    .line 98
    .line 99
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    .line 101
    .line 102
    const-string/jumbo v1, "family"

    .line 103
    .line 104
    .line 105
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->family:I

    .line 106
    .line 107
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 108
    .line 109
    .line 110
    const-string/jumbo v1, "type"

    .line 111
    .line 112
    .line 113
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->type:I

    .line 114
    .line 115
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 116
    .line 117
    .line 118
    const-string/jumbo v1, "protocol"

    .line 119
    .line 120
    .line 121
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->protocol:I

    .line 122
    .line 123
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 124
    .line 125
    .line 126
    const-string/jumbo v1, "sport"

    .line 127
    .line 128
    .line 129
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->sport:I

    .line 130
    .line 131
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 132
    .line 133
    .line 134
    const-string/jumbo v1, "dport"

    .line 135
    .line 136
    .line 137
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->dport:I

    .line 138
    .line 139
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    .line 141
    .line 142
    const-string/jumbo v1, "saddr"

    .line 143
    .line 144
    .line 145
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->saddr:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const-string/jumbo v1, "daddr"

    .line 151
    .line 152
    .line 153
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->daddr:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    const-string/jumbo v1, "filepath"

    .line 159
    .line 160
    .line 161
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->filepath:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, v0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->readExtras(Landroid/os/Bundle;)V

    .line 167
    .line 168
    .line 169
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
    const-string/jumbo v1, "syscall"

    .line 23
    .line 24
    .line 25
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->syscall:I

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 28
    .line 29
    .line 30
    const-string/jumbo v1, "exitCode"

    .line 31
    .line 32
    .line 33
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->exitCode:I

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 36
    .line 37
    .line 38
    const-string/jumbo v1, "tid"

    .line 39
    .line 40
    .line 41
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->tid:I

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 44
    .line 45
    .line 46
    const-string/jumbo v1, "pid"

    .line 47
    .line 48
    .line 49
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->pid:I

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 52
    .line 53
    .line 54
    const-string/jumbo v1, "ppid"

    .line 55
    .line 56
    .line 57
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->ppid:I

    .line 58
    .line 59
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    const-string/jumbo v1, "uid"

    .line 63
    .line 64
    .line 65
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->uid:I

    .line 66
    .line 67
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 68
    .line 69
    .line 70
    const-string/jumbo v1, "gid"

    .line 71
    .line 72
    .line 73
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->gid:I

    .line 74
    .line 75
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 76
    .line 77
    .line 78
    const-string/jumbo v1, "oldstate"

    .line 79
    .line 80
    .line 81
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->oldstate:I

    .line 82
    .line 83
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 84
    .line 85
    .line 86
    const-string/jumbo v1, "newstate"

    .line 87
    .line 88
    .line 89
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->newstate:I

    .line 90
    .line 91
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 92
    .line 93
    .line 94
    const-string/jumbo v1, "fd"

    .line 95
    .line 96
    .line 97
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->fd:I

    .line 98
    .line 99
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 100
    .line 101
    .line 102
    const-string/jumbo v1, "family"

    .line 103
    .line 104
    .line 105
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->family:I

    .line 106
    .line 107
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 108
    .line 109
    .line 110
    const-string/jumbo v1, "type"

    .line 111
    .line 112
    .line 113
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->type:I

    .line 114
    .line 115
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 116
    .line 117
    .line 118
    const-string/jumbo v1, "protocol"

    .line 119
    .line 120
    .line 121
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->protocol:I

    .line 122
    .line 123
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 124
    .line 125
    .line 126
    const-string/jumbo v1, "sport"

    .line 127
    .line 128
    .line 129
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->sport:I

    .line 130
    .line 131
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 132
    .line 133
    .line 134
    const-string/jumbo v1, "dport"

    .line 135
    .line 136
    .line 137
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->dport:I

    .line 138
    .line 139
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 140
    .line 141
    .line 142
    const-string/jumbo v1, "saddr"

    .line 143
    .line 144
    .line 145
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->saddr:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    .line 149
    .line 150
    const-string/jumbo v1, "daddr"

    .line 151
    .line 152
    .line 153
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->daddr:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    .line 157
    .line 158
    const-string/jumbo v1, "filepath"

    .line 159
    .line 160
    .line 161
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->filepath:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .line 165
    .line 166
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    return-object p0
.end method

.method public final toLine()Ljava/lang/String;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 4
    .line 5
    iget-wide v2, v0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->actualEventTime:J

    .line 6
    .line 7
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->event:I

    .line 12
    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->syscall:I

    .line 18
    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->exitCode:I

    .line 24
    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->tid:I

    .line 30
    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->pid:I

    .line 36
    .line 37
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v9

    .line 41
    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->ppid:I

    .line 42
    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v10

    .line 47
    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->uid:I

    .line 48
    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v11

    .line 53
    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->gid:I

    .line 54
    .line 55
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v12

    .line 59
    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->oldstate:I

    .line 60
    .line 61
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v13

    .line 65
    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->newstate:I

    .line 66
    .line 67
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v14

    .line 71
    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->fd:I

    .line 72
    .line 73
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v15

    .line 77
    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->family:I

    .line 78
    .line 79
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v16

    .line 83
    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->type:I

    .line 84
    .line 85
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v17

    .line 89
    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->protocol:I

    .line 90
    .line 91
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v18

    .line 95
    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->sport:I

    .line 96
    .line 97
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v19

    .line 101
    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->dport:I

    .line 102
    .line 103
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v20

    .line 107
    iget-object v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->saddr:Ljava/lang/String;

    .line 108
    .line 109
    move-object/from16 v21, v2

    .line 110
    .line 111
    iget-object v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->daddr:Ljava/lang/String;

    .line 112
    .line 113
    move-object/from16 v22, v2

    .line 114
    .line 115
    iget-object v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->filepath:Ljava/lang/String;

    .line 116
    .line 117
    move-object/from16 v23, v2

    .line 118
    .line 119
    const/4 v2, 0x1

    .line 120
    invoke-virtual {v0, v2}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->readExtras(Z)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v24

    .line 124
    filled-new-array/range {v4 .. v24}, [Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    const-string/jumbo v2, "when : %d | what : %d | syscall : %d | exitCode : %d | tid : %d | pid : %d | ppid : %d | uid : %d | gid : %d | oldstate : %d | newstate : %d | fd : %d | family : %d | type : %d | protocol : %d | sport : %d | dport : %d | saddr : %d | daddr : %d | filepath : %s%s"

    .line 129
    .line 130
    .line 131
    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
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
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->syscall:I

    .line 31
    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string/jumbo v2, "syscall"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->exitCode:I

    .line 43
    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string/jumbo v2, "exitCode"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->tid:I

    .line 55
    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const-string/jumbo v2, "tid"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->pid:I

    .line 67
    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const-string/jumbo v2, "pid"

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->ppid:I

    .line 79
    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const-string/jumbo v2, "ppid"

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->uid:I

    .line 91
    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    const-string/jumbo v2, "uid"

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->gid:I

    .line 103
    .line 104
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    const-string/jumbo v2, "gid"

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->oldstate:I

    .line 115
    .line 116
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    const-string/jumbo v2, "oldstate"

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->newstate:I

    .line 127
    .line 128
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    const-string/jumbo v2, "newstate"

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->fd:I

    .line 139
    .line 140
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    const-string/jumbo v2, "fd"

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->family:I

    .line 151
    .line 152
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    const-string/jumbo v2, "family"

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->type:I

    .line 163
    .line 164
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    const-string/jumbo v2, "type"

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->protocol:I

    .line 175
    .line 176
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    const-string/jumbo v2, "protocol"

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->sport:I

    .line 187
    .line 188
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    const-string/jumbo v2, "sport"

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->dport:I

    .line 199
    .line 200
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    const-string/jumbo v2, "dport"

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    const-string/jumbo v1, "saddr"

    .line 211
    .line 212
    .line 213
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->saddr:Ljava/lang/String;

    .line 214
    .line 215
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    const-string/jumbo v1, "daddr"

    .line 219
    .line 220
    .line 221
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->daddr:Ljava/lang/String;

    .line 222
    .line 223
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    const-string/jumbo v1, "filepath"

    .line 227
    .line 228
    .line 229
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->filepath:Ljava/lang/String;

    .line 230
    .line 231
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    return-object v0
.end method
