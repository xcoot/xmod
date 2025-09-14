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

    .line 3
    return p0
.end method

.method public final getUid()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->uid:I

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
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->syscall:I

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 30
    const-string/jumbo v1, "exitCode"

    .line 33
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->exitCode:I

    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 38
    const-string/jumbo v1, "tid"

    .line 41
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->tid:I

    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 46
    const-string/jumbo v1, "pid"

    .line 49
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->pid:I

    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 54
    const-string/jumbo v1, "ppid"

    .line 57
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ppid:I

    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62
    const-string/jumbo v1, "uid"

    .line 65
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->uid:I

    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 70
    const-string/jumbo v1, "gid"

    .line 73
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->gid:I

    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 78
    const-string/jumbo v1, "suid"

    .line 81
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->suid:I

    .line 83
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 86
    const-string/jumbo v1, "sgid"

    .line 89
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->sgid:I

    .line 91
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 94
    const-string/jumbo v1, "euid"

    .line 97
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->euid:I

    .line 99
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    const-string/jumbo v1, "egid"

    .line 105
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->egid:I

    .line 107
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    const-string/jumbo v1, "fsuid"

    .line 113
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->fsuid:I

    .line 115
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 118
    const-string/jumbo v1, "fsgid"

    .line 121
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->fsgid:I

    .line 123
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 126
    const-string/jumbo v1, "ownerUid"

    .line 129
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ownerUid:I

    .line 131
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 134
    const-string/jumbo v1, "ownerGid"

    .line 137
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ownerGid:I

    .line 139
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 142
    const-string v1, "atime"

    .line 144
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->atime:J

    .line 146
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 149
    const-string/jumbo v1, "mtime"

    .line 152
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->mtime:J

    .line 154
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 157
    const-string/jumbo v1, "ctime"

    .line 160
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ctime:J

    .line 162
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 165
    const-string/jumbo v1, "filepath"

    .line 168
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->filepath:Ljava/lang/String;

    .line 170
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string/jumbo v1, "cwd"

    .line 176
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->cwd:Ljava/lang/String;

    .line 178
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string/jumbo v1, "cmdline"

    .line 184
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->cmdline:Ljava/lang/String;

    .line 186
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string/jumbo v1, "reserved_1"

    .line 192
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->reserved_1:J

    .line 194
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 197
    const-string/jumbo v1, "reserved_2"

    .line 200
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->reserved_2:J

    .line 202
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 205
    const-string/jumbo v1, "reserved_3"

    .line 208
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->reserved_3:J

    .line 210
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 213
    invoke-virtual {p0, v0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->readExtras(Landroid/os/Bundle;)V

    .line 216
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
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->syscall:I

    .line 27
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 30
    const-string/jumbo v1, "exitCode"

    .line 33
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->exitCode:I

    .line 35
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 38
    const-string/jumbo v1, "tid"

    .line 41
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->tid:I

    .line 43
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 46
    const-string/jumbo v1, "pid"

    .line 49
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->pid:I

    .line 51
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 54
    const-string/jumbo v1, "ppid"

    .line 57
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ppid:I

    .line 59
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 62
    const-string/jumbo v1, "uid"

    .line 65
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->uid:I

    .line 67
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 70
    const-string/jumbo v1, "gid"

    .line 73
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->gid:I

    .line 75
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 78
    const-string/jumbo v1, "suid"

    .line 81
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->suid:I

    .line 83
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 86
    const-string/jumbo v1, "sgid"

    .line 89
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->sgid:I

    .line 91
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 94
    const-string/jumbo v1, "euid"

    .line 97
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->euid:I

    .line 99
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 102
    const-string/jumbo v1, "egid"

    .line 105
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->egid:I

    .line 107
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 110
    const-string/jumbo v1, "fsuid"

    .line 113
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->fsuid:I

    .line 115
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 118
    const-string/jumbo v1, "fsgid"

    .line 121
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->fsgid:I

    .line 123
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 126
    const-string/jumbo v1, "ownerUid"

    .line 129
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ownerUid:I

    .line 131
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 134
    const-string/jumbo v1, "ownerGid"

    .line 137
    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ownerGid:I

    .line 139
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 142
    const-string v1, "atime"

    .line 144
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->atime:J

    .line 146
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 149
    const-string/jumbo v1, "mtime"

    .line 152
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->mtime:J

    .line 154
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 157
    const-string/jumbo v1, "ctime"

    .line 160
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ctime:J

    .line 162
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 165
    const-string/jumbo v1, "filepath"

    .line 168
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->filepath:Ljava/lang/String;

    .line 170
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    const-string/jumbo v1, "cwd"

    .line 176
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->cwd:Ljava/lang/String;

    .line 178
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    const-string/jumbo v1, "cmdline"

    .line 184
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->cmdline:Ljava/lang/String;

    .line 186
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    const-string/jumbo v1, "reserved_1"

    .line 192
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->reserved_1:J

    .line 194
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 197
    const-string/jumbo v1, "reserved_2"

    .line 200
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->reserved_2:J

    .line 202
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 205
    const-string/jumbo v1, "reserved_3"

    .line 208
    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->reserved_3:J

    .line 210
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 216
    move-result-object p0

    .line 217
    return-object p0
.end method

.method public final toLine()Ljava/lang/String;
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 3
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 5
    iget-wide v1, v0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->actualEventTime:J

    .line 7
    iget v3, v0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->event:I

    .line 9
    iget v4, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->syscall:I

    .line 11
    iget v5, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->exitCode:I

    .line 13
    iget v6, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->tid:I

    .line 15
    iget v7, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->pid:I

    .line 17
    iget v8, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ppid:I

    .line 19
    iget v9, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->uid:I

    .line 21
    iget v10, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->gid:I

    .line 23
    iget v11, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->suid:I

    .line 25
    iget v12, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->sgid:I

    .line 27
    iget v13, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->euid:I

    .line 29
    iget v14, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->egid:I

    .line 31
    iget v15, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->fsuid:I

    .line 33
    move/from16 v16, v14

    .line 35
    iget v14, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->fsgid:I

    .line 37
    move/from16 v17, v14

    .line 39
    iget v14, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ownerUid:I

    .line 41
    move/from16 v18, v14

    .line 43
    iget v14, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ownerGid:I

    .line 45
    move/from16 v20, v14

    .line 47
    move/from16 v19, v15

    .line 49
    iget-wide v14, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->atime:J

    .line 51
    move-wide/from16 v21, v14

    .line 53
    iget-wide v14, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->mtime:J

    .line 55
    move-wide/from16 v23, v14

    .line 57
    iget-wide v14, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ctime:J

    .line 59
    move-wide/from16 v25, v14

    .line 61
    iget-object v14, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->filepath:Ljava/lang/String;

    .line 63
    iget-object v15, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->cwd:Ljava/lang/String;

    .line 65
    move-object/from16 v27, v15

    .line 67
    iget-object v15, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->cmdline:Ljava/lang/String;

    .line 69
    move-object/from16 v28, v14

    .line 71
    move-object/from16 v29, v15

    .line 73
    iget-wide v14, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->reserved_1:J

    .line 75
    move-wide/from16 v30, v14

    .line 77
    iget-wide v14, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->reserved_2:J

    .line 79
    move-wide/from16 v32, v14

    .line 81
    iget-wide v14, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->reserved_3:J

    .line 83
    move-wide/from16 v34, v14

    .line 85
    const/4 v14, 0x1

    .line 86
    invoke-virtual {v0, v14}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->readExtras(Z)Ljava/lang/String;

    .line 89
    move-result-object v0

    .line 90
    const-string/jumbo v14, "when : "

    .line 93
    const-string v15, " | what : "

    .line 95
    invoke-static {v3, v14, v1, v2, v15}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    move-result-object v1

    .line 99
    const-string v2, " | syscall : "

    .line 101
    const-string v3, " | exitCode : "

    .line 103
    invoke-static {v4, v5, v2, v3, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 106
    const-string v2, " | tid : "

    .line 108
    const-string v3, " | pid : "

    .line 110
    invoke-static {v6, v7, v2, v3, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 113
    const-string v2, " | ppid : "

    .line 115
    const-string v3, " | uid : "

    .line 117
    invoke-static {v8, v9, v2, v3, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 120
    const-string v2, " | gid : "

    .line 122
    const-string v3, " | suid : "

    .line 124
    invoke-static {v10, v11, v2, v3, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 127
    const-string v2, " | sgid : "

    .line 129
    const-string v3, " | euid : "

    .line 131
    invoke-static {v12, v13, v2, v3, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 134
    const-string v2, " | egid : "

    .line 136
    const-string v3, " | fsuid : "

    .line 138
    move/from16 v4, v16

    .line 140
    move/from16 v5, v19

    .line 142
    invoke-static {v4, v5, v2, v3, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 145
    const-string v2, " | fsgid : "

    .line 147
    const-string v3, " | ownerUid : "

    .line 149
    move/from16 v4, v17

    .line 151
    move/from16 v5, v18

    .line 153
    invoke-static {v4, v5, v2, v3, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 156
    const-string v2, " | ownerGid : "

    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    move/from16 v2, v20

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    const-string v2, " | atime : "

    .line 168
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    move-wide/from16 v2, v21

    .line 173
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 176
    const-string v2, " | mtime : "

    .line 178
    const-string v3, " | ctime : "

    .line 180
    move-wide/from16 v4, v23

    .line 182
    invoke-static {v1, v2, v4, v5, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 185
    move-wide/from16 v2, v25

    .line 187
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 190
    const-string v2, " | filepath : "

    .line 192
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    move-object/from16 v2, v28

    .line 197
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const-string v2, " | cwd : "

    .line 202
    const-string v3, " | cmdline : "

    .line 204
    move-object/from16 v4, v27

    .line 206
    move-object/from16 v5, v29

    .line 208
    invoke-static {v1, v2, v4, v3, v5}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string/jumbo v2, "reserved_1 : "

    .line 214
    const-string v3, " | reserved_2 : "

    .line 216
    move-wide/from16 v4, v30

    .line 218
    invoke-static {v1, v2, v4, v5, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 221
    move-wide/from16 v2, v32

    .line 223
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 226
    const-string v2, " | reserved_3 : "

    .line 228
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    move-wide/from16 v2, v34

    .line 233
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    move-result-object v0

    .line 243
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
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->syscall:I

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    const-string/jumbo v2, "syscall"

    .line 39
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->exitCode:I

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    const-string/jumbo v2, "exitCode"

    .line 51
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->tid:I

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    const-string/jumbo v2, "tid"

    .line 63
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->pid:I

    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 72
    const-string/jumbo v2, "pid"

    .line 75
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ppid:I

    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 83
    move-result-object v1

    .line 84
    const-string/jumbo v2, "ppid"

    .line 87
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->uid:I

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 95
    move-result-object v1

    .line 96
    const-string/jumbo v2, "uid"

    .line 99
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->gid:I

    .line 104
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 107
    move-result-object v1

    .line 108
    const-string/jumbo v2, "gid"

    .line 111
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->suid:I

    .line 116
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 119
    move-result-object v1

    .line 120
    const-string/jumbo v2, "suid"

    .line 123
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->sgid:I

    .line 128
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 131
    move-result-object v1

    .line 132
    const-string/jumbo v2, "sgid"

    .line 135
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->euid:I

    .line 140
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 143
    move-result-object v1

    .line 144
    const-string/jumbo v2, "euid"

    .line 147
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->egid:I

    .line 152
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 155
    move-result-object v1

    .line 156
    const-string/jumbo v2, "egid"

    .line 159
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->fsuid:I

    .line 164
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 167
    move-result-object v1

    .line 168
    const-string/jumbo v2, "fsuid"

    .line 171
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->fsgid:I

    .line 176
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 179
    move-result-object v1

    .line 180
    const-string/jumbo v2, "fsgid"

    .line 183
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ownerUid:I

    .line 188
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 191
    move-result-object v1

    .line 192
    const-string/jumbo v2, "ownerUid"

    .line 195
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ownerGid:I

    .line 200
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 203
    move-result-object v1

    .line 204
    const-string/jumbo v2, "ownerGid"

    .line 207
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->atime:J

    .line 212
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 215
    move-result-object v1

    .line 216
    const-string v2, "atime"

    .line 218
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->mtime:J

    .line 223
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 226
    move-result-object v1

    .line 227
    const-string/jumbo v2, "mtime"

    .line 230
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ctime:J

    .line 235
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 238
    move-result-object v1

    .line 239
    const-string/jumbo v2, "ctime"

    .line 242
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string/jumbo v1, "filepath"

    .line 248
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->filepath:Ljava/lang/String;

    .line 250
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string/jumbo v1, "cwd"

    .line 256
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->cwd:Ljava/lang/String;

    .line 258
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string/jumbo v1, "cmdline"

    .line 264
    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->cmdline:Ljava/lang/String;

    .line 266
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->reserved_1:J

    .line 271
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 274
    move-result-object v1

    .line 275
    const-string/jumbo v2, "reserved_1"

    .line 278
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->reserved_2:J

    .line 283
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 286
    move-result-object v1

    .line 287
    const-string/jumbo v2, "reserved_2"

    .line 290
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->reserved_3:J

    .line 295
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 298
    move-result-object p0

    .line 299
    const-string/jumbo v1, "reserved_3"

    .line 302
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    return-object v0
.end method
