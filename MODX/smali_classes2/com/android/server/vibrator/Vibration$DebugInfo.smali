.class public final Lcom/android/server/vibrator/Vibration$DebugInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAdaptiveScale:F

.field public final mCallerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

.field public final mCreateTime:J

.field public final mDurationMs:J

.field public final mEndTime:J

.field public final mOriginalEffect:Landroid/os/CombinedVibration;

.field public final mPlayedEffect:Landroid/os/CombinedVibration;

.field public final mScaleLevel:I

.field public final mStartTime:J

.field public final mStatus:Lcom/android/server/vibrator/Vibration$Status;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/VibrationStats;Landroid/os/CombinedVibration;Landroid/os/CombinedVibration;IFLcom/android/server/vibrator/Vibration$CallerInfo;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-wide v0, p2, Lcom/android/server/vibrator/VibrationStats;->mCreateTimeDebug:J

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mCreateTime:J

    .line 10
    .line 11
    iget-wide v0, p2, Lcom/android/server/vibrator/VibrationStats;->mStartTimeDebug:J

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mStartTime:J

    .line 14
    .line 15
    iget-wide v0, p2, Lcom/android/server/vibrator/VibrationStats;->mEndTimeDebug:J

    .line 16
    .line 17
    iput-wide v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mEndTime:J

    .line 18
    .line 19
    iget-wide v0, p2, Lcom/android/server/vibrator/VibrationStats;->mEndUptimeMillis:J

    .line 20
    .line 21
    const-wide/16 v2, 0x0

    .line 22
    .line 23
    cmp-long v2, v0, v2

    .line 24
    .line 25
    if-lez v2, :cond_0

    .line 26
    .line 27
    iget-wide v2, p2, Lcom/android/server/vibrator/VibrationStats;->mCreateUptimeMillis:J

    .line 28
    .line 29
    sub-long/2addr v0, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-wide/16 v0, -0x1

    .line 32
    .line 33
    :goto_0
    iput-wide v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mDurationMs:J

    .line 34
    .line 35
    iput-object p3, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mPlayedEffect:Landroid/os/CombinedVibration;

    .line 36
    .line 37
    iput-object p4, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mOriginalEffect:Landroid/os/CombinedVibration;

    .line 38
    .line 39
    iput p5, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mScaleLevel:I

    .line 40
    .line 41
    iput p6, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mAdaptiveScale:F

    .line 42
    .line 43
    iput-object p7, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mCallerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 44
    .line 45
    iput-object p1, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    .line 46
    .line 47
    return-void
.end method

.method public static dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/CombinedVibration;)V
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/CombinedVibration;->startSequential()Landroid/os/CombinedVibration$SequentialCombination;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p3}, Landroid/os/CombinedVibration$SequentialCombination;->addNext(Landroid/os/CombinedVibration;)Landroid/os/CombinedVibration$SequentialCombination;

    move-result-object p3

    .line 3
    invoke-virtual {p3}, Landroid/os/CombinedVibration$SequentialCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object p3

    check-cast p3, Landroid/os/CombinedVibration$Sequential;

    .line 4
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p1

    const/4 v0, 0x0

    move v1, v0

    .line 5
    :goto_0
    invoke-virtual {p3}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 6
    invoke-virtual {p3}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/CombinedVibration;

    .line 7
    instance-of v3, v2, Landroid/os/CombinedVibration$Mono;

    const-wide v4, 0x20500000002L

    const-wide v6, 0x20b00000001L

    if-eqz v3, :cond_0

    .line 8
    check-cast v2, Landroid/os/CombinedVibration$Mono;

    .line 9
    invoke-virtual {p0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 10
    invoke-virtual {v2}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpEffect(Landroid/util/proto/ProtoOutputStream;Landroid/os/VibrationEffect;)V

    .line 11
    invoke-virtual {p0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_2

    .line 12
    :cond_0
    instance-of v3, v2, Landroid/os/CombinedVibration$Stereo;

    if-eqz v3, :cond_2

    .line 13
    check-cast v2, Landroid/os/CombinedVibration$Stereo;

    .line 14
    invoke-virtual {p0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    move v3, v0

    .line 15
    :goto_1
    invoke-virtual {v2}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v3, v8, :cond_1

    .line 16
    invoke-virtual {v2}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {p0, v4, v5, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 17
    invoke-virtual {v2}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/VibrationEffect;

    invoke-static {p0, v8}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpEffect(Landroid/util/proto/ProtoOutputStream;Landroid/os/VibrationEffect;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {p0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 19
    :cond_2
    :goto_2
    invoke-virtual {p3}, Landroid/os/CombinedVibration$Sequential;->getDelays()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 20
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public static dumpEffect(Landroid/util/proto/ProtoOutputStream;Landroid/os/VibrationEffect;)V
    .locals 16

    move-object/from16 v0, p0

    const-wide v1, 0x20b00000001L

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 22
    move-object/from16 v3, p1

    check-cast v3, Landroid/os/VibrationEffect$Composed;

    .line 23
    invoke-virtual {v3}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/vibrator/VibrationEffectSegment;

    const-wide v8, 0x10b00000001L

    .line 24
    invoke-virtual {v0, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 25
    instance-of v12, v5, Landroid/os/vibrator/StepSegment;

    const-wide v6, 0x10200000002L

    const-wide v8, 0x10500000001L

    if-eqz v12, :cond_0

    .line 26
    check-cast v5, Landroid/os/vibrator/StepSegment;

    const-wide v13, 0x10b00000003L

    .line 27
    invoke-virtual {v0, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 28
    invoke-virtual {v5}, Landroid/os/vibrator/StepSegment;->getDuration()J

    move-result-wide v14

    invoke-virtual {v0, v8, v9, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 29
    invoke-virtual {v5}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v8

    invoke-virtual {v0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 30
    invoke-virtual {v5}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    move-result v5

    const-wide v6, 0x10200000003L

    invoke-virtual {v0, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 31
    invoke-virtual {v0, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto/16 :goto_1

    .line 32
    :cond_0
    instance-of v12, v5, Landroid/os/vibrator/RampSegment;

    if-eqz v12, :cond_1

    .line 33
    check-cast v5, Landroid/os/vibrator/RampSegment;

    const-wide v12, 0x10b00000004L

    .line 34
    invoke-virtual {v0, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 35
    invoke-virtual {v5}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide v14

    invoke-virtual {v0, v8, v9, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 36
    invoke-virtual {v5}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    move-result v8

    invoke-virtual {v0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 37
    invoke-virtual {v5}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v6

    const-wide v7, 0x10200000003L

    invoke-virtual {v0, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v6, 0x10200000004L

    .line 38
    invoke-virtual {v5}, Landroid/os/vibrator/RampSegment;->getStartFrequencyHz()F

    move-result v8

    invoke-virtual {v0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v6, 0x10200000005L

    .line 39
    invoke-virtual {v5}, Landroid/os/vibrator/RampSegment;->getEndFrequencyHz()F

    move-result v5

    invoke-virtual {v0, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 40
    invoke-virtual {v0, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_1

    .line 41
    :cond_1
    instance-of v12, v5, Landroid/os/vibrator/PrebakedSegment;

    if-eqz v12, :cond_2

    .line 42
    check-cast v5, Landroid/os/vibrator/PrebakedSegment;

    const-wide v6, 0x10b00000001L

    .line 43
    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 44
    invoke-virtual {v5}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v12

    invoke-virtual {v0, v8, v9, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 45
    invoke-virtual {v5}, Landroid/os/vibrator/PrebakedSegment;->getEffectStrength()I

    move-result v8

    const-wide v13, 0x10500000002L

    invoke-virtual {v0, v13, v14, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 46
    invoke-virtual {v5}, Landroid/os/vibrator/PrebakedSegment;->shouldFallback()Z

    move-result v5

    const-wide v8, 0x10500000003L

    invoke-virtual {v0, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 47
    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_1

    .line 48
    :cond_2
    instance-of v12, v5, Landroid/os/vibrator/PrimitiveSegment;

    if-eqz v12, :cond_3

    .line 49
    check-cast v5, Landroid/os/vibrator/PrimitiveSegment;

    const-wide v12, 0x10b00000002L

    .line 50
    invoke-virtual {v0, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 51
    invoke-virtual {v5}, Landroid/os/vibrator/PrimitiveSegment;->getPrimitiveId()I

    move-result v14

    invoke-virtual {v0, v8, v9, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 52
    invoke-virtual {v5}, Landroid/os/vibrator/PrimitiveSegment;->getScale()F

    move-result v8

    invoke-virtual {v0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 53
    invoke-virtual {v5}, Landroid/os/vibrator/PrimitiveSegment;->getDelay()I

    move-result v5

    const-wide v6, 0x10500000003L

    invoke-virtual {v0, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 54
    invoke-virtual {v0, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 55
    :cond_3
    :goto_1
    invoke-virtual {v0, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto/16 :goto_0

    .line 56
    :cond_4
    invoke-virtual {v3}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v3

    const-wide v4, 0x10500000002L

    invoke-virtual {v0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public static formatTime(JZ)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    sget-object p2, Lcom/android/server/vibrator/Vibration;->DEBUG_DATE_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object p2, Lcom/android/server/vibrator/Vibration;->DEBUG_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    .line 7
    .line 8
    :goto_0
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p2, v0}, Ljava/time/format/DateTimeFormatter;->withZone(Ljava/time/ZoneId;)Ljava/time/format/DateTimeFormatter;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-static {p0, p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p2, p0}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 7

    .line 1
    const-string v0, "Vibration:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "status = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "durationMs = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mDurationMs:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createTime = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mCreateTime:J

    const/4 v1, 0x1

    invoke-static {v3, v4, v1}, Lcom/android/server/vibrator/Vibration$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startTime = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mStartTime:J

    invoke-static {v3, v4, v1}, Lcom/android/server/vibrator/Vibration$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "endTime = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mEndTime:J

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v3, v4, v1}, Lcom/android/server/vibrator/Vibration$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "playedEffect = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mPlayedEffect:Landroid/os/CombinedVibration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "originalEffect = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mOriginalEffect:Landroid/os/CombinedVibration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "scale = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mScaleLevel:I

    invoke-static {v1}, Lcom/android/server/vibrator/VibrationScaler;->scaleLevelToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 13
    iget v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mAdaptiveScale:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%.2f"

    invoke-static {v2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "adaptiveScale = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "callerInfo = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mCallerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final dump(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 6

    .line 16
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10300000001L

    .line 17
    iget-wide v2, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mStartTime:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10300000002L

    .line 18
    iget-wide v2, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mEndTime:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10300000007L

    .line 19
    iget-wide v2, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mDurationMs:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 20
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-wide v1, 0x10e00000008L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10b00000005L

    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 22
    iget-object v2, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mCallerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    iget-object v2, v2, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 23
    invoke-virtual {v2}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v3

    const-wide v4, 0x10500000001L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10500000002L

    .line 24
    invoke-virtual {v2}, Landroid/os/VibrationAttributes;->getAudioUsage()I

    move-result v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10500000004L

    .line 25
    invoke-virtual {v2}, Landroid/os/VibrationAttributes;->getCategory()I

    move-result v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10500000003L

    .line 26
    invoke-virtual {v2}, Landroid/os/VibrationAttributes;->getFlags()I

    move-result v2

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 27
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 28
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mPlayedEffect:Landroid/os/CombinedVibration;

    if-eqz v0, :cond_0

    const-wide v1, 0x10b00000003L

    .line 29
    invoke-static {p1, v1, v2, v0}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/CombinedVibration;)V

    .line 30
    :cond_0
    iget-object p0, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mOriginalEffect:Landroid/os/CombinedVibration;

    if-eqz p0, :cond_1

    const-wide v0, 0x10b00000004L

    .line 31
    invoke-static {p1, v0, v1, p0}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/CombinedVibration;)V

    .line 32
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "createTime: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mCreateTime:J

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    invoke-static {v1, v2, v3}, Lcom/android/server/vibrator/Vibration$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ", startTime: "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-wide v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mStartTime:J

    .line 24
    .line 25
    invoke-static {v1, v2, v3}, Lcom/android/server/vibrator/Vibration$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, ", endTime: "

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-wide v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mEndTime:J

    .line 38
    .line 39
    const-wide/16 v4, 0x0

    .line 40
    .line 41
    cmp-long v4, v1, v4

    .line 42
    .line 43
    if-nez v4, :cond_0

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-static {v1, v2, v3}, Lcom/android/server/vibrator/Vibration$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ", durationMs: "

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-wide v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mDurationMs:J

    .line 60
    .line 61
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, ", status: "

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v1, ", playedEffect: "

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mPlayedEffect:Landroid/os/CombinedVibration;

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v1, ", originalEffect: "

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mOriginalEffect:Landroid/os/CombinedVibration;

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v1, ", scaleLevel: "

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mScaleLevel:I

    .line 110
    .line 111
    invoke-static {v1}, Lcom/android/server/vibrator/VibrationScaler;->scaleLevelToString(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v1, ", adaptiveScale: "

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mAdaptiveScale:F

    .line 124
    .line 125
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    const-string v3, "%.2f"

    .line 134
    .line 135
    invoke-static {v2, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v1, ", callerInfo: "

    .line 143
    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    iget-object p0, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mCallerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 148
    .line 149
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    return-object p0
.end method
