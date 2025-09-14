.class public final Lcom/android/server/am/pds/PDSTrigger;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public firstTrigger:J

.field public isInDuration:Z

.field public isMpsmActive:Z

.field public isUdsActive:Z

.field public mAlarm:Landroid/app/AlarmManager;

.field public mContext:Landroid/content/Context;

.field public mIntentReceiver:Lcom/android/server/am/pds/PDSTrigger$1;

.field public mLastTimePolicyTrigger:J

.field public mMARsFirstTriggerPolicyAlarmIntent:Landroid/app/PendingIntent;

.field public mPolicyIntentReceiver:Lcom/android/server/am/pds/PDSTrigger$1;

.field public mPolicyMPSMIntentReceiver:Lcom/android/server/am/pds/PDSTrigger$1;

.field public mPolicyUDSIntentReceiver:Lcom/android/server/am/pds/PDSTrigger$1;

.field public mReceiverRegistered:Z

.field public user:Landroid/os/UserHandle;


# direct methods
.method public static -$$Nest$mactionToString(Lcom/android/server/am/pds/PDSTrigger;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "com.samsung.android.server.am.ACTION_UI_TRIGGER_POLICY"

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
    const-string p0, "User Trigger Policy"

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string/jumbo p0, "com.android.server.am.MARS_TRIGGER_UDS_POLICY"

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
    const-string p0, "Trigger UDS(Ultra Data Saving) Policy"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const-string/jumbo p0, "com.android.server.am.MARS_TRIGGER_MPSM_POLICY"

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
    const-string p0, "Trigger MPSM Policy"

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const/4 p0, 0x0

    .line 38
    :goto_0
    return-object p0
.end method
