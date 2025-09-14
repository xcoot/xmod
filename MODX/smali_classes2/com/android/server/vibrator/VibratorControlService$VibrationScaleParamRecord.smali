.class public final Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;


# instance fields
.field public final mCreateTime:J

.field public final mOperation:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

.field public final mScale:F

.field public final mTypesMask:I


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;JIF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mOperation:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mCreateTime:J

    .line 7
    .line 8
    iput p4, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mTypesMask:I

    .line 9
    .line 10
    iput p5, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mScale:F

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 8

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    sget-object v1, Lcom/android/server/vibrator/VibratorControlService;->DEBUG_DATE_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    .line 2
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/time/format/DateTimeFormatter;->withZone(Ljava/time/ZoneId;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mCreateTime:J

    .line 3
    invoke-static {v2, v3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v2

    .line 4
    invoke-virtual {v1, v2}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mOperation:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    .line 5
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 6
    iget v3, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mScale:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v4, v3, v4

    if-nez v4, :cond_0

    const-string v3, ""

    goto :goto_0

    :cond_0
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%.2f"

    invoke-static {v0, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    iget p0, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mTypesMask:I

    int-to-long v4, p0

    .line 7
    invoke-static {v4, v5}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v4

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    invoke-static {p0}, Lcom/android/server/vibrator/VibratorControlService;->mapFromAdaptiveVibrationTypeToVibrationUsages(I)[I

    move-result-object p0

    const/4 v6, 0x0

    .line 10
    :goto_1
    array-length v7, p0

    if-ge v6, v7, :cond_2

    if-lez v6, :cond_1

    .line 11
    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    :cond_1
    aget v7, p0, v6

    invoke-static {v7}, Landroid/os/VibrationAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 14
    filled-new-array {v1, v2, v3, v4, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 15
    const-string v1, "%s | %6s | scale: %5s | typesMask: %6s | usages: %s"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 16
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final dump(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5

    .line 17
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10300000002L

    .line 18
    iget-wide v2, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mCreateTime:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 19
    sget-object v0, Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;->PULL:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mOperation:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-wide v1, 0x10800000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10b00000001L

    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10500000001L

    .line 21
    iget v4, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mTypesMask:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10200000002L

    .line 22
    iget p0, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mScale:F

    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 24
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final getCreateUptimeMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mCreateTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getGroupKey()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final mayAggregate(Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;

    .line 7
    .line 8
    iget v0, p1, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mTypesMask:I

    .line 9
    .line 10
    iget v2, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mTypesMask:I

    .line 11
    .line 12
    if-ne v2, v0, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mOperation:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mOperation:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    .line 17
    .line 18
    if-ne p0, p1, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    :cond_0
    return v1
.end method
