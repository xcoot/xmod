.class public final Lcom/android/server/power/SuspendBlockerMonitor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final GLOBAL_INSTANCE:Lcom/android/server/power/SuspendBlockerMonitor;

.field public static final mSuspendBlockerMonitorCallbacks:Lcom/android/internal/util/RingBuffer;


# instance fields
.field public mDetail:Ljava/lang/String;

.field public mEvents:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    .line 2
    .line 3
    const-class v1, Lcom/android/server/power/SuspendBlockerMonitor$CallbackHistory;

    .line 4
    .line 5
    const/16 v2, 0xc8

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/android/server/power/SuspendBlockerMonitor;->mSuspendBlockerMonitorCallbacks:Lcom/android/internal/util/RingBuffer;

    .line 11
    .line 12
    new-instance v0, Lcom/android/server/power/SuspendBlockerMonitor;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/android/server/power/SuspendBlockerMonitor;->GLOBAL_INSTANCE:Lcom/android/server/power/SuspendBlockerMonitor;

    .line 18
    .line 19
    return-void
.end method

.method public static addNewCallbackEvent(ILjava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/power/SuspendBlockerMonitor;->mSuspendBlockerMonitorCallbacks:Lcom/android/internal/util/RingBuffer;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/power/SuspendBlockerMonitor$CallbackHistory;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/power/PowerManagerUtil;->getCurrentTimeAsString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v2, v1, Lcom/android/server/power/SuspendBlockerMonitor$CallbackHistory;->mTimeStr:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p1, v1, Lcom/android/server/power/SuspendBlockerMonitor$CallbackHistory;->mDetail:Ljava/lang/String;

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    if-eq p0, p1, :cond_1

    .line 18
    .line 19
    const/4 p1, 0x2

    .line 20
    if-eq p0, p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string p0, "REL"

    .line 24
    .line 25
    iput-object p0, v1, Lcom/android/server/power/SuspendBlockerMonitor$CallbackHistory;->mCmd:Ljava/lang/String;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const-string p0, "ACQ"

    .line 29
    .line 30
    iput-object p0, v1, Lcom/android/server/power/SuspendBlockerMonitor$CallbackHistory;->mCmd:Ljava/lang/String;

    .line 31
    .line 32
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2
    .line 3
    .line 4
    const-string v0, "SuspendBlockerMonitor:"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/power/SuspendBlockerMonitor;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final setEvent(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/power/SuspendBlockerMonitor;->mEvents:I

    .line 2
    .line 3
    or-int/2addr p1, v0

    .line 4
    iput p1, p0, Lcom/android/server/power/SuspendBlockerMonitor;->mEvents:I

    .line 5
    .line 6
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/android/server/power/SuspendBlockerMonitor;->mEvents:I

    .line 7
    .line 8
    and-int/lit8 v1, v1, 0xf

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    const-string v3, " ( "

    .line 12
    .line 13
    const-string v4, "      mEvents = 0x"

    .line 14
    .line 15
    if-eqz v1, :cond_4

    .line 16
    .line 17
    const-string v1, "    [Global]\n"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget v5, p0, Lcom/android/server/power/SuspendBlockerMonitor;->mEvents:I

    .line 28
    .line 29
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget v1, p0, Lcom/android/server/power/SuspendBlockerMonitor;->mEvents:I

    .line 47
    .line 48
    and-int/2addr v1, v2

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    const-string v1, "READY "

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    :cond_0
    iget v1, p0, Lcom/android/server/power/SuspendBlockerMonitor;->mEvents:I

    .line 57
    .line 58
    and-int/lit8 v1, v1, 0x2

    .line 59
    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    const-string v1, "PROGRESS "

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    :cond_1
    iget v1, p0, Lcom/android/server/power/SuspendBlockerMonitor;->mEvents:I

    .line 68
    .line 69
    and-int/lit8 v1, v1, 0x4

    .line 70
    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    const-string v1, "DOZING "

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    :cond_2
    iget v1, p0, Lcom/android/server/power/SuspendBlockerMonitor;->mEvents:I

    .line 79
    .line 80
    and-int/lit8 v1, v1, 0x8

    .line 81
    .line 82
    if-eqz v1, :cond_3

    .line 83
    .line 84
    const-string v1, "SOME_GROUPS "

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    :cond_3
    const-string v1, ")"

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    :cond_4
    iget v1, p0, Lcom/android/server/power/SuspendBlockerMonitor;->mEvents:I

    .line 95
    .line 96
    and-int/lit16 v1, v1, 0xf0

    .line 97
    .line 98
    const/4 v5, 0x0

    .line 99
    if-eqz v1, :cond_5

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_5
    move v2, v5

    .line 103
    :goto_0
    const-string v1, "\n"

    .line 104
    .line 105
    if-eqz v2, :cond_a

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget v4, p0, Lcom/android/server/power/SuspendBlockerMonitor;->mEvents:I

    .line 116
    .line 117
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    iget v2, p0, Lcom/android/server/power/SuspendBlockerMonitor;->mEvents:I

    .line 135
    .line 136
    and-int/lit8 v2, v2, 0x10

    .line 137
    .line 138
    if-eqz v2, :cond_6

    .line 139
    .line 140
    const-string v2, "BRIGHT_OR_DIM "

    .line 141
    .line 142
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    :cond_6
    iget v2, p0, Lcom/android/server/power/SuspendBlockerMonitor;->mEvents:I

    .line 146
    .line 147
    and-int/lit8 v2, v2, 0x20

    .line 148
    .line 149
    if-eqz v2, :cond_7

    .line 150
    .line 151
    const-string v2, "DOZE_ON_STATE "

    .line 152
    .line 153
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    :cond_7
    iget v2, p0, Lcom/android/server/power/SuspendBlockerMonitor;->mEvents:I

    .line 157
    .line 158
    and-int/lit8 v2, v2, 0x40

    .line 159
    .line 160
    if-eqz v2, :cond_8

    .line 161
    .line 162
    const-string v2, "CHARGING_UI "

    .line 163
    .line 164
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    :cond_8
    iget v2, p0, Lcom/android/server/power/SuspendBlockerMonitor;->mEvents:I

    .line 168
    .line 169
    and-int/lit16 v2, v2, 0x80

    .line 170
    .line 171
    if-eqz v2, :cond_9

    .line 172
    .line 173
    const-string v2, "BUILT_IN_DISPLAY_STATE_ON "

    .line 174
    .line 175
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    :cond_9
    const-string v2, ")\n"

    .line 179
    .line 180
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    :cond_a
    iget v2, p0, Lcom/android/server/power/SuspendBlockerMonitor;->mEvents:I

    .line 184
    .line 185
    and-int/lit16 v2, v2, 0x100

    .line 186
    .line 187
    if-eqz v2, :cond_b

    .line 188
    .line 189
    const-string v2, "    [Callback]\n"

    .line 190
    .line 191
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    iget-object v2, p0, Lcom/android/server/power/SuspendBlockerMonitor;->mDetail:Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    :cond_b
    sget-object v2, Lcom/android/server/power/SuspendBlockerMonitor;->GLOBAL_INSTANCE:Lcom/android/server/power/SuspendBlockerMonitor;

    .line 200
    .line 201
    if-ne p0, v2, :cond_c

    .line 202
    .line 203
    new-instance p0, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    const-string v2, "\n    CallBack History = "

    .line 206
    .line 207
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    sget-object v2, Lcom/android/server/power/SuspendBlockerMonitor;->mSuspendBlockerMonitorCallbacks:Lcom/android/internal/util/RingBuffer;

    .line 211
    .line 212
    invoke-virtual {v2}, Lcom/android/internal/util/RingBuffer;->size()I

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v2}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object p0

    .line 233
    check-cast p0, [Lcom/android/server/power/SuspendBlockerMonitor$CallbackHistory;

    .line 234
    .line 235
    :goto_1
    array-length v2, p0

    .line 236
    if-ge v5, v2, :cond_c

    .line 237
    .line 238
    aget-object v2, p0, v5

    .line 239
    .line 240
    invoke-virtual {v2}, Lcom/android/server/power/SuspendBlockerMonitor$CallbackHistory;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    add-int/lit8 v5, v5, 0x1

    .line 251
    .line 252
    goto :goto_1

    .line 253
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p0

    .line 257
    return-object p0
.end method
