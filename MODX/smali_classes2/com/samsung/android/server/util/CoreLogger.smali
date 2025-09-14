.class public final Lcom/samsung/android/server/util/CoreLogger;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBuffer:Ljava/util/List;

.field public final mBufferOverflowAllowed:Z

.field public final mBufferSize:I

.field public final mDumpTitle:Ljava/lang/String;

.field public final mTag:Ljava/lang/String;

.field public final mUseTimeline:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/util/CoreLogger;->mTag:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/samsung/android/server/util/CoreLogger;->mDumpTitle:Ljava/lang/String;

    .line 7
    .line 8
    iput p2, p0, Lcom/samsung/android/server/util/CoreLogger;->mBufferSize:I

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/samsung/android/server/util/CoreLogger;->mBufferOverflowAllowed:Z

    .line 11
    .line 12
    if-lez p2, :cond_0

    .line 13
    .line 14
    new-instance p1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/server/util/CoreLogger;->mBuffer:Ljava/util/List;

    .line 22
    .line 23
    iput-boolean p5, p0, Lcom/samsung/android/server/util/CoreLogger;->mUseTimeline:Z

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final log(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/util/CoreLogger;->mBuffer:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/util/CoreLogger;->mTag:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {p1, v0, p2}, Landroid/util/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    :goto_0
    if-eqz p3, :cond_1

    .line 12
    .line 13
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/util/CoreLogger;->mBuffer:Ljava/util/List;

    .line 17
    .line 18
    if-nez p1, :cond_2

    .line 19
    .line 20
    return-void

    .line 21
    :cond_2
    iget-boolean p3, p0, Lcom/samsung/android/server/util/CoreLogger;->mBufferOverflowAllowed:Z

    .line 22
    .line 23
    if-nez p3, :cond_4

    .line 24
    .line 25
    monitor-enter p1

    .line 26
    :try_start_0
    iget-object p3, p0, Lcom/samsung/android/server/util/CoreLogger;->mBuffer:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    iget v0, p0, Lcom/samsung/android/server/util/CoreLogger;->mBufferSize:I

    .line 33
    .line 34
    if-le p3, v0, :cond_3

    .line 35
    .line 36
    monitor-exit p1

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :cond_3
    monitor-exit p1

    .line 41
    goto :goto_2

    .line 42
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0

    .line 44
    :cond_4
    :goto_2
    iget-boolean p1, p0, Lcom/samsung/android/server/util/CoreLogger;->mUseTimeline:Z

    .line 45
    .line 46
    if-eqz p1, :cond_5

    .line 47
    .line 48
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 53
    .line 54
    const-string v0, "%02d-%02d %02d:%02d:%02d.%03d %s"

    .line 55
    .line 56
    const/4 v1, 0x2

    .line 57
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    add-int/lit8 v1, v1, 0x1

    .line 62
    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    const/4 v1, 0x5

    .line 68
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    const/16 v1, 0xb

    .line 77
    .line 78
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    const/16 v1, 0xc

    .line 87
    .line 88
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    const/16 v1, 0xd

    .line 97
    .line 98
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    const/16 v1, 0xe

    .line 107
    .line 108
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    move-object v8, p2

    .line 117
    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-static {p3, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    :cond_5
    :try_start_1
    iget-object p1, p0, Lcom/samsung/android/server/util/CoreLogger;->mBuffer:Ljava/util/List;

    .line 126
    .line 127
    monitor-enter p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 128
    :try_start_2
    iget-object p3, p0, Lcom/samsung/android/server/util/CoreLogger;->mBuffer:Ljava/util/List;

    .line 129
    .line 130
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 131
    .line 132
    .line 133
    move-result p3

    .line 134
    iget v0, p0, Lcom/samsung/android/server/util/CoreLogger;->mBufferSize:I

    .line 135
    .line 136
    if-le p3, v0, :cond_6

    .line 137
    .line 138
    iget-object p3, p0, Lcom/samsung/android/server/util/CoreLogger;->mBuffer:Ljava/util/List;

    .line 139
    .line 140
    const/4 v0, 0x0

    .line 141
    invoke-interface {p3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    goto :goto_3

    .line 145
    :catchall_1
    move-exception p2

    .line 146
    goto :goto_4

    .line 147
    :cond_6
    :goto_3
    iget-object p3, p0, Lcom/samsung/android/server/util/CoreLogger;->mBuffer:Ljava/util/List;

    .line 148
    .line 149
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    monitor-exit p1

    .line 153
    goto :goto_5

    .line 154
    :goto_4
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 155
    :try_start_3
    throw p2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 156
    :catch_0
    move-exception p1

    .line 157
    iget-object p0, p0, Lcom/samsung/android/server/util/CoreLogger;->mTag:Ljava/lang/String;

    .line 158
    .line 159
    const-string p2, "Fail to add logs"

    .line 160
    .line 161
    invoke-static {p0, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    .line 163
    .line 164
    :goto_5
    return-void
.end method
