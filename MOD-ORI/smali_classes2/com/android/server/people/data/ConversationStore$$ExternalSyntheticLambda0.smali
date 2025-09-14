.class public final synthetic Lcom/android/server/people/data/ConversationStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/io/DataOutputStream;


# direct methods
.method public synthetic constructor <init>(Ljava/io/DataOutputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/people/data/ConversationStore$$ExternalSyntheticLambda0;->f$0:Ljava/io/DataOutputStream;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/people/data/ConversationStore$$ExternalSyntheticLambda0;->f$0:Ljava/io/DataOutputStream;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/people/data/ConversationInfo;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v1, Ljava/io/DataOutputStream;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    iget-object v2, p1, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v2, p1, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    const-string v3, ""

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    :try_start_1
    invoke-virtual {v2}, Landroid/content/LocusId;->getId()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception p1

    .line 35
    goto :goto_4

    .line 36
    :cond_0
    move-object v2, v3

    .line 37
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v2, p1, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move-object v2, v3

    .line 50
    :goto_1
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v2, p1, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    .line 54
    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    move-object v2, v3

    .line 59
    :goto_2
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget v2, p1, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 65
    .line 66
    .line 67
    iget v2, p1, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 70
    .line 71
    .line 72
    iget-object v2, p1, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    .line 73
    .line 74
    if-eqz v2, :cond_3

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_3
    move-object v2, v3

    .line 78
    :goto_3
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object v2, p1, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    .line 82
    .line 83
    if-eqz v2, :cond_4

    .line 84
    .line 85
    move-object v3, v2

    .line 86
    :cond_4
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-wide v2, p1, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    .line 90
    .line 91
    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 92
    .line 93
    .line 94
    const/4 v2, 0x1

    .line 95
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 96
    .line 97
    .line 98
    iget-wide v2, p1, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    .line 99
    .line 100
    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    goto :goto_5

    .line 108
    :goto_4
    const-string v0, "ConversationInfo"

    .line 109
    .line 110
    const-string v1, "Failed to write fields to backup payload."

    .line 111
    .line 112
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    .line 114
    .line 115
    const/4 p1, 0x0

    .line 116
    :goto_5
    if-nez p1, :cond_5

    .line 117
    .line 118
    goto :goto_6

    .line 119
    :cond_5
    :try_start_2
    array-length v0, p1

    .line 120
    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 124
    .line 125
    .line 126
    goto :goto_6

    .line 127
    :catch_1
    move-exception p0

    .line 128
    const-string p1, "ConversationStore"

    .line 129
    .line 130
    const-string v0, "Failed to write conversation info to backup payload."

    .line 131
    .line 132
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    .line 134
    .line 135
    :goto_6
    return-void
.end method
