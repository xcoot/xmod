.class public final Lcom/android/server/power/ScreenUndimDetector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final DEFAULT_KEEP_SCREEN_ON_FOR_MILLIS:J

.field static final DEFAULT_MAX_DURATION_BETWEEN_UNDIMS_MILLIS:J

.field static final DEFAULT_UNDIMS_REQUIRED:I = 0x2

.field static final KEY_KEEP_SCREEN_ON_FOR_MILLIS:Ljava/lang/String; = "keep_screen_on_for_millis"

.field static final KEY_MAX_DURATION_BETWEEN_UNDIMS_MILLIS:Ljava/lang/String; = "max_duration_between_undims_millis"

.field static final KEY_UNDIMS_REQUIRED:Ljava/lang/String; = "undims_required"


# instance fields
.field mCurrentScreenPolicy:I

.field public mKeepScreenOnEnabled:Z

.field public mKeepScreenOnForMillis:J

.field mUndimCounter:I

.field mUndimCounterStartedMillis:J

.field public mUndimsRequired:I

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0xa

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    sput-wide v1, Lcom/android/server/power/ScreenUndimDetector;->DEFAULT_KEEP_SCREEN_ON_FOR_MILLIS:J

    .line 10
    .line 11
    const-wide/16 v1, 0x5

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    sput-wide v0, Lcom/android/server/power/ScreenUndimDetector;->DEFAULT_MAX_DURATION_BETWEEN_UNDIMS_MILLIS:J

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public readValuesFromDeviceConfig()V
    .locals 6

    .line 1
    const-string v0, "keep_screen_on_enabled"

    .line 2
    .line 3
    const-string v1, "attention_manager_service"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v1, v0, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput-boolean v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mKeepScreenOnEnabled:Z

    .line 11
    .line 12
    const-string v0, "keep_screen_on_for_millis"

    .line 13
    .line 14
    sget-wide v3, Lcom/android/server/power/ScreenUndimDetector;->DEFAULT_KEEP_SCREEN_ON_FOR_MILLIS:J

    .line 15
    .line 16
    invoke-static {v1, v0, v3, v4}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 17
    .line 18
    .line 19
    move-result-wide v3

    .line 20
    iput-wide v3, p0, Lcom/android/server/power/ScreenUndimDetector;->mKeepScreenOnForMillis:J

    .line 21
    .line 22
    const-string/jumbo v0, "undims_required"

    .line 23
    .line 24
    .line 25
    const/4 v3, 0x2

    .line 26
    invoke-static {v1, v0, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const-string v4, "ScreenUndimDetector"

    .line 31
    .line 32
    if-lt v0, v2, :cond_1

    .line 33
    .line 34
    const/4 v2, 0x5

    .line 35
    if-le v0, v2, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v3, v0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    const-string v2, "Provided undimsRequired="

    .line 41
    .line 42
    const-string v5, " is not allowed [1, 5]; using the default=2"

    .line 43
    .line 44
    invoke-static {v0, v2, v5, v4}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :goto_1
    iput v3, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimsRequired:I

    .line 48
    .line 49
    const-string/jumbo v0, "max_duration_between_undims_millis"

    .line 50
    .line 51
    .line 52
    sget-wide v2, Lcom/android/server/power/ScreenUndimDetector;->DEFAULT_MAX_DURATION_BETWEEN_UNDIMS_MILLIS:J

    .line 53
    .line 54
    invoke-static {v1, v0, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 55
    .line 56
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string/jumbo v1, "readValuesFromDeviceConfig():\nmKeepScreenOnForMillis="

    .line 60
    .line 61
    .line 62
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-wide v1, p0, Lcom/android/server/power/ScreenUndimDetector;->mKeepScreenOnForMillis:J

    .line 66
    .line 67
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v1, "\nmKeepScreenOnNotificationEnabled="

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-boolean v1, p0, Lcom/android/server/power/ScreenUndimDetector;->mKeepScreenOnEnabled:Z

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v1, "\nmUndimsRequired="

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget p0, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimsRequired:I

    .line 86
    .line 87
    invoke-static {v0, p0, v4}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public reset()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimCounter:I

    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimCounterStartedMillis:J

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/power/ScreenUndimDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
