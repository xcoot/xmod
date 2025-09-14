.class public final Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBadQualityCount:I

.field public mExtra:I

.field public mFpAlphaMaskLvl:I

.field public mFpScreenStatus:I

.field public mLatency:J

.field public mPackageName:Ljava/lang/String;

.field public mResult:Ljava/lang/String;

.field public mResultTime:J

.field public mStartTime:J

.field public mTouchMap:Ljava/lang/String;

.field public mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mFpScreenStatus:I

    .line 7
    iput v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mFpAlphaMaskLvl:I

    .line 9
    return-void
.end method


# virtual methods
.method public final sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mTouchMap:Ljava/lang/String;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    const-string/jumbo v1, "touch_map"

    .line 12
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    :cond_0
    const-string/jumbo v0, "screen_status"

    .line 18
    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 21
    const-string/jumbo p3, "pkg_name"

    .line 24
    iget-object p0, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mPackageName:Ljava/lang/String;

    .line 26
    invoke-virtual {p2, p3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    :try_start_0
    sget-object p0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 31
    const-string p3, "android.permission.MANAGE_BIOMETRIC"

    .line 33
    invoke-virtual {p1, p2, p0, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    .line 40
    const-string/jumbo p2, "sendBroadcast: "

    .line 43
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    const-string p2, "BiometricStats"

    .line 48
    invoke-static {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 51
    :goto_0
    return-void
.end method

.method public final sendBroadcastFaceInfo(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "pkg_name"

    .line 4
    iget-object p0, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mPackageName:Ljava/lang/String;

    .line 6
    invoke-virtual {p2, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    sget-boolean p0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_SUPPORT_FOLDABLE_TYPE_FLIP:Z

    .line 11
    const-string/jumbo v0, "fold_state"

    .line 14
    if-nez p0, :cond_1

    .line 16
    sget-boolean p0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_SUPPORT_FOLDABLE_TYPE_FOLD:Z

    .line 18
    if-eqz p0, :cond_0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    invoke-virtual {p2, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 25
    goto :goto_2

    .line 26
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->isFolderOpened(Landroid/content/Context;)Z

    .line 29
    move-result p0

    .line 30
    if-nez p0, :cond_3

    .line 32
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->isFlipOpened(Landroid/content/Context;)Z

    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_2

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    const/4 p0, 0x2

    .line 40
    invoke-virtual {p2, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 43
    goto :goto_2

    .line 44
    :cond_3
    :goto_1
    const/4 p0, 0x1

    .line 45
    invoke-virtual {p2, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    :goto_2
    :try_start_0
    sget-object p0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 50
    const-string v0, "android.permission.MANAGE_BIOMETRIC"

    .line 52
    invoke-virtual {p1, p2, p0, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    goto :goto_3

    .line 56
    :catch_0
    move-exception p0

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    .line 59
    const-string/jumbo p2, "sendBroadcast: "

    .line 62
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    const-string p2, "BiometricStats"

    .line 67
    invoke-static {p0, p1, p2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 70
    :goto_3
    return-void
.end method

.method public final toDumpFormat()Ljava/lang/String;
    .locals 10

    .line 1
    const-string v0, ", "

    .line 3
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 5
    const-string v2, "MM/dd HH:mm:ss.SSS"

    .line 7
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 9
    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 12
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResultTime:J

    .line 14
    const-wide/16 v4, 0x0

    .line 16
    cmp-long v2, v2, v4

    .line 18
    if-nez v2, :cond_0

    .line 20
    const-string v2, "-----------"

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    new-instance v2, Ljava/util/Date;

    .line 27
    iget-wide v3, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResultTime:J

    .line 29
    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 32
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    :goto_0
    iget-object v3, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mType:Ljava/lang/String;

    .line 38
    iget-object v4, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mPackageName:Ljava/lang/String;

    .line 40
    new-instance v5, Ljava/util/Date;

    .line 42
    iget-wide v6, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mStartTime:J

    .line 44
    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 47
    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 51
    iget-wide v5, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mLatency:J

    .line 53
    iget v7, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mExtra:I

    .line 55
    iget v8, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mBadQualityCount:I

    .line 57
    iget-object p0, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResult:Ljava/lang/String;

    .line 59
    new-instance v9, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    return-object p0

    .line 114
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 116
    const-string/jumbo v1, "toDumpFormat: "

    .line 119
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    const-string v1, "BiometricStats"

    .line 124
    invoke-static {p0, v0, v1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 127
    const-string/jumbo p0, "formatting error"

    .line 130
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "LoggingInfo{mType=\'"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mType:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, "\', mPackageName=\'"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mPackageName:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, "\', mStartTime="

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-wide v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mStartTime:J

    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 33
    const-string v1, ", mLatency="

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-wide v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mLatency:J

    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 43
    const-string v1, ", mResultTime="

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-wide v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResultTime:J

    .line 50
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 53
    const-string v1, ", mExtra="

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mExtra:I

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    const-string v1, ", mBadQualityCount="

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget p0, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mBadQualityCount:I

    .line 70
    const/16 v1, 0x7d

    .line 72
    invoke-static {v0, p0, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 75
    move-result-object p0

    .line 76
    return-object p0
.end method
