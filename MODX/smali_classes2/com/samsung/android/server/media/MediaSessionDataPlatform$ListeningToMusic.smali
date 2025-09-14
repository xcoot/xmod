.class public final Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public album:Ljava/lang/String;

.field public albumArtUri:Ljava/lang/String;

.field public albumArtist:Ljava/lang/String;

.field public artUri:Ljava/lang/String;

.field public artist:Ljava/lang/String;

.field public author:Ljava/lang/String;

.field public btFolderType:J

.field public castType:Ljava/lang/String;

.field public compilation:Ljava/lang/String;

.field public composer:Ljava/lang/String;

.field public date:Ljava/lang/String;

.field public discNumber:J

.field public displayDescription:Ljava/lang/String;

.field public displayIconUri:Ljava/lang/String;

.field public displaySubtitle:Ljava/lang/String;

.field public displayTitle:Ljava/lang/String;

.field public duration:J

.field public endTime:J

.field public genre:Ljava/lang/String;

.field public mediaId:Ljava/lang/String;

.field public mediaType:Ljava/lang/String;

.field public mediaUri:Ljava/lang/String;

.field public numTracks:J

.field public packageName:Ljava/lang/String;

.field public playbackState:I

.field public playingTime:J

.field public startTime:J

.field public title:Ljava/lang/String;

.field public trackNumber:J

.field public writer:Ljava/lang/String;

.field public year:J


# virtual methods
.method public final makeContentValues()Landroid/content/ContentValues;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->startTime:J

    .line 7
    .line 8
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string/jumbo v2, "startTime"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 16
    .line 17
    .line 18
    iget-wide v1, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->endTime:J

    .line 19
    .line 20
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "endTime"

    .line 25
    .line 26
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 27
    .line 28
    .line 29
    const-string/jumbo v1, "packageName"

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->packageName:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string/jumbo v1, "mediaType"

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->mediaType:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v1, "castType"

    .line 46
    .line 47
    iget-object v2, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->castType:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string v1, "album"

    .line 53
    .line 54
    iget-object v2, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->album:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string v1, "albumArtist"

    .line 60
    .line 61
    iget-object v2, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->albumArtist:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string v1, "albumArtUri"

    .line 67
    .line 68
    iget-object v2, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->albumArtUri:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string v1, "artist"

    .line 74
    .line 75
    iget-object v2, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->artist:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string v1, "artUri"

    .line 81
    .line 82
    iget-object v2, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->artUri:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const-string v1, "author"

    .line 88
    .line 89
    iget-object v2, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->author:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-wide v1, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->btFolderType:J

    .line 95
    .line 96
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    const-string v2, "btFolderType"

    .line 101
    .line 102
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 103
    .line 104
    .line 105
    const-string v1, "compilation"

    .line 106
    .line 107
    iget-object v2, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->compilation:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const-string v1, "composer"

    .line 113
    .line 114
    iget-object v2, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->composer:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const-string v1, "date"

    .line 120
    .line 121
    iget-object v2, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->date:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-wide v1, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->discNumber:J

    .line 127
    .line 128
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    const-string v2, "discNumber"

    .line 133
    .line 134
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 135
    .line 136
    .line 137
    const-string v1, "displayDescription"

    .line 138
    .line 139
    iget-object v2, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->displayDescription:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    const-string v1, "displayIconUri"

    .line 145
    .line 146
    iget-object v2, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->displayIconUri:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    const-string v1, "displaySubtitle"

    .line 152
    .line 153
    iget-object v2, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->displaySubtitle:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    const-string v1, "displayTitle"

    .line 159
    .line 160
    iget-object v2, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->displayTitle:Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    iget-wide v1, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->duration:J

    .line 166
    .line 167
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    const-string v2, "duration"

    .line 172
    .line 173
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 174
    .line 175
    .line 176
    const-string v1, "genre"

    .line 177
    .line 178
    iget-object v2, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->genre:Ljava/lang/String;

    .line 179
    .line 180
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    const-string/jumbo v1, "mediaId"

    .line 184
    .line 185
    .line 186
    iget-object v2, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->mediaId:Ljava/lang/String;

    .line 187
    .line 188
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    const-string/jumbo v1, "mediaUri"

    .line 192
    .line 193
    .line 194
    iget-object v2, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->mediaUri:Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    iget-wide v1, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->numTracks:J

    .line 200
    .line 201
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    const-string/jumbo v2, "numTracks"

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 209
    .line 210
    .line 211
    const-string/jumbo v1, "title"

    .line 212
    .line 213
    .line 214
    iget-object v2, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->title:Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    iget-wide v1, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->trackNumber:J

    .line 220
    .line 221
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    const-string/jumbo v2, "trackNumber"

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 229
    .line 230
    .line 231
    const-string/jumbo v1, "writer"

    .line 232
    .line 233
    .line 234
    iget-object v2, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->writer:Ljava/lang/String;

    .line 235
    .line 236
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    iget-wide v1, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->year:J

    .line 240
    .line 241
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    const-string/jumbo v1, "year"

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 249
    .line 250
    .line 251
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "packageName:"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->packageName:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ", title:"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->title:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ", artist:"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->artist:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, ", album:"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->album:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ", genre:"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->genre:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ", mediaType:"

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->mediaType:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, ", castType:"

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->castType:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, ", startTime:"

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-wide v1, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->startTime:J

    .line 80
    .line 81
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v1, ", endTime:"

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-wide v1, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->endTime:J

    .line 90
    .line 91
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v1, ", playingTime:"

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-wide v1, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->playingTime:J

    .line 100
    .line 101
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v1, ", duration: "

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget-wide v1, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->duration:J

    .line 110
    .line 111
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    return-object p0
.end method
