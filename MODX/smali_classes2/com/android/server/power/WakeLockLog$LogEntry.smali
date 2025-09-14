.class public final Lcom/android/server/power/WakeLockLog$LogEntry;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public flags:I

.field public packageName:Ljava/lang/String;

.field public tag:Lcom/android/server/power/WakeLockLog$TagData;

.field public time:J

.field public type:I


# direct methods
.method public constructor <init>(JILcom/android/server/power/WakeLockLog$TagData;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    .line 5
    .line 6
    iput p3, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->type:I

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    .line 9
    .line 10
    iput p5, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->flags:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/power/WakeLockLog;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/power/WakeLockLog$LogEntry;->toStringInternal(Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final toStringInternal(Ljava/text/SimpleDateFormat;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->type:I

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v1, Ljava/util/Date;

    .line 16
    .line 17
    iget-wide v2, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    .line 18
    .line 19
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p0, " - RESET"

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :cond_0
    new-instance v1, Ljava/util/Date;

    .line 40
    .line 41
    iget-wide v2, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->time:J

    .line 42
    .line 43
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p1, " - "

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    .line 59
    .line 60
    if-nez v1, :cond_1

    .line 61
    .line 62
    const-string v1, "---"

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    iget v1, v1, Lcom/android/server/power/WakeLockLog$TagData;->ownerUid:I

    .line 66
    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->packageName:Ljava/lang/String;

    .line 75
    .line 76
    const-string v2, ")"

    .line 77
    .line 78
    const-string v3, " ("

    .line 79
    .line 80
    if-eqz v1, :cond_2

    .line 81
    .line 82
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->packageName:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget p1, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->type:I

    .line 97
    .line 98
    const/4 v1, 0x1

    .line 99
    if-ne p1, v1, :cond_3

    .line 100
    .line 101
    const-string p1, "ACQ"

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_3
    const-string p1, "REL"

    .line 105
    .line 106
    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string p1, " "

    .line 110
    .line 111
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    .line 115
    .line 116
    if-nez p1, :cond_4

    .line 117
    .line 118
    const-string p1, "UNKNOWN"

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_4
    iget-object p1, p1, Lcom/android/server/power/WakeLockLog$TagData;->tag:Ljava/lang/String;

    .line 122
    .line 123
    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    iget p1, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->type:I

    .line 127
    .line 128
    if-ne p1, v1, :cond_8

    .line 129
    .line 130
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    sget-object p1, Lcom/android/server/power/WakeLockLog;->LEVEL_TO_STRING:[Ljava/lang/String;

    .line 134
    .line 135
    iget v1, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->flags:I

    .line 136
    .line 137
    and-int/lit8 v1, v1, 0x7

    .line 138
    .line 139
    aget-object p1, p1, v1

    .line 140
    .line 141
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    iget p1, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->flags:I

    .line 145
    .line 146
    const/16 v1, 0x8

    .line 147
    .line 148
    and-int/2addr p1, v1

    .line 149
    if-ne p1, v1, :cond_5

    .line 150
    .line 151
    const-string p1, ",on-after-release"

    .line 152
    .line 153
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    :cond_5
    iget p1, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->flags:I

    .line 157
    .line 158
    const/16 v1, 0x10

    .line 159
    .line 160
    and-int/2addr p1, v1

    .line 161
    if-ne p1, v1, :cond_6

    .line 162
    .line 163
    const-string p1, ",acq-causes-wake"

    .line 164
    .line 165
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    :cond_6
    iget p0, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->flags:I

    .line 169
    .line 170
    const/16 p1, 0x20

    .line 171
    .line 172
    and-int/2addr p0, p1

    .line 173
    if-ne p0, p1, :cond_7

    .line 174
    .line 175
    const-string p0, ",system-wakelock"

    .line 176
    .line 177
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    :cond_7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    return-object p0
.end method

.method public final updatePackageName(Landroid/util/SparseArray;Landroid/content/pm/PackageManager;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, v0, Lcom/android/server/power/WakeLockLog$TagData;->ownerUid:I

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->contains(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object p2, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    .line 15
    .line 16
    iget p2, p2, Lcom/android/server/power/WakeLockLog$TagData;->ownerUid:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, [Ljava/lang/String;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    .line 26
    .line 27
    iget v0, v0, Lcom/android/server/power/WakeLockLog$TagData;->ownerUid:I

    .line 28
    .line 29
    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->tag:Lcom/android/server/power/WakeLockLog$TagData;

    .line 34
    .line 35
    iget v0, v0, Lcom/android/server/power/WakeLockLog$TagData;->ownerUid:I

    .line 36
    .line 37
    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    move-object p1, p2

    .line 41
    :goto_0
    if-eqz p1, :cond_2

    .line 42
    .line 43
    array-length p2, p1

    .line 44
    if-lez p2, :cond_2

    .line 45
    .line 46
    const/4 p2, 0x0

    .line 47
    aget-object p2, p1, p2

    .line 48
    .line 49
    iput-object p2, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->packageName:Ljava/lang/String;

    .line 50
    .line 51
    array-length p1, p1

    .line 52
    const/4 p2, 0x1

    .line 53
    if-le p1, p2, :cond_2

    .line 54
    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    iget-object p2, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->packageName:Ljava/lang/String;

    .line 61
    .line 62
    const-string v0, ",..."

    .line 63
    .line 64
    invoke-static {p1, p2, v0}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Lcom/android/server/power/WakeLockLog$LogEntry;->packageName:Ljava/lang/String;

    .line 69
    .line 70
    :cond_2
    return-void
.end method
