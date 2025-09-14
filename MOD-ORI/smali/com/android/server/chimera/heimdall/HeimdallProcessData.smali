.class public final Lcom/android/server/chimera/heimdall/HeimdallProcessData;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sPool:Lcom/android/server/chimera/heimdall/HeimdallProcessData;

.field public static sPoolSize:I

.field public static final sPoolSync:Ljava/lang/Object;


# instance fields
.field public anonAfterGc:I

.field public anonBeforeGc:I

.field public countDownPhaseRetry:I

.field public delayPhase:J

.field public firstAppPackageName:Ljava/lang/String;

.field public firstAppVersionName:Ljava/lang/String;

.field public flags:I

.field public killTime:J

.field public next:Lcom/android/server/chimera/heimdall/HeimdallProcessData;

.field public pid:I

.field public processName:Ljava/lang/String;

.field public pss:J

.field public rssAnon:I

.field public rssFile:I

.field public scanTimeAfterGc:J

.field public scanTimeBeforeGc:J

.field public uid:I

.field public vmRss:I

.field public vmSwap:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->sPoolSync:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public static obtainData()Lcom/android/server/chimera/heimdall/HeimdallProcessData;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->sPoolSync:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->sPool:Lcom/android/server/chimera/heimdall/HeimdallProcessData;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v2, v1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->next:Lcom/android/server/chimera/heimdall/HeimdallProcessData;

    .line 9
    .line 10
    sput-object v2, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->sPool:Lcom/android/server/chimera/heimdall/HeimdallProcessData;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    iput-object v2, v1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->next:Lcom/android/server/chimera/heimdall/HeimdallProcessData;

    .line 14
    .line 15
    sget v2, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->sPoolSize:I

    .line 16
    .line 17
    add-int/lit8 v2, v2, -0x1

    .line 18
    .line 19
    sput v2, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->sPoolSize:I

    .line 20
    .line 21
    iget v2, v1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    .line 22
    .line 23
    or-int/lit16 v2, v2, 0x80

    .line 24
    .line 25
    iput v2, v1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return-object v1

    .line 29
    :catchall_0
    move-exception v1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    new-instance v0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    iget v1, v0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    .line 38
    .line 39
    or-int/lit16 v1, v1, 0x80

    .line 40
    .line 41
    iput v1, v0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    .line 42
    .line 43
    return-object v0

    .line 44
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    throw v1
.end method


# virtual methods
.method public final isAlwaysRunningSpecKill()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    .line 2
    .line 3
    const/16 v0, 0x1000

    .line 4
    .line 5
    and-int/2addr p0, v0

    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public final isGlobalKill()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    .line 2
    .line 3
    const/16 v0, 0x100

    .line 4
    .line 5
    and-int/2addr p0, v0

    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public final isSpecKill()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    .line 2
    .line 3
    const/16 v0, 0x200

    .line 4
    .line 5
    and-int/2addr p0, v0

    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public final recycle()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    .line 2
    .line 3
    const/16 v1, 0x80

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->processName:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v2, -0x1

    .line 15
    iput v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->pid:I

    .line 16
    .line 17
    iput v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->uid:I

    .line 18
    .line 19
    const-wide/16 v2, -0x1

    .line 20
    .line 21
    iput-wide v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->pss:J

    .line 22
    .line 23
    iput-object v1, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    .line 24
    .line 25
    iput v0, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->anonBeforeGc:I

    .line 26
    .line 27
    const-wide/16 v2, 0x0

    .line 28
    .line 29
    iput-wide v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->scanTimeBeforeGc:J

    .line 30
    .line 31
    iput v0, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->anonAfterGc:I

    .line 32
    .line 33
    iput-wide v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->scanTimeAfterGc:J

    .line 34
    .line 35
    iput v0, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->vmRss:I

    .line 36
    .line 37
    iput v0, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->rssFile:I

    .line 38
    .line 39
    iput v0, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->rssAnon:I

    .line 40
    .line 41
    iput v0, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->vmSwap:I

    .line 42
    .line 43
    iput-object v1, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppVersionName:Ljava/lang/String;

    .line 44
    .line 45
    iput-wide v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->killTime:J

    .line 46
    .line 47
    iput-wide v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->delayPhase:J

    .line 48
    .line 49
    iput v0, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->countDownPhaseRetry:I

    .line 50
    .line 51
    sget-object v0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->sPoolSync:Ljava/lang/Object;

    .line 52
    .line 53
    monitor-enter v0

    .line 54
    :try_start_0
    sget v1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->sPoolSize:I

    .line 55
    .line 56
    const/16 v2, 0x32

    .line 57
    .line 58
    if-ge v1, v2, :cond_0

    .line 59
    .line 60
    sget-object v2, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->sPool:Lcom/android/server/chimera/heimdall/HeimdallProcessData;

    .line 61
    .line 62
    iput-object v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->next:Lcom/android/server/chimera/heimdall/HeimdallProcessData;

    .line 63
    .line 64
    sput-object p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->sPool:Lcom/android/server/chimera/heimdall/HeimdallProcessData;

    .line 65
    .line 66
    add-int/lit8 v1, v1, 0x1

    .line 67
    .line 68
    sput v1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->sPoolSize:I

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto :goto_1

    .line 73
    :cond_0
    :goto_0
    monitor-exit v0

    .line 74
    return-void

    .line 75
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    throw p0

    .line 77
    :cond_1
    return-void
.end method

.method public final setShouldKill()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isSpecKill()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isGlobalKill()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isAlwaysRunningSpecKill()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const-string p0, "This HPD should not kill."

    .line 20
    .line 21
    invoke-static {p0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget v0, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    .line 26
    .line 27
    or-int/lit16 v0, v0, 0x400

    .line 28
    .line 29
    iput v0, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    .line 30
    .line 31
    return-void
.end method

.method public final toDumpString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "HeimdallData{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, " processName="

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->processName:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, " pid="

    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->pid:I

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v2, " packageName="

    .line 49
    .line 50
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v2, " versionName="

    .line 68
    .line 69
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppVersionName:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v2, " anonBeforeGc="

    .line 87
    .line 88
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->anonBeforeGc:I

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, " graphicsBeforeGc=0"

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string v2, " scanTimeBeforeGc="

    .line 111
    .line 112
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-wide v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->scanTimeBeforeGc:J

    .line 116
    .line 117
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string v2, " anonAfterGc="

    .line 130
    .line 131
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->anonAfterGc:I

    .line 135
    .line 136
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v1, " graphicsAfterGc=0"

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    const-string v2, " scanTimeAfterGc="

    .line 154
    .line 155
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iget-wide v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->scanTimeAfterGc:J

    .line 159
    .line 160
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    const-string v2, " vmRss="

    .line 173
    .line 174
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    iget v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->vmRss:I

    .line 178
    .line 179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    const-string v2, " rssFile="

    .line 192
    .line 193
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    iget v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->rssFile:I

    .line 197
    .line 198
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    const-string v2, " rssAnon="

    .line 211
    .line 212
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    iget v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->rssAnon:I

    .line 216
    .line 217
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    const-string v2, " vmSwap="

    .line 230
    .line 231
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    iget v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->vmSwap:I

    .line 235
    .line 236
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    const-string v1, " memTrackGl=0 memTrackEgl=0 memTrackOther=0"

    .line 247
    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    const-string v2, " killTime="

    .line 254
    .line 255
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    iget-wide v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->killTime:J

    .line 259
    .line 260
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    iget v1, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    .line 271
    .line 272
    neg-int v2, v1

    .line 273
    and-int/2addr v1, v2

    .line 274
    const/4 v2, 0x4

    .line 275
    if-eq v1, v2, :cond_4

    .line 276
    .line 277
    const/16 v2, 0x8

    .line 278
    .line 279
    if-eq v1, v2, :cond_3

    .line 280
    .line 281
    const/16 v2, 0x10

    .line 282
    .line 283
    if-eq v1, v2, :cond_2

    .line 284
    .line 285
    const/16 v2, 0x20

    .line 286
    .line 287
    if-eq v1, v2, :cond_1

    .line 288
    .line 289
    const/16 v2, 0x40

    .line 290
    .line 291
    if-eq v1, v2, :cond_0

    .line 292
    .line 293
    const-string v1, "None"

    .line 294
    .line 295
    goto :goto_0

    .line 296
    :cond_0
    const-string v1, "StartPhase"

    .line 297
    .line 298
    goto :goto_0

    .line 299
    :cond_1
    const-string v1, "ScanPhase"

    .line 300
    .line 301
    goto :goto_0

    .line 302
    :cond_2
    const-string v1, "GCPhase"

    .line 303
    .line 304
    goto :goto_0

    .line 305
    :cond_3
    const-string v1, "RescanPhase"

    .line 306
    .line 307
    goto :goto_0

    .line 308
    :cond_4
    const-string v1, "KillAndReportPhase"

    .line 309
    .line 310
    :goto_0
    const-string v2, " currentPhase="

    .line 311
    .line 312
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    .line 320
    .line 321
    const-string v2, " isGlobalKill="

    .line 322
    .line 323
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {p0}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isGlobalKill()Z

    .line 327
    .line 328
    .line 329
    move-result v2

    .line 330
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    .line 341
    .line 342
    const-string v2, " isSpecKill="

    .line 343
    .line 344
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {p0}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isSpecKill()Z

    .line 348
    .line 349
    .line 350
    move-result v2

    .line 351
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    .line 362
    .line 363
    const-string v2, " isAlwaysRunningSpecKill="

    .line 364
    .line 365
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {p0}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isAlwaysRunningSpecKill()Z

    .line 369
    .line 370
    .line 371
    move-result v2

    .line 372
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    .line 383
    .line 384
    const-string v2, " shouldKill="

    .line 385
    .line 386
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    iget p0, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    .line 390
    .line 391
    const/16 v2, 0x400

    .line 392
    .line 393
    and-int/2addr p0, v2

    .line 394
    if-ne p0, v2, :cond_5

    .line 395
    .line 396
    const/4 p0, 0x1

    .line 397
    goto :goto_1

    .line 398
    :cond_5
    const/4 p0, 0x0

    .line 399
    :goto_1
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object p0

    .line 406
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    const-string p0, " }"

    .line 410
    .line 411
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object p0

    .line 418
    return-object p0
.end method
