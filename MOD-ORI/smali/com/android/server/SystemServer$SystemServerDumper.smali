.class public final Lcom/android/server/SystemServer$SystemServerDumper;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDumpables:Landroid/util/ArrayMap;


# direct methods
.method public static -$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-interface {p1}, Landroid/util/Dumpable;->getDumpableName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .line 1
    const/4 p1, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    array-length v1, p3

    .line 6
    if-lez v1, :cond_0

    .line 7
    .line 8
    move v1, p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v1, v0

    .line 11
    :goto_0
    iget-object v2, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    .line 12
    .line 13
    monitor-enter v2

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    :try_start_0
    const-string v3, "--list"

    .line 17
    .line 18
    aget-object v4, p3, v0

    .line 19
    .line 20
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_2

    .line 25
    .line 26
    iget-object p1, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    :goto_1
    if-ge v0, p1, :cond_1

    .line 33
    .line 34
    iget-object p3, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    .line 35
    .line 36
    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    check-cast p3, Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v0, v0, 0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto/16 :goto_5

    .line 50
    .line 51
    :cond_1
    monitor-exit v2

    .line 52
    return-void

    .line 53
    :cond_2
    if-eqz v1, :cond_5

    .line 54
    .line 55
    const-string v1, "--name"

    .line 56
    .line 57
    aget-object v3, p3, v0

    .line 58
    .line 59
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_5

    .line 64
    .line 65
    array-length v0, p3

    .line 66
    const/4 v1, 0x2

    .line 67
    if-ge v0, v1, :cond_3

    .line 68
    .line 69
    const-string p0, "Must pass at least one argument to --name"

    .line 70
    .line 71
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    monitor-exit v2

    .line 75
    return-void

    .line 76
    :cond_3
    aget-object p1, p3, p1

    .line 77
    .line 78
    iget-object p0, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    .line 79
    .line 80
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    check-cast p0, Landroid/util/Dumpable;

    .line 85
    .line 86
    if-nez p0, :cond_4

    .line 87
    .line 88
    const-string p0, "No dumpable named %s\n"

    .line 89
    .line 90
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p2, p0, p1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 95
    .line 96
    .line 97
    monitor-exit v2

    .line 98
    return-void

    .line 99
    :cond_4
    new-instance p1, Landroid/util/IndentingPrintWriter;

    .line 100
    .line 101
    const-string v0, "  "

    .line 102
    .line 103
    invoke-direct {p1, p2, v0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .line 105
    .line 106
    :try_start_1
    array-length p2, p3

    .line 107
    invoke-static {p3, v1, p2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    check-cast p2, [Ljava/lang/String;

    .line 112
    .line 113
    invoke-interface {p0, p1, p2}, Landroid/util/Dumpable;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 114
    .line 115
    .line 116
    :try_start_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->close()V

    .line 117
    .line 118
    .line 119
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    return-void

    .line 121
    :catchall_1
    move-exception p0

    .line 122
    :try_start_3
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :catchall_2
    move-exception p1

    .line 127
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 128
    .line 129
    .line 130
    :goto_2
    throw p0

    .line 131
    :cond_5
    iget-object p1, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    .line 132
    .line 133
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    new-instance v1, Landroid/util/IndentingPrintWriter;

    .line 138
    .line 139
    const-string v3, "  "

    .line 140
    .line 141
    invoke-direct {v1, p2, v3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 142
    .line 143
    .line 144
    :goto_3
    if-ge v0, p1, :cond_6

    .line 145
    .line 146
    :try_start_5
    iget-object p2, p0, Lcom/android/server/SystemServer$SystemServerDumper;->mDumpables:Landroid/util/ArrayMap;

    .line 147
    .line 148
    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    check-cast p2, Landroid/util/Dumpable;

    .line 153
    .line 154
    const-string v3, "%s:\n"

    .line 155
    .line 156
    invoke-interface {p2}, Landroid/util/Dumpable;->getDumpableName()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    invoke-virtual {v1, v3, v4}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 168
    .line 169
    .line 170
    invoke-interface {p2, v1, p3}, Landroid/util/Dumpable;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 177
    .line 178
    .line 179
    add-int/lit8 v0, v0, 0x1

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :catchall_3
    move-exception p0

    .line 183
    :try_start_6
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 184
    .line 185
    .line 186
    goto :goto_4

    .line 187
    :catchall_4
    move-exception p1

    .line 188
    :try_start_7
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 189
    .line 190
    .line 191
    :goto_4
    throw p0

    .line 192
    :cond_6
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->close()V

    .line 193
    .line 194
    .line 195
    monitor-exit v2

    .line 196
    return-void

    .line 197
    :goto_5
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 198
    throw p0
.end method
