.class public final synthetic Lcom/android/server/people/data/ConversationStore$ConversationInfosProtoDiskReadWriter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamWriter;
.implements Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamReader;


# virtual methods
.method public read(Landroid/util/proto/ProtoInputStream;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x1

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x1

    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-wide v0, 0x20b00000001L

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->start(J)J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    invoke-static {p1}, Lcom/android/server/people/data/ConversationInfo;->readFromProto(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/people/data/ConversationInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p1

    .line 41
    const-string v0, "ConversationStore"

    .line 42
    .line 43
    const-string v1, "Failed to read protobuf input stream."

    .line 44
    .line 45
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .line 47
    .line 48
    :cond_1
    return-object p0
.end method

.method public write(Landroid/util/proto/ProtoOutputStream;Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p2, Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_5

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    check-cast p2, Lcom/android/server/people/data/ConversationInfo;

    .line 18
    .line 19
    const-wide v0, 0x20b00000001L

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    iget-object v2, p2, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    .line 29
    .line 30
    const-wide v3, 0x10900000001L

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v2, p2, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    .line 39
    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    const-wide v5, 0x10b00000002L

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 48
    .line 49
    .line 50
    move-result-wide v5

    .line 51
    iget-object v2, p2, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    .line 52
    .line 53
    invoke-virtual {v2}, Landroid/content/LocusId;->getId()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 61
    .line 62
    .line 63
    :cond_0
    iget-object v2, p2, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    .line 64
    .line 65
    if-eqz v2, :cond_1

    .line 66
    .line 67
    const-wide v3, 0x10900000003L

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    iget-object v2, p2, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    .line 80
    .line 81
    if-eqz v2, :cond_2

    .line 82
    .line 83
    const-wide v3, 0x10900000004L

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :cond_2
    iget-object v2, p2, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    .line 92
    .line 93
    if-eqz v2, :cond_3

    .line 94
    .line 95
    const-wide v3, 0x10900000008L

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :cond_3
    const-wide v2, 0x10300000009L

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    iget-wide v4, p2, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    .line 109
    .line 110
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 111
    .line 112
    .line 113
    const-wide v2, 0x1030000000aL

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    iget-wide v4, p2, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    .line 119
    .line 120
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 121
    .line 122
    .line 123
    const-wide v2, 0x10500000005L

    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    iget v4, p2, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    .line 129
    .line 130
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 131
    .line 132
    .line 133
    const-wide v2, 0x10500000006L

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    iget v4, p2, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    .line 139
    .line 140
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 141
    .line 142
    .line 143
    iget-object p2, p2, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    .line 144
    .line 145
    if-eqz p2, :cond_4

    .line 146
    .line 147
    const-wide v2, 0x10900000007L

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 153
    .line 154
    .line 155
    :cond_4
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 156
    .line 157
    .line 158
    goto/16 :goto_0

    .line 159
    .line 160
    :cond_5
    return-void
.end method
