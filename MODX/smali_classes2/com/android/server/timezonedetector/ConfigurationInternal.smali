.class public final Lcom/android/server/timezonedetector/ConfigurationInternal;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAutoDetectionEnabledSetting:Z

.field public final mEnhancedMetricsCollectionEnabled:Z

.field public final mGeoDetectionEnabledSetting:Z

.field public final mGeoDetectionRunInBackgroundEnabled:Z

.field public final mGeoDetectionSupported:Z

.field public final mLocationEnabledSetting:Z

.field public final mTelephonyDetectionSupported:Z

.field public final mTelephonyFallbackSupported:Z

.field public final mUserConfigAllowed:Z

.field public final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p1, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mTelephonyDetectionSupported:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyDetectionSupported:Z

    .line 7
    .line 8
    iget-boolean v0, p1, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mGeoDetectionSupported:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionSupported:Z

    .line 11
    .line 12
    iget-boolean v0, p1, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mTelephonyFallbackSupported:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyFallbackSupported:Z

    .line 15
    .line 16
    iget-boolean v0, p1, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mGeoDetectionRunInBackgroundEnabled:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionRunInBackgroundEnabled:Z

    .line 19
    .line 20
    iget-boolean v0, p1, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mEnhancedMetricsCollectionEnabled:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mEnhancedMetricsCollectionEnabled:Z

    .line 23
    .line 24
    iget-boolean v0, p1, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mAutoDetectionEnabledSetting:Z

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mAutoDetectionEnabledSetting:Z

    .line 27
    .line 28
    iget-object v0, p1, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mUserId:Ljava/lang/Integer;

    .line 29
    .line 30
    const-string/jumbo v1, "userId must be set"

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iput v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserId:I

    .line 41
    .line 42
    iget-boolean v0, p1, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mUserConfigAllowed:Z

    .line 43
    .line 44
    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    .line 45
    .line 46
    iget-boolean v0, p1, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mLocationEnabledSetting:Z

    .line 47
    .line 48
    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mLocationEnabledSetting:Z

    .line 49
    .line 50
    iget-boolean p1, p1, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->mGeoDetectionEnabledSetting:Z

    .line 51
    .line 52
    iput-boolean p1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionEnabledSetting:Z

    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public final asCapabilities()Landroid/app/time/TimeZoneCapabilities;
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserId:I

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/app/time/TimeZoneCapabilities$Builder;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Landroid/app/time/TimeZoneCapabilities$Builder;-><init>(Landroid/os/UserHandle;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isAutoDetectionSupported()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-boolean v2, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    .line 17
    .line 18
    const/16 v3, 0x14

    .line 19
    .line 20
    const/16 v4, 0xa

    .line 21
    .line 22
    const/16 v5, 0x28

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    move v0, v4

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    if-nez v2, :cond_1

    .line 29
    .line 30
    move v0, v3

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move v0, v5

    .line 33
    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/time/TimeZoneCapabilities$Builder;->setConfigureAutoDetectionEnabledCapability(I)Landroid/app/time/TimeZoneCapabilities$Builder;

    .line 34
    .line 35
    .line 36
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mLocationEnabledSetting:Z

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Landroid/app/time/TimeZoneCapabilities$Builder;->setUseLocationEnabled(Z)Landroid/app/time/TimeZoneCapabilities$Builder;

    .line 39
    .line 40
    .line 41
    iget-boolean v6, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionSupported:Z

    .line 42
    .line 43
    iget-boolean v7, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mAutoDetectionEnabledSetting:Z

    .line 44
    .line 45
    const/16 v8, 0x1e

    .line 46
    .line 47
    if-eqz v6, :cond_5

    .line 48
    .line 49
    iget-boolean v6, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyDetectionSupported:Z

    .line 50
    .line 51
    if-nez v6, :cond_2

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    if-eqz v7, :cond_4

    .line 55
    .line 56
    if-nez v0, :cond_3

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    move v4, v5

    .line 60
    goto :goto_2

    .line 61
    :cond_4
    :goto_1
    move v4, v8

    .line 62
    :cond_5
    :goto_2
    invoke-virtual {v1, v4}, Landroid/app/time/TimeZoneCapabilities$Builder;->setConfigureGeoDetectionEnabledCapability(I)Landroid/app/time/TimeZoneCapabilities$Builder;

    .line 63
    .line 64
    .line 65
    if-nez v2, :cond_6

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isAutoDetectionSupported()Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    if-eqz p0, :cond_7

    .line 73
    .line 74
    if-eqz v7, :cond_7

    .line 75
    .line 76
    move v3, v8

    .line 77
    goto :goto_3

    .line 78
    :cond_7
    move v3, v5

    .line 79
    :goto_3
    invoke-virtual {v1, v3}, Landroid/app/time/TimeZoneCapabilities$Builder;->setSetManualTimeZoneCapability(I)Landroid/app/time/TimeZoneCapabilities$Builder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Landroid/app/time/TimeZoneCapabilities$Builder;->build()Landroid/app/time/TimeZoneCapabilities;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    return-object p0
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
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    check-cast p1, Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 18
    .line 19
    iget v2, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserId:I

    .line 20
    .line 21
    iget v3, p1, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserId:I

    .line 22
    .line 23
    if-ne v2, v3, :cond_2

    .line 24
    .line 25
    iget-boolean v2, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    .line 26
    .line 27
    iget-boolean v3, p1, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    .line 28
    .line 29
    if-ne v2, v3, :cond_2

    .line 30
    .line 31
    iget-boolean v2, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyDetectionSupported:Z

    .line 32
    .line 33
    iget-boolean v3, p1, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyDetectionSupported:Z

    .line 34
    .line 35
    if-ne v2, v3, :cond_2

    .line 36
    .line 37
    iget-boolean v2, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionSupported:Z

    .line 38
    .line 39
    iget-boolean v3, p1, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionSupported:Z

    .line 40
    .line 41
    if-ne v2, v3, :cond_2

    .line 42
    .line 43
    iget-boolean v2, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyFallbackSupported:Z

    .line 44
    .line 45
    iget-boolean v3, p1, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyFallbackSupported:Z

    .line 46
    .line 47
    if-ne v2, v3, :cond_2

    .line 48
    .line 49
    iget-boolean v2, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionRunInBackgroundEnabled:Z

    .line 50
    .line 51
    iget-boolean v3, p1, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionRunInBackgroundEnabled:Z

    .line 52
    .line 53
    if-ne v2, v3, :cond_2

    .line 54
    .line 55
    iget-boolean v2, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mEnhancedMetricsCollectionEnabled:Z

    .line 56
    .line 57
    iget-boolean v3, p1, Lcom/android/server/timezonedetector/ConfigurationInternal;->mEnhancedMetricsCollectionEnabled:Z

    .line 58
    .line 59
    if-ne v2, v3, :cond_2

    .line 60
    .line 61
    iget-boolean v2, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mAutoDetectionEnabledSetting:Z

    .line 62
    .line 63
    iget-boolean v3, p1, Lcom/android/server/timezonedetector/ConfigurationInternal;->mAutoDetectionEnabledSetting:Z

    .line 64
    .line 65
    if-ne v2, v3, :cond_2

    .line 66
    .line 67
    iget-boolean v2, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mLocationEnabledSetting:Z

    .line 68
    .line 69
    iget-boolean v3, p1, Lcom/android/server/timezonedetector/ConfigurationInternal;->mLocationEnabledSetting:Z

    .line 70
    .line 71
    if-ne v2, v3, :cond_2

    .line 72
    .line 73
    iget-boolean p0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionEnabledSetting:Z

    .line 74
    .line 75
    iget-boolean p1, p1, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionEnabledSetting:Z

    .line 76
    .line 77
    if-ne p0, p1, :cond_2

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    move v0, v1

    .line 81
    :goto_0
    return v0

    .line 82
    :cond_3
    :goto_1
    return v1
.end method

.method public final getDetectionMode()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isAutoDetectionSupported()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mAutoDetectionEnabledSetting:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    return v1

    .line 14
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionSupported:Z

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    iget-boolean v3, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyDetectionSupported:Z

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mLocationEnabledSetting:Z

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    if-eqz v3, :cond_3

    .line 26
    .line 27
    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionEnabledSetting:Z

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    move v1, v2

    .line 31
    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    .line 32
    .line 33
    const/4 p0, 0x2

    .line 34
    return p0

    .line 35
    :cond_4
    if-eqz v3, :cond_5

    .line 36
    .line 37
    const/4 p0, 0x3

    .line 38
    return p0

    .line 39
    :cond_5
    return v2
.end method

.method public final hashCode()I
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserId:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyDetectionSupported:Z

    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionSupported:Z

    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyFallbackSupported:Z

    .line 26
    .line 27
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionRunInBackgroundEnabled:Z

    .line 32
    .line 33
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mEnhancedMetricsCollectionEnabled:Z

    .line 38
    .line 39
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mAutoDetectionEnabledSetting:Z

    .line 44
    .line 45
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mLocationEnabledSetting:Z

    .line 50
    .line 51
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    iget-boolean p0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionEnabledSetting:Z

    .line 56
    .line 57
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 58
    .line 59
    .line 60
    move-result-object v10

    .line 61
    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    return p0
.end method

.method public final isAutoDetectionSupported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyDetectionSupported:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionSupported:Z

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    :goto_1
    return p0
.end method

.method public final isGeoDetectionExecutionEnabled()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getDetectionMode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionSupported:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mLocationEnabledSetting:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mAutoDetectionEnabledSetting:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-boolean p0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionRunInBackgroundEnabled:Z

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 28
    :goto_1
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ConfigurationInternal{mUserId="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserId:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mUserConfigAllowed="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserConfigAllowed:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", mTelephonyDetectionSupported="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyDetectionSupported:Z

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", mGeoDetectionSupported="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionSupported:Z

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", mTelephonyFallbackSupported="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyFallbackSupported:Z

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", mGeoDetectionRunInBackgroundEnabled="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionRunInBackgroundEnabled:Z

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", mEnhancedMetricsCollectionEnabled="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mEnhancedMetricsCollectionEnabled:Z

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", mAutoDetectionEnabledSetting="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mAutoDetectionEnabledSetting:Z

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", mLocationEnabledSetting="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-boolean v1, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mLocationEnabledSetting:Z

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", mGeoDetectionEnabledSetting="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-boolean p0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionEnabledSetting:Z

    .line 99
    .line 100
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const/16 p0, 0x7d

    .line 104
    .line 105
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    return-object p0
.end method
