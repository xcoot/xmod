.class public final Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAttachPenSoundPath:Ljava/lang/String;

.field public mDetachPenSoundPath:Ljava/lang/String;

.field public mPenAttachSoundId:I

.field public mPenDetachSoundId:I

.field public mPenSoundPath:Ljava/lang/String;

.field public mPenSoundPool:Landroid/media/SoundPool;

.field public mPenSoundStreamId:I


# direct methods
.method public static getOMCPenSoundPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string/jumbo v0, "persist.sys.omc_respath"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v1, "/media/audio/spen/"

    .line 11
    .line 12
    invoke-static {v0, v1, p0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string p0, ""

    .line 18
    .line 19
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "PenSoundInfo{attachPath="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mAttachPenSoundPath:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", detachPath="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mDetachPenSoundPath:Ljava/lang/String;

    .line 19
    .line 20
    const-string/jumbo v1, "}"

    .line 21
    .line 22
    .line 23
    invoke-static {v0, p0, v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public final updatePenSound(Ljava/lang/String;)V
    .locals 8

    .line 1
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundPath:Ljava/lang/String;

    .line 2
    .line 3
    const-string p1, "Pen_att_noti1.ogg"

    .line 4
    .line 5
    invoke-static {p1}, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->getOMCPenSoundPath(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "Pen_det_noti1.ogg"

    .line 10
    .line 11
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->getOMCPenSoundPath(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Ljava/io/File;

    .line 16
    .line 17
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const-wide/16 v3, 0x0

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 30
    .line 31
    .line 32
    move-result-wide v6

    .line 33
    cmp-long v2, v6, v3

    .line 34
    .line 35
    if-lez v2, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move-object v1, v5

    .line 39
    :goto_0
    new-instance v2, Ljava/io/File;

    .line 40
    .line 41
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-eqz v6, :cond_1

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 51
    .line 52
    .line 53
    move-result-wide v6

    .line 54
    cmp-long v3, v6, v3

    .line 55
    .line 56
    if-lez v3, :cond_1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    move-object v2, v5

    .line 60
    :goto_1
    sget-boolean v3, Lcom/samsung/android/rune/InputRune;->PWM_OMC_SPEN_SOUND:Z

    .line 61
    .line 62
    const/4 v4, 0x0

    .line 63
    const/4 v6, 0x1

    .line 64
    if-eqz v3, :cond_2

    .line 65
    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    if-eqz v2, :cond_2

    .line 69
    .line 70
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mAttachPenSoundPath:Ljava/lang/String;

    .line 71
    .line 72
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mDetachPenSoundPath:Ljava/lang/String;

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_2
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundPath:Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-nez p1, :cond_3

    .line 82
    .line 83
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundPath:Ljava/lang/String;

    .line 84
    .line 85
    const-string v0, ","

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    array-length v0, p1

    .line 92
    if-le v0, v6, :cond_3

    .line 93
    .line 94
    aget-object v0, p1, v4

    .line 95
    .line 96
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mAttachPenSoundPath:Ljava/lang/String;

    .line 97
    .line 98
    aget-object p1, p1, v6

    .line 99
    .line 100
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mDetachPenSoundPath:Ljava/lang/String;

    .line 101
    .line 102
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mAttachPenSoundPath:Ljava/lang/String;

    .line 103
    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    const-string v0, "PhoneWindowManagerExt"

    .line 109
    .line 110
    if-nez p1, :cond_6

    .line 111
    .line 112
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mDetachPenSoundPath:Ljava/lang/String;

    .line 113
    .line 114
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-eqz p1, :cond_4

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_4
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundPool:Landroid/media/SoundPool;

    .line 122
    .line 123
    if-nez p1, :cond_5

    .line 124
    .line 125
    :try_start_0
    new-instance p1, Landroid/media/SoundPool;

    .line 126
    .line 127
    const/4 v1, 0x2

    .line 128
    invoke-direct {p1, v1, v6, v4}, Landroid/media/SoundPool;-><init>(III)V

    .line 129
    .line 130
    .line 131
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundPool:Landroid/media/SoundPool;

    .line 132
    .line 133
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mAttachPenSoundPath:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {p1, v1, v6}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenAttachSoundId:I

    .line 140
    .line 141
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundPool:Landroid/media/SoundPool;

    .line 142
    .line 143
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mDetachPenSoundPath:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {p1, v1, v6}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenDetachSoundId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :catch_0
    const-string p1, "Cannot load pen sound"

    .line 153
    .line 154
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    iput-object v5, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundPool:Landroid/media/SoundPool;

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mAttachPenSoundPath:Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {p1, v0, v6}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenAttachSoundId:I

    .line 167
    .line 168
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundPool:Landroid/media/SoundPool;

    .line 169
    .line 170
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mDetachPenSoundPath:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {p1, v0, v6}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenDetachSoundId:I

    .line 177
    .line 178
    :goto_3
    return-void

    .line 179
    :cond_6
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    const-string/jumbo v1, "pen sound path was wrong. "

    .line 182
    .line 183
    .line 184
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p0

    .line 191
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    return-void
.end method
