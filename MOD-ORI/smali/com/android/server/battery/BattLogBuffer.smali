.class public abstract Lcom/android/server/battery/BattLogBuffer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final mBattActionChangedLogBuffer:Lcom/android/server/battery/BattLogBuffer$LogBuffer;

.field public static final mBattInfoLogBuffer:Lcom/android/server/battery/BattLogBuffer$LogBuffer;

.field public static final mEventLogBuffer:Lcom/android/server/battery/BattLogBuffer$LogBuffer;

.field public static final mSleepChargingLogBuffer:Lcom/android/server/battery/BattLogBuffer$LogBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/server/battery/BattLogBuffer$LogBuffer;

    .line 2
    .line 3
    const-string v1, "EventLogBuffer"

    .line 4
    .line 5
    const/16 v2, 0x14

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/android/server/battery/BattLogBuffer$LogBuffer;-><init>(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/android/server/battery/BattLogBuffer;->mEventLogBuffer:Lcom/android/server/battery/BattLogBuffer$LogBuffer;

    .line 11
    .line 12
    new-instance v0, Lcom/android/server/battery/BattLogBuffer$LogBuffer;

    .line 13
    .line 14
    const-string v1, "SleepChargingLogBuffer"

    .line 15
    .line 16
    const/16 v3, 0xf

    .line 17
    .line 18
    invoke-direct {v0, v1, v3}, Lcom/android/server/battery/BattLogBuffer$LogBuffer;-><init>(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/android/server/battery/BattLogBuffer;->mSleepChargingLogBuffer:Lcom/android/server/battery/BattLogBuffer$LogBuffer;

    .line 22
    .line 23
    new-instance v0, Lcom/android/server/battery/BattLogBuffer$LogBuffer;

    .line 24
    .line 25
    const-string v1, "BattInfoLogBuffer"

    .line 26
    .line 27
    invoke-direct {v0, v1, v3}, Lcom/android/server/battery/BattLogBuffer$LogBuffer;-><init>(Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/android/server/battery/BattLogBuffer;->mBattInfoLogBuffer:Lcom/android/server/battery/BattLogBuffer$LogBuffer;

    .line 31
    .line 32
    new-instance v0, Lcom/android/server/battery/BattLogBuffer$LogBuffer;

    .line 33
    .line 34
    const-string v1, "BattActionChangedLogBuffer"

    .line 35
    .line 36
    invoke-direct {v0, v1, v2}, Lcom/android/server/battery/BattLogBuffer$LogBuffer;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/android/server/battery/BattLogBuffer;->mBattActionChangedLogBuffer:Lcom/android/server/battery/BattLogBuffer$LogBuffer;

    .line 40
    .line 41
    return-void
.end method

.method public static addLog(ILjava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_3

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_2

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p0, v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    if-eq p0, v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget-object p0, Lcom/android/server/battery/BattLogBuffer;->mBattActionChangedLogBuffer:Lcom/android/server/battery/BattLogBuffer$LogBuffer;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    sget-object p0, Lcom/android/server/battery/BattLogBuffer;->mBattInfoLogBuffer:Lcom/android/server/battery/BattLogBuffer$LogBuffer;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    sget-object p0, Lcom/android/server/battery/BattLogBuffer;->mSleepChargingLogBuffer:Lcom/android/server/battery/BattLogBuffer$LogBuffer;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_3
    sget-object p0, Lcom/android/server/battery/BattLogBuffer;->mEventLogBuffer:Lcom/android/server/battery/BattLogBuffer$LogBuffer;

    .line 25
    .line 26
    :goto_0
    if-eqz p0, :cond_5

    .line 27
    .line 28
    sget-object v0, Lcom/android/server/battery/BattLogBuffer$LogBuffer;->FORMATTER:Ljava/time/format/DateTimeFormatter;

    .line 29
    .line 30
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sget-object v1, Lcom/android/server/battery/BattLogBuffer$LogBuffer;->FORMATTER:Ljava/time/format/DateTimeFormatter;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "  "

    .line 41
    .line 42
    invoke-static {v0, v1, p1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iget-object v0, p0, Lcom/android/server/battery/BattLogBuffer$LogBuffer;->logs:Ljava/util/ArrayDeque;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iget v1, p0, Lcom/android/server/battery/BattLogBuffer$LogBuffer;->maxBufferSize:I

    .line 53
    .line 54
    if-ne v0, v1, :cond_4

    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/server/battery/BattLogBuffer$LogBuffer;->logs:Ljava/util/ArrayDeque;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    :cond_4
    iget-object p0, p0, Lcom/android/server/battery/BattLogBuffer$LogBuffer;->logs:Ljava/util/ArrayDeque;

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_5
    const-string p0, "[SS]BattLogBuffer"

    .line 68
    .line 69
    const-string p1, "[addLog]wrong bufferType"

    .line 70
    .line 71
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    :goto_1
    return-void
.end method

.method public static getAllLogs()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    sget-object v2, Lcom/android/server/battery/BattLogBuffer;->mEventLogBuffer:Lcom/android/server/battery/BattLogBuffer$LogBuffer;

    .line 12
    .line 13
    invoke-static {v2}, Lcom/android/server/battery/BattLogBuffer$LogBuffer;->-$$Nest$mgetLogs(Lcom/android/server/battery/BattLogBuffer$LogBuffer;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, "\n"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    sget-object v3, Lcom/android/server/battery/BattLogBuffer;->mSleepChargingLogBuffer:Lcom/android/server/battery/BattLogBuffer$LogBuffer;

    .line 38
    .line 39
    invoke-static {v3}, Lcom/android/server/battery/BattLogBuffer$LogBuffer;->-$$Nest$mgetLogs(Lcom/android/server/battery/BattLogBuffer$LogBuffer;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    sget-object v3, Lcom/android/server/battery/BattLogBuffer;->mBattInfoLogBuffer:Lcom/android/server/battery/BattLogBuffer$LogBuffer;

    .line 62
    .line 63
    invoke-static {v3}, Lcom/android/server/battery/BattLogBuffer$LogBuffer;->-$$Nest$mgetLogs(Lcom/android/server/battery/BattLogBuffer$LogBuffer;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    sget-object v1, Lcom/android/server/battery/BattLogBuffer;->mBattActionChangedLogBuffer:Lcom/android/server/battery/BattLogBuffer$LogBuffer;

    .line 81
    .line 82
    invoke-static {v1}, Lcom/android/server/battery/BattLogBuffer$LogBuffer;->-$$Nest$mgetLogs(Lcom/android/server/battery/BattLogBuffer$LogBuffer;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    return-object v0
.end method
