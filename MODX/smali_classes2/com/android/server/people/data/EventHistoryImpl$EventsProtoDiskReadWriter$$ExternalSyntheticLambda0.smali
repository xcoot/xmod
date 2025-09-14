.class public final synthetic Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamWriter;
.implements Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamReader;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public read(Landroid/util/proto/ProtoInputStream;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget p0, p0, Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, -0x1

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x1

    .line 22
    if-eq v0, v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-wide v0, 0x20b00000001L

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    invoke-static {p1}, Lcom/android/server/people/data/Event;->readFromProto(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/people/data/Event;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p1

    .line 46
    const-string v0, "EventHistoryImpl$EventsProtoDiskReadWriter"

    .line 47
    .line 48
    const-string v1, "Failed to read protobuf input stream."

    .line 49
    .line 50
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .line 52
    .line 53
    :cond_1
    new-instance p1, Lcom/android/server/people/data/EventList;

    .line 54
    .line 55
    invoke-direct {p1}, Lcom/android/server/people/data/EventList;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Lcom/android/server/people/data/Event;

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Lcom/android/server/people/data/EventList;->add(Lcom/android/server/people/data/Event;)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    return-object p1

    .line 79
    :pswitch_0
    const-string p0, "EventHistoryImpl$EventIndexesProtoDiskReadWriter"

    .line 80
    .line 81
    new-instance v0, Landroid/util/SparseArray;

    .line 82
    .line 83
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 84
    .line 85
    .line 86
    :goto_2
    :try_start_1
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    const/4 v2, -0x1

    .line 91
    if-eq v1, v2, :cond_7

    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    const/4 v3, 0x1

    .line 98
    if-eq v1, v3, :cond_3

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_3
    const-wide v4, 0x20b00000001L

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 107
    .line 108
    .line 109
    move-result-wide v4

    .line 110
    sget-object v1, Lcom/android/server/people/data/EventIndex;->EMPTY:Lcom/android/server/people/data/EventIndex;

    .line 111
    .line 112
    const/4 v6, 0x0

    .line 113
    :goto_3
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    if-eq v7, v2, :cond_6

    .line 118
    .line 119
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    if-eq v7, v3, :cond_5

    .line 124
    .line 125
    const/4 v8, 0x2

    .line 126
    if-eq v7, v8, :cond_4

    .line 127
    .line 128
    new-instance v7, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    const-string v8, "Could not read undefined field: "

    .line 134
    .line 135
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    invoke-static {p0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    goto :goto_3

    .line 153
    :catch_1
    move-exception p1

    .line 154
    goto :goto_4

    .line 155
    :cond_4
    const-wide v7, 0x10b00000002L

    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 161
    .line 162
    .line 163
    move-result-wide v7

    .line 164
    invoke-static {p1}, Lcom/android/server/people/data/EventIndex;->readFromProto(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/people/data/EventIndex;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-virtual {p1, v7, v8}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 169
    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_5
    const-wide v6, 0x10500000001L

    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    .line 178
    .line 179
    .line 180
    move-result v6

    .line 181
    goto :goto_3

    .line 182
    :cond_6
    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 186
    .line 187
    .line 188
    goto :goto_2

    .line 189
    :goto_4
    const-string v1, "Failed to read protobuf input stream."

    .line 190
    .line 191
    invoke-static {p0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    .line 193
    .line 194
    :cond_7
    return-object v0

    .line 195
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public write(Landroid/util/proto/ProtoOutputStream;Ljava/lang/Object;)V
    .locals 13

    .line 1
    iget p0, p0, Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p2, Landroid/util/SparseArray;

    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    move v0, p0

    .line 10
    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-ge v0, v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/android/server/people/data/EventIndex;

    .line 25
    .line 26
    const-wide v3, 0x20b00000001L

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    const-wide v5, 0x10500000001L

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v5, v6, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 41
    .line 42
    .line 43
    const-wide v5, 0x10b00000002L

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 49
    .line 50
    .line 51
    move-result-wide v5

    .line 52
    monitor-enter v2

    .line 53
    :try_start_0
    iget-object v1, v2, Lcom/android/server/people/data/EventIndex;->mEventBitmaps:[J

    .line 54
    .line 55
    array-length v7, v1

    .line 56
    move v8, p0

    .line 57
    :goto_1
    if-ge v8, v7, :cond_0

    .line 58
    .line 59
    aget-wide v9, v1, v8

    .line 60
    .line 61
    const-wide v11, 0x20300000001L

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 67
    .line 68
    .line 69
    add-int/lit8 v8, v8, 0x1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto :goto_2

    .line 74
    :cond_0
    iget-wide v7, v2, Lcom/android/server/people/data/EventIndex;->mLastUpdatedTime:J

    .line 75
    .line 76
    const-wide v9, 0x10300000002L

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .line 83
    .line 84
    monitor-exit v2

    .line 85
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 89
    .line 90
    .line 91
    add-int/lit8 v0, v0, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :goto_2
    monitor-exit v2

    .line 95
    throw p0

    .line 96
    :cond_1
    return-void

    .line 97
    :pswitch_0
    check-cast p2, Lcom/android/server/people/data/EventList;

    .line 98
    .line 99
    iget-object p0, p2, Lcom/android/server/people/data/EventList;->mEvents:Ljava/util/List;

    .line 100
    .line 101
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->copyOf(Ljava/util/List;)Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    if-eqz p2, :cond_2

    .line 114
    .line 115
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    check-cast p2, Lcom/android/server/people/data/Event;

    .line 120
    .line 121
    const-wide v0, 0x20b00000001L

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 127
    .line 128
    .line 129
    move-result-wide v0

    .line 130
    iget v2, p2, Lcom/android/server/people/data/Event;->mType:I

    .line 131
    .line 132
    const-wide v3, 0x10500000001L

    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 138
    .line 139
    .line 140
    const-wide v2, 0x10300000002L

    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    iget-wide v4, p2, Lcom/android/server/people/data/Event;->mTimestamp:J

    .line 146
    .line 147
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 148
    .line 149
    .line 150
    const-wide v2, 0x10500000003L

    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    iget p2, p2, Lcom/android/server/people/data/Event;->mDurationSeconds:I

    .line 156
    .line 157
    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 161
    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_2
    return-void

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
