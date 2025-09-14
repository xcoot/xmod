.class public abstract Lcom/android/server/notification/sec/runestone/CollectionContract$API;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static putLogs(Landroid/content/Context;Ljava/util/List;)V
    .locals 5

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    check-cast p1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/android/server/notification/sec/runestone/CollectionContract$Notification$Log;

    .line 31
    .line 32
    new-instance v2, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iget-object v3, v1, Lcom/android/server/notification/sec/runestone/CollectionContract$Notification$Log;->pkg:Ljava/lang/String;

    .line 38
    .line 39
    const-string/jumbo v4, "package"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    iget v3, v1, Lcom/android/server/notification/sec/runestone/CollectionContract$Notification$Log;->id:I

    .line 46
    .line 47
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const-string v4, "id"

    .line 52
    .line 53
    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    const-string v3, "category"

    .line 57
    .line 58
    iget-object v4, v1, Lcom/android/server/notification/sec/runestone/CollectionContract$Notification$Log;->category:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    const-string v3, "channel_id"

    .line 64
    .line 65
    iget-object v4, v1, Lcom/android/server/notification/sec/runestone/CollectionContract$Notification$Log;->channelId:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    iget v3, v1, Lcom/android/server/notification/sec/runestone/CollectionContract$Notification$Log;->cancelReason:I

    .line 71
    .line 72
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    const-string v4, "cancel_reason"

    .line 77
    .line 78
    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    iget-object v3, v1, Lcom/android/server/notification/sec/runestone/CollectionContract$Notification$Log;->tag:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    const-string/jumbo v4, "tag"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    iget-wide v3, v1, Lcom/android/server/notification/sec/runestone/CollectionContract$Notification$Log;->enqueuedTimeMs:J

    .line 94
    .line 95
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    const-string v4, "enqueued_time_ms"

    .line 100
    .line 101
    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    iget-wide v3, v1, Lcom/android/server/notification/sec/runestone/CollectionContract$Notification$Log;->canceledTimeMs:J

    .line 105
    .line 106
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    const-string v4, "canceled_time_ms"

    .line 111
    .line 112
    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    iget-wide v3, v1, Lcom/android/server/notification/sec/runestone/CollectionContract$Notification$Log;->firstExpandedTimeMs:J

    .line 116
    .line 117
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    const-string v4, "first_expanded_time_ms"

    .line 122
    .line 123
    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    iget-wide v3, v1, Lcom/android/server/notification/sec/runestone/CollectionContract$Notification$Log;->firstShownTimeMs:J

    .line 127
    .line 128
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    const-string v3, "first_shown_time_ms"

    .line 133
    .line 134
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    .line 142
    .line 143
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 144
    .line 145
    .line 146
    const-string v1, "log_id"

    .line 147
    .line 148
    const-string/jumbo v2, "notification"

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    const-string v1, "logs"

    .line 155
    .line 156
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 157
    .line 158
    .line 159
    const-string/jumbo v0, "r_ts"

    .line 160
    .line 161
    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 163
    .line 164
    .line 165
    move-result-wide v1

    .line 166
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    sget-object v0, Lcom/android/server/notification/sec/runestone/CollectionContract;->CONTENT_URI:Landroid/net/Uri;

    .line 174
    .line 175
    const-string/jumbo v1, "put_logs"

    .line 176
    .line 177
    .line 178
    const/4 v2, 0x0

    .line 179
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 184
    .line 185
    const-string p1, "log is null or empty"

    .line 186
    .line 187
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw p0

    .line 191
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 192
    .line 193
    const-string p1, "context is null"

    .line 194
    .line 195
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    throw p0
.end method
