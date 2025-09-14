.class public final Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;
.super Lcom/android/server/knox/zt/devicetrust/data/EndpointData;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final atime:J

.field public final cmdline:Ljava/lang/String;

.field public final ctime:J

.field public final cwd:Ljava/lang/String;

.field public final egid:I

.field public final euid:I

.field public final exitCode:I

.field public final filepath:Ljava/lang/String;

.field public final fsgid:I

.field public final fsuid:I

.field public final gid:I

.field public final mtime:J

.field public final ownerGid:I

.field public final ownerUid:I

.field public final pid:I

.field public final ppid:I

.field public final reserved_1:J

.field public final reserved_2:J

.field public final reserved_3:J

.field public final sgid:I

.field public final suid:I

.field public final syscall:I

.field public final tid:I

.field public final uid:I


# direct methods
.method public constructor <init>(IJIIIIIIIIIIIIIIIJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJ)V
    .locals 3

    move-object v0, p0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;-><init>(IJ)V

    move v1, p4

    .line 2
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->syscall:I

    move v1, p5

    .line 3
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->exitCode:I

    move v1, p6

    .line 4
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->tid:I

    move v1, p7

    .line 5
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->pid:I

    move v1, p8

    .line 6
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ppid:I

    move v1, p9

    .line 7
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->uid:I

    move v1, p10

    .line 8
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->gid:I

    move v1, p11

    .line 9
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->suid:I

    move v1, p12

    .line 10
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->sgid:I

    move/from16 v1, p13

    .line 11
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->euid:I

    move/from16 v1, p14

    .line 12
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->egid:I

    move/from16 v1, p15

    .line 13
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->fsuid:I

    move/from16 v1, p16

    .line 14
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->fsgid:I

    move/from16 v1, p17

    .line 15
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ownerUid:I

    move/from16 v1, p18

    .line 16
    iput v1, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ownerGid:I

    move-wide/from16 v1, p19

    .line 17
    iput-wide v1, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->atime:J

    move-wide/from16 v1, p21

    .line 18
    iput-wide v1, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->mtime:J

    move-wide/from16 v1, p23

    .line 19
    iput-wide v1, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ctime:J

    move-object/from16 v1, p25

    .line 20
    iput-object v1, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->filepath:Ljava/lang/String;

    move-object/from16 v1, p26

    .line 21
    iput-object v1, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->cwd:Ljava/lang/String;

    move-object/from16 v1, p27

    .line 22
    iput-object v1, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->cmdline:Ljava/lang/String;

    move-wide/from16 v1, p28

    .line 23
    iput-wide v1, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->reserved_1:J

    move-wide/from16 v1, p30

    .line 24
    iput-wide v1, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->reserved_2:J

    move-wide/from16 v1, p32

    .line 25
    iput-wide v1, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->reserved_3:J

    return-void
.end method


# virtual methods
.method public final getPid()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->pid:I

    .line 2
    .line 3
    return p0
.end method

.method public final getUid()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->uid:I

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
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->syscall:I

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
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->exitCode:I

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
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->tid:I

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
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->pid:I

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
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ppid:I

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
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->uid:I

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
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->gid:I

    .line 74
    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    const-string/jumbo v1, "suid"

    .line 79
    .line 80
    .line 81
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->suid:I

    .line 82
    .line 83
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 84
    .line 85
    .line 86
    const-string/jumbo v1, "sgid"

    .line 87
    .line 88
    .line 89
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->sgid:I

    .line 90
    .line 91
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 92
    .line 93
    .line 94
    const-string/jumbo v1, "euid"

    .line 95
    .line 96
    .line 97
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->euid:I

    .line 98
    .line 99
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    .line 101
    .line 102
    const-string/jumbo v1, "egid"

    .line 103
    .line 104
    .line 105
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->egid:I

    .line 106
    .line 107
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 108
    .line 109
    .line 110
    const-string/jumbo v1, "fsuid"

    .line 111
    .line 112
    .line 113
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->fsuid:I

    .line 114
    .line 115
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 116
    .line 117
    .line 118
    const-string/jumbo v1, "fsgid"

    .line 119
    .line 120
    .line 121
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->fsgid:I

    .line 122
    .line 123
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 124
    .line 125
    .line 126
    const-string/jumbo v1, "ownerUid"

    .line 127
    .line 128
    .line 129
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ownerUid:I

    .line 130
    .line 131
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 132
    .line 133
    .line 134
    const-string/jumbo v1, "ownerGid"

    .line 135
    .line 136
    .line 137
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ownerGid:I

    .line 138
    .line 139
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    .line 141
    .line 142
    const-string v1, "atime"

    .line 143
    .line 144
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->atime:J

    .line 145
    .line 146
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 147
    .line 148
    .line 149
    const-string/jumbo v1, "mtime"

    .line 150
    .line 151
    .line 152
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->mtime:J

    .line 153
    .line 154
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 155
    .line 156
    .line 157
    const-string/jumbo v1, "ctime"

    .line 158
    .line 159
    .line 160
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ctime:J

    .line 161
    .line 162
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 163
    .line 164
    .line 165
    const-string/jumbo v1, "filepath"

    .line 166
    .line 167
    .line 168
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->filepath:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    const-string/jumbo v1, "cwd"

    .line 174
    .line 175
    .line 176
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->cwd:Ljava/lang/String;

    .line 177
    .line 178
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    const-string/jumbo v1, "cmdline"

    .line 182
    .line 183
    .line 184
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->cmdline:Ljava/lang/String;

    .line 185
    .line 186
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    const-string/jumbo v1, "reserved_1"

    .line 190
    .line 191
    .line 192
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->reserved_1:J

    .line 193
    .line 194
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 195
    .line 196
    .line 197
    const-string/jumbo v1, "reserved_2"

    .line 198
    .line 199
    .line 200
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->reserved_2:J

    .line 201
    .line 202
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 203
    .line 204
    .line 205
    const-string/jumbo v1, "reserved_3"

    .line 206
    .line 207
    .line 208
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->reserved_3:J

    .line 209
    .line 210
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0, v0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->readExtras(Landroid/os/Bundle;)V

    .line 214
    .line 215
    .line 216
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
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->syscall:I

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
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->exitCode:I

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
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->tid:I

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
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->pid:I

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
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ppid:I

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
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->uid:I

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
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->gid:I

    .line 74
    .line 75
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 76
    .line 77
    .line 78
    const-string/jumbo v1, "suid"

    .line 79
    .line 80
    .line 81
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->suid:I

    .line 82
    .line 83
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 84
    .line 85
    .line 86
    const-string/jumbo v1, "sgid"

    .line 87
    .line 88
    .line 89
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->sgid:I

    .line 90
    .line 91
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 92
    .line 93
    .line 94
    const-string/jumbo v1, "euid"

    .line 95
    .line 96
    .line 97
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->euid:I

    .line 98
    .line 99
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 100
    .line 101
    .line 102
    const-string/jumbo v1, "egid"

    .line 103
    .line 104
    .line 105
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->egid:I

    .line 106
    .line 107
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 108
    .line 109
    .line 110
    const-string/jumbo v1, "fsuid"

    .line 111
    .line 112
    .line 113
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->fsuid:I

    .line 114
    .line 115
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 116
    .line 117
    .line 118
    const-string/jumbo v1, "fsgid"

    .line 119
    .line 120
    .line 121
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->fsgid:I

    .line 122
    .line 123
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 124
    .line 125
    .line 126
    const-string/jumbo v1, "ownerUid"

    .line 127
    .line 128
    .line 129
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ownerUid:I

    .line 130
    .line 131
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 132
    .line 133
    .line 134
    const-string/jumbo v1, "ownerGid"

    .line 135
    .line 136
    .line 137
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ownerGid:I

    .line 138
    .line 139
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 140
    .line 141
    .line 142
    const-string v1, "atime"

    .line 143
    .line 144
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->atime:J

    .line 145
    .line 146
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 147
    .line 148
    .line 149
    const-string/jumbo v1, "mtime"

    .line 150
    .line 151
    .line 152
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->mtime:J

    .line 153
    .line 154
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 155
    .line 156
    .line 157
    const-string/jumbo v1, "ctime"

    .line 158
    .line 159
    .line 160
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ctime:J

    .line 161
    .line 162
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 163
    .line 164
    .line 165
    const-string/jumbo v1, "filepath"

    .line 166
    .line 167
    .line 168
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->filepath:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    .line 172
    .line 173
    const-string/jumbo v1, "cwd"

    .line 174
    .line 175
    .line 176
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->cwd:Ljava/lang/String;

    .line 177
    .line 178
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    .line 180
    .line 181
    const-string/jumbo v1, "cmdline"

    .line 182
    .line 183
    .line 184
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->cmdline:Ljava/lang/String;

    .line 185
    .line 186
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    .line 188
    .line 189
    const-string/jumbo v1, "reserved_1"

    .line 190
    .line 191
    .line 192
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->reserved_1:J

    .line 193
    .line 194
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 195
    .line 196
    .line 197
    const-string/jumbo v1, "reserved_2"

    .line 198
    .line 199
    .line 200
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->reserved_2:J

    .line 201
    .line 202
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 203
    .line 204
    .line 205
    const-string/jumbo v1, "reserved_3"

    .line 206
    .line 207
    .line 208
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->reserved_3:J

    .line 209
    .line 210
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .line 212
    .line 213
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    return-object p0
.end method

.method public final toLine()Ljava/lang/String;
    .locals 36

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
    iget v4, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->syscall:I

    .line 10
    .line 11
    iget v5, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->exitCode:I

    .line 12
    .line 13
    iget v6, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->tid:I

    .line 14
    .line 15
    iget v7, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->pid:I

    .line 16
    .line 17
    iget v8, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ppid:I

    .line 18
    .line 19
    iget v9, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->uid:I

    .line 20
    .line 21
    iget v10, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->gid:I

    .line 22
    .line 23
    iget v11, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->suid:I

    .line 24
    .line 25
    iget v12, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->sgid:I

    .line 26
    .line 27
    iget v13, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->euid:I

    .line 28
    .line 29
    iget v14, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->egid:I

    .line 30
    .line 31
    iget v15, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->fsuid:I

    .line 32
    .line 33
    move/from16 v16, v14

    .line 34
    .line 35
    iget v14, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->fsgid:I

    .line 36
    .line 37
    move/from16 v17, v14

    .line 38
    .line 39
    iget v14, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ownerUid:I

    .line 40
    .line 41
    move/from16 v18, v14

    .line 42
    .line 43
    iget v14, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ownerGid:I

    .line 44
    .line 45
    move/from16 v20, v14

    .line 46
    .line 47
    move/from16 v19, v15

    .line 48
    .line 49
    iget-wide v14, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->atime:J

    .line 50
    .line 51
    move-wide/from16 v21, v14

    .line 52
    .line 53
    iget-wide v14, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->mtime:J

    .line 54
    .line 55
    move-wide/from16 v23, v14

    .line 56
    .line 57
    iget-wide v14, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ctime:J

    .line 58
    .line 59
    move-wide/from16 v25, v14

    .line 60
    .line 61
    iget-object v14, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->filepath:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v15, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->cwd:Ljava/lang/String;

    .line 64
    .line 65
    move-object/from16 v27, v15

    .line 66
    .line 67
    iget-object v15, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->cmdline:Ljava/lang/String;

    .line 68
    .line 69
    move-object/from16 v28, v14

    .line 70
    .line 71
    move-object/from16 v29, v15

    .line 72
    .line 73
    iget-wide v14, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->reserved_1:J

    .line 74
    .line 75
    move-wide/from16 v30, v14

    .line 76
    .line 77
    iget-wide v14, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->reserved_2:J

    .line 78
    .line 79
    move-wide/from16 v32, v14

    .line 80
    .line 81
    iget-wide v14, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->reserved_3:J

    .line 82
    .line 83
    move-wide/from16 v34, v14

    .line 84
    .line 85
    const/4 v14, 0x1

    .line 86
    invoke-virtual {v0, v14}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->readExtras(Z)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const-string/jumbo v14, "when : "

    .line 91
    .line 92
    .line 93
    const-string v15, " | what : "

    .line 94
    .line 95
    invoke-static {v3, v14, v1, v2, v15}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    const-string v2, " | syscall : "

    .line 100
    .line 101
    const-string v3, " | exitCode : "

    .line 102
    .line 103
    invoke-static {v4, v5, v2, v3, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 104
    .line 105
    .line 106
    const-string v2, " | tid : "

    .line 107
    .line 108
    const-string v3, " | pid : "

    .line 109
    .line 110
    invoke-static {v6, v7, v2, v3, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 111
    .line 112
    .line 113
    const-string v2, " | ppid : "

    .line 114
    .line 115
    const-string v3, " | uid : "

    .line 116
    .line 117
    invoke-static {v8, v9, v2, v3, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 118
    .line 119
    .line 120
    const-string v2, " | gid : "

    .line 121
    .line 122
    const-string v3, " | suid : "

    .line 123
    .line 124
    invoke-static {v10, v11, v2, v3, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 125
    .line 126
    .line 127
    const-string v2, " | sgid : "

    .line 128
    .line 129
    const-string v3, " | euid : "

    .line 130
    .line 131
    invoke-static {v12, v13, v2, v3, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 132
    .line 133
    .line 134
    const-string v2, " | egid : "

    .line 135
    .line 136
    const-string v3, " | fsuid : "

    .line 137
    .line 138
    move/from16 v4, v16

    .line 139
    .line 140
    move/from16 v5, v19

    .line 141
    .line 142
    invoke-static {v4, v5, v2, v3, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 143
    .line 144
    .line 145
    const-string v2, " | fsgid : "

    .line 146
    .line 147
    const-string v3, " | ownerUid : "

    .line 148
    .line 149
    move/from16 v4, v17

    .line 150
    .line 151
    move/from16 v5, v18

    .line 152
    .line 153
    invoke-static {v4, v5, v2, v3, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 154
    .line 155
    .line 156
    const-string v2, " | ownerGid : "

    .line 157
    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    move/from16 v2, v20

    .line 162
    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v2, " | atime : "

    .line 167
    .line 168
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    move-wide/from16 v2, v21

    .line 172
    .line 173
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v2, " | mtime : "

    .line 177
    .line 178
    const-string v3, " | ctime : "

    .line 179
    .line 180
    move-wide/from16 v4, v23

    .line 181
    .line 182
    invoke-static {v1, v2, v4, v5, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 183
    .line 184
    .line 185
    move-wide/from16 v2, v25

    .line 186
    .line 187
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string v2, " | filepath : "

    .line 191
    .line 192
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    move-object/from16 v2, v28

    .line 196
    .line 197
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string v2, " | cwd : "

    .line 201
    .line 202
    const-string v3, " | cmdline : "

    .line 203
    .line 204
    move-object/from16 v4, v27

    .line 205
    .line 206
    move-object/from16 v5, v29

    .line 207
    .line 208
    invoke-static {v1, v2, v4, v3, v5}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    const-string/jumbo v2, "reserved_1 : "

    .line 212
    .line 213
    .line 214
    const-string v3, " | reserved_2 : "

    .line 215
    .line 216
    move-wide/from16 v4, v30

    .line 217
    .line 218
    invoke-static {v1, v2, v4, v5, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 219
    .line 220
    .line 221
    move-wide/from16 v2, v32

    .line 222
    .line 223
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v2, " | reserved_3 : "

    .line 227
    .line 228
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    move-wide/from16 v2, v34

    .line 232
    .line 233
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
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
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->syscall:I

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
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->exitCode:I

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
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->tid:I

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
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->pid:I

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
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ppid:I

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
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->uid:I

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
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->gid:I

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
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->suid:I

    .line 115
    .line 116
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    const-string/jumbo v2, "suid"

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->sgid:I

    .line 127
    .line 128
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    const-string/jumbo v2, "sgid"

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->euid:I

    .line 139
    .line 140
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    const-string/jumbo v2, "euid"

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->egid:I

    .line 151
    .line 152
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    const-string/jumbo v2, "egid"

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->fsuid:I

    .line 163
    .line 164
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    const-string/jumbo v2, "fsuid"

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->fsgid:I

    .line 175
    .line 176
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    const-string/jumbo v2, "fsgid"

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ownerUid:I

    .line 187
    .line 188
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    const-string/jumbo v2, "ownerUid"

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ownerGid:I

    .line 199
    .line 200
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    const-string/jumbo v2, "ownerGid"

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->atime:J

    .line 211
    .line 212
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    const-string v2, "atime"

    .line 217
    .line 218
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->mtime:J

    .line 222
    .line 223
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    const-string/jumbo v2, "mtime"

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ctime:J

    .line 234
    .line 235
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    const-string/jumbo v2, "ctime"

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    const-string/jumbo v1, "filepath"

    .line 246
    .line 247
    .line 248
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->filepath:Ljava/lang/String;

    .line 249
    .line 250
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    const-string/jumbo v1, "cwd"

    .line 254
    .line 255
    .line 256
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->cwd:Ljava/lang/String;

    .line 257
    .line 258
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    const-string/jumbo v1, "cmdline"

    .line 262
    .line 263
    .line 264
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->cmdline:Ljava/lang/String;

    .line 265
    .line 266
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->reserved_1:J

    .line 270
    .line 271
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    const-string/jumbo v2, "reserved_1"

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->reserved_2:J

    .line 282
    .line 283
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    const-string/jumbo v2, "reserved_2"

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->reserved_3:J

    .line 294
    .line 295
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object p0

    .line 299
    const-string/jumbo v1, "reserved_3"

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    return-object v0
.end method
