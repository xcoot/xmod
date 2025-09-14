.class public final Lcom/android/server/inputmethod/ImeTrackerService$History;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final mEntries:Ljava/util/ArrayDeque;

.field public final mLiveEntries:Ljava/util/WeakHashMap;


# direct methods
.method public static -$$Nest$mdump(Lcom/android/server/inputmethod/ImeTrackerService$History;Ljava/io/PrintWriter;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 7
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 9
    invoke-static {v0, v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    .line 12
    move-result-object v0

    .line 13
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->withZone(Ljava/time/ZoneId;)Ljava/time/format/DateTimeFormatter;

    .line 20
    move-result-object v0

    .line 21
    const-string v1, "    "

    .line 23
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    const-string/jumbo v3, "mLiveEntries: "

    .line 31
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    iget-object v3, p0, Lcom/android/server/inputmethod/ImeTrackerService$History;->mLiveEntries:Ljava/util/WeakHashMap;

    .line 36
    invoke-virtual {v3}, Ljava/util/WeakHashMap;->size()I

    .line 39
    move-result v3

    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    const-string v3, " elements"

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    iget-object v2, p0, Lcom/android/server/inputmethod/ImeTrackerService$History;->mLiveEntries:Ljava/util/WeakHashMap;

    .line 57
    invoke-virtual {v2}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    .line 60
    move-result-object v2

    .line 61
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 64
    move-result-object v2

    .line 65
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    move-result v4

    .line 69
    const-string v5, "      "

    .line 71
    if-eqz v4, :cond_0

    .line 73
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    move-result-object v4

    .line 77
    check-cast v4, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;

    .line 79
    invoke-static {v4, p1, v5, v0}, Lcom/android/server/inputmethod/ImeTrackerService$History;->dumpEntry(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)V

    .line 82
    goto :goto_0

    .line 83
    :cond_0
    const-string/jumbo v2, "mEntries: "

    .line 86
    invoke-static {p1, v1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    move-result-object v1

    .line 90
    iget-object v2, p0, Lcom/android/server/inputmethod/ImeTrackerService$History;->mEntries:Ljava/util/ArrayDeque;

    .line 92
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    .line 95
    move-result v2

    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History;->mEntries:Ljava/util/ArrayDeque;

    .line 111
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 114
    move-result-object p0

    .line 115
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_1

    .line 121
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 124
    move-result-object v1

    .line 125
    check-cast v1, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;

    .line 127
    invoke-static {v1, p1, v5, v0}, Lcom/android/server/inputmethod/ImeTrackerService$History;->dumpEntry(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)V

    .line 130
    goto :goto_1

    .line 131
    :cond_1
    return-void
.end method

.method public static -$$Nest$msetFinished(Lcom/android/server/inputmethod/ImeTrackerService$History;Landroid/view/inputmethod/ImeTracker$Token;II)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History;->mLiveEntries:Ljava/util/WeakHashMap;

    .line 3
    invoke-virtual {p1}, Landroid/view/inputmethod/ImeTracker$Token;->getBinder()Landroid/os/IBinder;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;

    .line 13
    const-string v1, " with "

    .line 15
    const-string v2, "ImeTracker"

    .line 17
    const/4 v3, 0x5

    .line 18
    if-nez v0, :cond_0

    .line 20
    if-eq p2, v3, :cond_4

    .line 22
    new-instance p0, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/view/inputmethod/ImeTracker$Token;->getTag()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string p1, ": setFinished on previously finished token at "

    .line 36
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-static {p3}, Landroid/view/inputmethod/ImeTracker$Debug;->phaseToString(I)Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-static {p2}, Landroid/view/inputmethod/ImeTracker$Debug;->statusToString(I)Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 60
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    goto :goto_1

    .line 64
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 67
    move-result-wide v4

    .line 68
    iget-wide v6, v0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mStartTime:J

    .line 70
    sub-long/2addr v4, v6

    .line 71
    iput-wide v4, v0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mDuration:J

    .line 73
    iput p2, v0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mStatus:I

    .line 75
    if-eqz p3, :cond_1

    .line 77
    iput p3, v0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mPhase:I

    .line 79
    :cond_1
    if-ne p2, v3, :cond_2

    .line 81
    new-instance p3, Ljava/lang/StringBuilder;

    .line 83
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    invoke-virtual {p1}, Landroid/view/inputmethod/ImeTracker$Token;->getTag()Ljava/lang/String;

    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string p1, ": setFinished at "

    .line 95
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget p1, v0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mPhase:I

    .line 100
    invoke-static {p1}, Landroid/view/inputmethod/ImeTracker$Debug;->phaseToString(I)Ljava/lang/String;

    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-static {p2}, Landroid/view/inputmethod/ImeTracker$Debug;->statusToString(I)Ljava/lang/String;

    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object p1

    .line 121
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History;->mEntries:Ljava/util/ArrayDeque;

    .line 126
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->size()I

    .line 129
    move-result p1

    .line 130
    const/16 p2, 0x64

    .line 132
    if-lt p1, p2, :cond_3

    .line 134
    iget-object p1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History;->mEntries:Ljava/util/ArrayDeque;

    .line 136
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 139
    goto :goto_0

    .line 140
    :cond_3
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History;->mEntries:Ljava/util/ArrayDeque;

    .line 142
    invoke-virtual {p0, v0}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 145
    iget-wide v3, v0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mDuration:J

    .line 147
    iget v6, v0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mStatus:I

    .line 149
    iget v9, v0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mPhase:I

    .line 151
    iget v5, v0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mType:I

    .line 153
    iget v7, v0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mReason:I

    .line 155
    const/16 v1, 0x245

    .line 157
    iget v2, v0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mUid:I

    .line 159
    iget v8, v0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mOrigin:I

    .line 161
    iget-boolean v10, v0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mFromUser:Z

    .line 163
    invoke-static/range {v1 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJIIIIIZ)V

    .line 166
    :cond_4
    :goto_1
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 7
    sput-object v0, Lcom/android/server/inputmethod/ImeTrackerService$History;->sSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    .line 6
    const/16 v1, 0x64

    .line 8
    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 11
    iput-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History;->mEntries:Ljava/util/ArrayDeque;

    .line 13
    new-instance v0, Ljava/util/WeakHashMap;

    .line 15
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History;->mLiveEntries:Ljava/util/WeakHashMap;

    .line 20
    return-void
.end method

.method public static dumpEntry(Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)V
    .locals 4

    .line 1
    const-string v0, "#"

    .line 3
    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mSequenceNumber:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    const-string v1, " "

    .line 23
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    iget v2, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mType:I

    .line 28
    invoke-static {v2}, Landroid/view/inputmethod/ImeTracker$Debug;->typeToString(I)Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    const-string v2, " - "

    .line 46
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    iget v3, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mStatus:I

    .line 51
    invoke-static {v3}, Landroid/view/inputmethod/ImeTracker$Debug;->statusToString(I)Ljava/lang/String;

    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    iget-object v2, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mTag:Ljava/lang/String;

    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    const-string v2, " ("

    .line 86
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    iget-wide v2, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mDuration:J

    .line 91
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 94
    const-string/jumbo v2, "ms):"

    .line 97
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 107
    const-string v0, "  startTime="

    .line 109
    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    move-result-object v0

    .line 113
    iget-wide v2, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mStartTime:J

    .line 115
    invoke-static {v2, v3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {p3, v2}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    .line 122
    move-result-object p3

    .line 123
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object p3

    .line 130
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 133
    new-instance p3, Ljava/lang/StringBuilder;

    .line 135
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    iget v0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mOrigin:I

    .line 140
    invoke-static {v0}, Landroid/view/inputmethod/ImeTracker$Debug;->originToString(I)Ljava/lang/String;

    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    move-result-object p3

    .line 151
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 157
    new-instance p3, Ljava/lang/StringBuilder;

    .line 159
    const-string v0, "  reason="

    .line 161
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    iget v0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mReason:I

    .line 166
    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    move-result-object p3

    .line 177
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 180
    new-instance p3, Ljava/lang/StringBuilder;

    .line 182
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    iget v0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mPhase:I

    .line 187
    invoke-static {v0}, Landroid/view/inputmethod/ImeTracker$Debug;->phaseToString(I)Ljava/lang/String;

    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    move-result-object p3

    .line 198
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 204
    new-instance p2, Ljava/lang/StringBuilder;

    .line 206
    const-string p3, "  requestWindowName="

    .line 208
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mRequestWindowName:Ljava/lang/String;

    .line 213
    invoke-static {p2, p0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 216
    return-void
.end method
