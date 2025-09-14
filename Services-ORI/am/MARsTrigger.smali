.class public final Lcom/android/server/am/MARsTrigger;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAlarm:Landroid/app/AlarmManager;

.field public mAppStartUpIntentReceiver:Lcom/android/server/am/MARsTrigger$5;

.field public mContext:Landroid/content/Context;

.field public mEmStateReceiverRegistered:Z

.field public mEmergencyStateChangedReceiver:Lcom/android/server/am/MARsTrigger$1;

.field public mIntentReceiver:Lcom/android/server/am/MARsTrigger$1;

.field public mLastTimeChangeClockTime:J

.field public mLastTimeChangeRealtime:J

.field public mMARsFirstTriggerPolicyAlarmIntent:Landroid/app/PendingIntent;

.field public mPolicyGameIntentReceiver:Lcom/android/server/am/MARsTrigger$1;

.field public mPolicyIntentReceiver:Lcom/android/server/am/MARsTrigger$1;

.field public mPolicySBikeIntentReceiver:Lcom/android/server/am/MARsTrigger$1;

.field public mReceiverRegistered:Z

.field public mSMDBChangedReceiver:Lcom/android/server/am/MARsTrigger$5;

.field public mSMDBChangedReceiverRegistered:Z

.field public mTCPUReceiver:Lcom/android/server/am/MARsTrigger$5;

.field public mTimeIntentReceiver:Lcom/android/server/am/MARsTrigger$1;

.field public mTriggerIntentReceiver:Lcom/android/server/am/MARsTrigger$1;

.field public mUserActionReceiver:Lcom/android/server/am/MARsTrigger$5;

.field public mUserIntentReceiver:Lcom/android/server/am/MARsTrigger$1;

.field public user:Landroid/os/UserHandle;


# direct methods
.method public static -$$Nest$mactionToString(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "com.android.server.am.ACTION_UI_SET_ALWAYS_OPTIMIZING"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    const-string p0, "User Set Always Optimizing"

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string/jumbo p0, "com.android.server.am.ACTION_PACKAGE_NOTUSED_RECENTLY"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    const-string p0, "Package Not Used Recently"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const-string/jumbo p0, "com.samsung.android.server.am.ACTION_UI_TRIGGER_POLICY"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_2

    .line 33
    .line 34
    const-string p0, "User Trigger Policy"

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const-string/jumbo p0, "com.android.server.am.MARS_TRIGGER_SBIKE_MODE_POLICY"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-eqz p0, :cond_3

    .line 45
    .line 46
    const-string p0, "Trigger S Bike Policy"

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    const-string/jumbo p0, "com.android.server.am.MARS_TRIGGER_GAME_MODE_POLICY"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-eqz p0, :cond_4

    .line 57
    .line 58
    const-string p0, "Trigger GAME MODE Policy"

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_4
    const/4 p0, 0x0

    .line 62
    :goto_0
    return-object p0
.end method
