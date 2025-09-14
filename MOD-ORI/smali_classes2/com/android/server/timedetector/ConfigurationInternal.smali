.class public final Lcom/android/server/timedetector/ConfigurationInternal;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAutoDetectionEnabledSetting:Z

.field public final mAutoDetectionSupported:Z

.field public final mAutoSuggestionLowerBound:Ljava/time/Instant;

.field public final mManualSuggestionLowerBound:Ljava/time/Instant;

.field public final mOriginPriorities:[I

.field public final mSuggestionUpperBound:Ljava/time/Instant;

.field public final mSystemClockConfidenceThresholdMillis:I

.field public final mSystemClockUpdateThresholdMillis:I

.field public final mUserConfigAllowed:Z

.field public final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/timedetector/ConfigurationInternal$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p1, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mAutoDetectionSupported:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoDetectionSupported:Z

    .line 7
    .line 8
    iget v0, p1, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mSystemClockUpdateThresholdMillis:I

    .line 9
    .line 10
    iput v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mSystemClockUpdateThresholdMillis:I

    .line 11
    .line 12
    iget v0, p1, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mSystemClockConfidenceThresholdMillis:I

    .line 13
    .line 14
    iput v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mSystemClockConfidenceThresholdMillis:I

    .line 15
    .line 16
    iget-object v0, p1, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mAutoSuggestionLowerBound:Ljava/time/Instant;

    .line 17
    .line 18
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoSuggestionLowerBound:Ljava/time/Instant;

    .line 22
    .line 23
    iget-object v0, p1, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mManualSuggestionLowerBound:Ljava/time/Instant;

    .line 24
    .line 25
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mManualSuggestionLowerBound:Ljava/time/Instant;

    .line 29
    .line 30
    iget-object v0, p1, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mSuggestionUpperBound:Ljava/time/Instant;

    .line 31
    .line 32
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mSuggestionUpperBound:Ljava/time/Instant;

    .line 36
    .line 37
    iget-object v0, p1, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mOriginPriorities:[I

    .line 38
    .line 39
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mOriginPriorities:[I

    .line 43
    .line 44
    iget-boolean v0, p1, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mAutoDetectionEnabledSetting:Z

    .line 45
    .line 46
    iput-boolean v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoDetectionEnabledSetting:Z

    .line 47
    .line 48
    iget v0, p1, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mUserId:I

    .line 49
    .line 50
    iput v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mUserId:I

    .line 51
    .line 52
    iget-boolean p1, p1, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->mUserConfigAllowed:Z

    .line 53
    .line 54
    iput-boolean p1, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final createCapabilitiesAndConfig()Landroid/app/time/TimeCapabilitiesAndConfig;
    .locals 6

    .line 1
    new-instance v0, Landroid/app/time/TimeCapabilitiesAndConfig;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mUserId:I

    .line 4
    .line 5
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Landroid/app/time/TimeCapabilities$Builder;

    .line 10
    .line 11
    invoke-direct {v2, v1}, Landroid/app/time/TimeCapabilities$Builder;-><init>(Landroid/os/UserHandle;)V

    .line 12
    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    .line 15
    .line 16
    iget-boolean v3, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoDetectionSupported:Z

    .line 17
    .line 18
    const/16 v4, 0x28

    .line 19
    .line 20
    const/16 v5, 0x14

    .line 21
    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    const/16 v3, 0xa

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    if-nez v1, :cond_1

    .line 28
    .line 29
    move v3, v5

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move v3, v4

    .line 32
    :goto_0
    invoke-virtual {v2, v3}, Landroid/app/time/TimeCapabilities$Builder;->setConfigureAutoDetectionEnabledCapability(I)Landroid/app/time/TimeCapabilities$Builder;

    .line 33
    .line 34
    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    move v4, v5

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/timedetector/ConfigurationInternal;->getAutoDetectionEnabledBehavior()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    const/16 v4, 0x1e

    .line 46
    .line 47
    :cond_3
    :goto_1
    invoke-virtual {v2, v4}, Landroid/app/time/TimeCapabilities$Builder;->setSetManualTimeCapability(I)Landroid/app/time/TimeCapabilities$Builder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Landroid/app/time/TimeCapabilities$Builder;->build()Landroid/app/time/TimeCapabilities;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    new-instance v2, Landroid/app/time/TimeConfiguration$Builder;

    .line 55
    .line 56
    invoke-direct {v2}, Landroid/app/time/TimeConfiguration$Builder;-><init>()V

    .line 57
    .line 58
    .line 59
    iget-boolean p0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoDetectionEnabledSetting:Z

    .line 60
    .line 61
    invoke-virtual {v2, p0}, Landroid/app/time/TimeConfiguration$Builder;->setAutoDetectionEnabled(Z)Landroid/app/time/TimeConfiguration$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0}, Landroid/app/time/TimeConfiguration$Builder;->build()Landroid/app/time/TimeConfiguration;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-direct {v0, v1, p0}, Landroid/app/time/TimeCapabilitiesAndConfig;-><init>(Landroid/app/time/TimeCapabilities;Landroid/app/time/TimeConfiguration;)V

    .line 70
    .line 71
    .line 72
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/server/timedetector/ConfigurationInternal;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/server/timedetector/ConfigurationInternal;

    .line 12
    .line 13
    iget-boolean v1, p1, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoDetectionSupported:Z

    .line 14
    .line 15
    iget-boolean v3, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoDetectionSupported:Z

    .line 16
    .line 17
    if-ne v3, v1, :cond_2

    .line 18
    .line 19
    iget-boolean v1, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoDetectionEnabledSetting:Z

    .line 20
    .line 21
    iget-boolean v3, p1, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoDetectionEnabledSetting:Z

    .line 22
    .line 23
    if-ne v1, v3, :cond_2

    .line 24
    .line 25
    iget v1, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mUserId:I

    .line 26
    .line 27
    iget v3, p1, Lcom/android/server/timedetector/ConfigurationInternal;->mUserId:I

    .line 28
    .line 29
    if-ne v1, v3, :cond_2

    .line 30
    .line 31
    iget-boolean v1, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    .line 32
    .line 33
    iget-boolean v3, p1, Lcom/android/server/timedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    .line 34
    .line 35
    if-ne v1, v3, :cond_2

    .line 36
    .line 37
    iget v1, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mSystemClockUpdateThresholdMillis:I

    .line 38
    .line 39
    iget v3, p1, Lcom/android/server/timedetector/ConfigurationInternal;->mSystemClockUpdateThresholdMillis:I

    .line 40
    .line 41
    if-ne v1, v3, :cond_2

    .line 42
    .line 43
    iget v1, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mSystemClockConfidenceThresholdMillis:I

    .line 44
    .line 45
    iget v3, p1, Lcom/android/server/timedetector/ConfigurationInternal;->mSystemClockConfidenceThresholdMillis:I

    .line 46
    .line 47
    if-ne v1, v3, :cond_2

    .line 48
    .line 49
    iget-object v1, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoSuggestionLowerBound:Ljava/time/Instant;

    .line 50
    .line 51
    iget-object v3, p1, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoSuggestionLowerBound:Ljava/time/Instant;

    .line 52
    .line 53
    invoke-virtual {v1, v3}, Ljava/time/Instant;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    iget-object v1, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mManualSuggestionLowerBound:Ljava/time/Instant;

    .line 60
    .line 61
    iget-object v3, p1, Lcom/android/server/timedetector/ConfigurationInternal;->mManualSuggestionLowerBound:Ljava/time/Instant;

    .line 62
    .line 63
    invoke-virtual {v1, v3}, Ljava/time/Instant;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    iget-object v1, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mSuggestionUpperBound:Ljava/time/Instant;

    .line 70
    .line 71
    iget-object v3, p1, Lcom/android/server/timedetector/ConfigurationInternal;->mSuggestionUpperBound:Ljava/time/Instant;

    .line 72
    .line 73
    invoke-virtual {v1, v3}, Ljava/time/Instant;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_2

    .line 78
    .line 79
    iget-object p0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mOriginPriorities:[I

    .line 80
    .line 81
    iget-object p1, p1, Lcom/android/server/timedetector/ConfigurationInternal;->mOriginPriorities:[I

    .line 82
    .line 83
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    if-eqz p0, :cond_2

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    move v0, v2

    .line 91
    :goto_0
    return v0
.end method

.method public final getAutoDetectionEnabledBehavior()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoDetectionSupported:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoDetectionEnabledSetting:Z

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoDetectionSupported:Z

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-boolean v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoDetectionEnabledSetting:Z

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mUserId:I

    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget-boolean v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    iget v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mSystemClockUpdateThresholdMillis:I

    .line 26
    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    iget v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mSystemClockConfidenceThresholdMillis:I

    .line 32
    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    iget-object v7, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoSuggestionLowerBound:Ljava/time/Instant;

    .line 38
    .line 39
    iget-object v8, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mManualSuggestionLowerBound:Ljava/time/Instant;

    .line 40
    .line 41
    iget-object v9, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mSuggestionUpperBound:Ljava/time/Instant;

    .line 42
    .line 43
    filled-new-array/range {v1 .. v9}, [Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mOriginPriorities:[I

    .line 54
    .line 55
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    add-int/2addr p0, v0

    .line 60
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mOriginPriorities:[I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/android/server/timedetector/ConfigurationInternal$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "["

    .line 17
    .line 18
    const-string v2, "]"

    .line 19
    .line 20
    const-string v3, ","

    .line 21
    .line 22
    invoke-static {v3, v1, v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/lang/String;

    .line 31
    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v2, "ConfigurationInternal{mAutoDetectionSupported="

    .line 35
    .line 36
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-boolean v2, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoDetectionSupported:Z

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, ", mSystemClockUpdateThresholdMillis="

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget v2, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mSystemClockUpdateThresholdMillis:I

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, ", mSystemClockConfidenceThresholdMillis="

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget v2, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mSystemClockConfidenceThresholdMillis:I

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v2, ", mAutoSuggestionLowerBound="

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v2, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoSuggestionLowerBound:Ljava/time/Instant;

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v2, "("

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v3, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoSuggestionLowerBound:Ljava/time/Instant;

    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    .line 82
    .line 83
    .line 84
    move-result-wide v3

    .line 85
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v3, "), mManualSuggestionLowerBound="

    .line 89
    .line 90
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget-object v3, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mManualSuggestionLowerBound:Ljava/time/Instant;

    .line 94
    .line 95
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-object v3, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mManualSuggestionLowerBound:Ljava/time/Instant;

    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/time/Instant;->toEpochMilli()J

    .line 104
    .line 105
    .line 106
    move-result-wide v3

    .line 107
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v3, "), mSuggestionUpperBound="

    .line 111
    .line 112
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget-object v3, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mSuggestionUpperBound:Ljava/time/Instant;

    .line 116
    .line 117
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget-object v2, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mSuggestionUpperBound:Ljava/time/Instant;

    .line 124
    .line 125
    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    .line 126
    .line 127
    .line 128
    move-result-wide v2

    .line 129
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v2, "), mOriginPriorities="

    .line 133
    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v0, ", mAutoDetectionEnabled="

    .line 141
    .line 142
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    iget-boolean v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoDetectionEnabledSetting:Z

    .line 146
    .line 147
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v0, ", mUserId="

    .line 151
    .line 152
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    iget v0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mUserId:I

    .line 156
    .line 157
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v0, ", mUserConfigAllowed="

    .line 161
    .line 162
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    iget-boolean p0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    .line 166
    .line 167
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const/16 p0, 0x7d

    .line 171
    .line 172
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    return-object p0
.end method
