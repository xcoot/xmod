.class public final Lcom/android/server/ondeviceintelligence/InferenceInfoStore;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final inferenceInfos:Ljava/util/TreeSet;

.field public final maxAgeMs:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->maxAgeMs:J

    .line 5
    .line 6
    new-instance p1, Ljava/util/TreeSet;

    .line 7
    .line 8
    new-instance p2, Lcom/android/server/ondeviceintelligence/InferenceInfoStore$$ExternalSyntheticLambda0;

    .line 9
    .line 10
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {p2}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-direct {p1, p2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->inferenceInfos:Ljava/util/TreeSet;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final declared-synchronized add(Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->inferenceInfos:Ljava/util/TreeSet;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iget-object v2, p0, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->inferenceInfos:Ljava/util/TreeSet;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Landroid/app/ondeviceintelligence/InferenceInfo;

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/app/ondeviceintelligence/InferenceInfo;->getStartTimeMs()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    sub-long/2addr v0, v2

    .line 27
    iget-wide v2, p0, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->maxAgeMs:J

    .line 28
    .line 29
    cmp-long v0, v0, v2

    .line 30
    .line 31
    if-lez v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->inferenceInfos:Ljava/util/TreeSet;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->inferenceInfos:Ljava/util/TreeSet;

    .line 42
    .line 43
    new-instance v1, Landroid/app/ondeviceintelligence/InferenceInfo$Builder;

    .line 44
    .line 45
    invoke-direct {v1}, Landroid/app/ondeviceintelligence/InferenceInfo$Builder;-><init>()V

    .line 46
    .line 47
    .line 48
    iget v2, p1, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->uid:I

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Landroid/app/ondeviceintelligence/InferenceInfo$Builder;->setUid(I)Landroid/app/ondeviceintelligence/InferenceInfo$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iget-wide v2, p1, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->startTimeMs:J

    .line 55
    .line 56
    invoke-virtual {v1, v2, v3}, Landroid/app/ondeviceintelligence/InferenceInfo$Builder;->setStartTimeMs(J)Landroid/app/ondeviceintelligence/InferenceInfo$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    iget-wide v2, p1, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->endTimeMs:J

    .line 61
    .line 62
    invoke-virtual {v1, v2, v3}, Landroid/app/ondeviceintelligence/InferenceInfo$Builder;->setEndTimeMs(J)Landroid/app/ondeviceintelligence/InferenceInfo$Builder;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    iget-wide v2, p1, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->suspendedTimeMs:J

    .line 67
    .line 68
    invoke-virtual {v1, v2, v3}, Landroid/app/ondeviceintelligence/InferenceInfo$Builder;->setSuspendedTimeMs(J)Landroid/app/ondeviceintelligence/InferenceInfo$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Landroid/app/ondeviceintelligence/InferenceInfo$Builder;->build()Landroid/app/ondeviceintelligence/InferenceInfo;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    .line 79
    monitor-exit p0

    .line 80
    return-void

    .line 81
    :goto_1
    monitor-exit p0

    .line 82
    throw p1
.end method

.method public final addInferenceInfoFromBundle(Landroid/os/Bundle;)V
    .locals 2

    .line 7
    const-string v0, "inference_info"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
    invoke-static {p1}, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->parseFrom([B)Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;

    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->add(Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 11
    :catch_0
    const-string p0, "InferenceInfoStore"

    const-string p1, "Unable to parse InferenceInfo from the received bytes."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final addInferenceInfoFromBundle(Landroid/os/PersistableBundle;)V
    .locals 2

    .line 1
    const-string v0, "inference_info"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;->parseFrom([B)Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/ondeviceintelligence/InferenceInfoStore;->add(Lcom/android/server/ondeviceintelligence/nano/InferenceInfo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    const-string p0, "InferenceInfoStore"

    const-string p1, "Unable to parse InferenceInfo from the received bytes."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
