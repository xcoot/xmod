.class public final Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;


# instance fields
.field public final mInfo:Lcom/android/server/vibrator/Vibration$DebugInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/Vibration$DebugInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;->mInfo:Lcom/android/server/vibrator/Vibration$DebugInfo;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 13

    .line 1
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;->mInfo:Lcom/android/server/vibrator/Vibration$DebugInfo;

    iget-object v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mPlayedEffect:Landroid/os/CombinedVibration;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2
    :goto_0
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-wide v4, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mCreateTime:J

    .line 3
    invoke-static {v4, v5, v1}, Lcom/android/server/vibrator/Vibration$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v6

    if-eqz v0, :cond_1

    .line 4
    const-string v0, "external"

    :goto_1
    move-object v7, v0

    goto :goto_2

    :cond_1
    const-string v0, "effect"

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    iget-wide v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mDurationMs:J

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 7
    iget-wide v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v10, v0, v4

    const-string v12, ""

    if-nez v10, :cond_2

    move-object v10, v12

    goto :goto_3

    :cond_2
    invoke-static {v0, v1, v2}, Lcom/android/server/vibrator/Vibration$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 8
    :goto_3
    iget-wide v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mEndTime:J

    cmp-long v4, v0, v4

    if-nez v4, :cond_3

    move-object v11, v12

    goto :goto_4

    :cond_3
    invoke-static {v0, v1, v2}, Lcom/android/server/vibrator/Vibration$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    :goto_4
    filled-new-array/range {v6 .. v11}, [Ljava/lang/Object;

    move-result-object v0

    .line 9
    const-string v1, "%s | %8s | %20s | duration: %5dms | start: %12s | end: %12s"

    invoke-static {v3, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 10
    iget v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mScaleLevel:I

    .line 11
    invoke-static {v1}, Lcom/android/server/vibrator/VibrationScaler;->scaleLevelToString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mAdaptiveScale:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mCallerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    iget-object v5, v4, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 12
    invoke-virtual {v5}, Landroid/os/VibrationAttributes;->getFlags()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 13
    invoke-virtual {v6}, Landroid/os/VibrationAttributes;->usageToString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v1, v2, v5, v6}, [Ljava/lang/Object;

    move-result-object v1

    .line 14
    const-string v2, " | scale: %8s (adaptive=%.2f) | flags: %4s | usage: %s"

    invoke-static {v3, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 15
    iget-object v2, v4, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v2}, Landroid/os/VibrationAttributes;->getCategory()I

    move-result v2

    if-eqz v2, :cond_4

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " | category="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v4, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 17
    invoke-virtual {v3}, Landroid/os/VibrationAttributes;->getCategory()I

    move-result v3

    .line 18
    invoke-static {v3}, Landroid/os/VibrationAttributes;->categoryToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_4
    move-object v2, v12

    .line 19
    :goto_5
    iget-object v3, v4, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v3}, Landroid/os/VibrationAttributes;->getOriginalAudioUsage()I

    move-result v3

    if-eqz v3, :cond_5

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, " | audioUsage="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v4, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 21
    invoke-virtual {v5}, Landroid/os/VibrationAttributes;->getOriginalAudioUsage()I

    move-result v5

    .line 22
    invoke-static {v5}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 23
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, " | "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v4, Lcom/android/server/vibrator/Vibration$CallerInfo;->opPkg:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (uid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v4, Lcom/android/server/vibrator/Vibration$CallerInfo;->uid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", deviceId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v4, Lcom/android/server/vibrator/Vibration$CallerInfo;->deviceId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") | reason: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/android/server/vibrator/Vibration$CallerInfo;->reason:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 24
    iget-object v4, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mPlayedEffect:Landroid/os/CombinedVibration;

    const/4 v5, 0x0

    if-nez v4, :cond_6

    move-object v4, v5

    goto :goto_6

    :cond_6
    invoke-virtual {v4}, Landroid/os/CombinedVibration;->toDebugString()Ljava/lang/String;

    move-result-object v4

    .line 25
    :goto_6
    iget-object p0, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mOriginalEffect:Landroid/os/CombinedVibration;

    if-nez p0, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {p0}, Landroid/os/CombinedVibration;->toDebugString()Ljava/lang/String;

    move-result-object v5

    .line 26
    :goto_7
    const-string p0, " | played: "

    const-string v6, " | original: "

    .line 27
    invoke-static {p0, v4, v6, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final dump(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;->mInfo:Lcom/android/server/vibrator/Vibration$DebugInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    return-void
.end method

.method public final getCreateUptimeMs()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;->mInfo:Lcom/android/server/vibrator/Vibration$DebugInfo;

    .line 2
    .line 3
    iget-wide v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mCreateTime:J

    .line 4
    .line 5
    return-wide v0
.end method

.method public final getGroupKey()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;->mInfo:Lcom/android/server/vibrator/Vibration$DebugInfo;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mCallerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/os/VibrationAttributes;->getUsage()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final mayAggregate(Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;)Z
    .locals 5

    .line 1
    instance-of v0, p1, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;->mInfo:Lcom/android/server/vibrator/Vibration$DebugInfo;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;->mInfo:Lcom/android/server/vibrator/Vibration$DebugInfo;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mCallerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 14
    .line 15
    iget v2, v0, Lcom/android/server/vibrator/Vibration$CallerInfo;->uid:I

    .line 16
    .line 17
    iget-object v3, p1, Lcom/android/server/vibrator/Vibration$DebugInfo;->mCallerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 18
    .line 19
    iget v4, v3, Lcom/android/server/vibrator/Vibration$CallerInfo;->uid:I

    .line 20
    .line 21
    if-ne v2, v4, :cond_1

    .line 22
    .line 23
    iget-object v0, v0, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 24
    .line 25
    iget-object v2, v3, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 26
    .line 27
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/vibrator/Vibration$DebugInfo;->mPlayedEffect:Landroid/os/CombinedVibration;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/android/server/vibrator/Vibration$DebugInfo;->mPlayedEffect:Landroid/os/CombinedVibration;

    .line 36
    .line 37
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_1

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    :cond_1
    return v1
.end method
