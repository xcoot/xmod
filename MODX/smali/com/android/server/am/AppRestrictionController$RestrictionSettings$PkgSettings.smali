.class public final Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCurrentRestrictionLevel:I

.field public mLastNotificationShownTime:[J

.field public mLastRestrictionLevel:I

.field public mLevelChangeTime:J

.field public mNotificationId:[I

.field public final mPackageName:Ljava/lang/String;

.field public mReason:I

.field public final mUid:I

.field public final synthetic this$1:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppRestrictionController$RestrictionSettings;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->this$1:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    .line 6
    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mPackageName:Ljava/lang/String;

    .line 8
    iput p3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mUid:I

    .line 10
    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastRestrictionLevel:I

    .line 13
    iput p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mCurrentRestrictionLevel:I

    .line 15
    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 3
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mPackageName:Ljava/lang/String;

    .line 5
    iget v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mUid:I

    .line 7
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->this$1:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    .line 9
    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;-><init>(Lcom/android/server/am/AppRestrictionController$RestrictionSettings;Ljava/lang/String;I)V

    .line 12
    iget v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mCurrentRestrictionLevel:I

    .line 14
    iput v1, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mCurrentRestrictionLevel:I

    .line 16
    iget v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastRestrictionLevel:I

    .line 18
    iput v1, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastRestrictionLevel:I

    .line 20
    iget-wide v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLevelChangeTime:J

    .line 22
    iput-wide v1, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLevelChangeTime:J

    .line 24
    iget v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mReason:I

    .line 26
    iput v1, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mReason:I

    .line 28
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastNotificationShownTime:[J

    .line 30
    if-eqz v1, :cond_0

    .line 32
    array-length v2, v1

    .line 33
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 36
    move-result-object v1

    .line 37
    iput-object v1, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastNotificationShownTime:[J

    .line 39
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mNotificationId:[I

    .line 41
    if-eqz p0, :cond_1

    .line 43
    array-length v1, p0

    .line 44
    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 47
    move-result-object p0

    .line 48
    iput-object p0, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mNotificationId:[I

    .line 50
    :cond_1
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 8
    instance-of v2, p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 10
    if-nez v2, :cond_1

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    check-cast p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 15
    iget v2, p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mUid:I

    .line 17
    iget v3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mUid:I

    .line 19
    if-ne v2, v3, :cond_2

    .line 21
    iget v2, p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mCurrentRestrictionLevel:I

    .line 23
    iget v3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mCurrentRestrictionLevel:I

    .line 25
    if-ne v2, v3, :cond_2

    .line 27
    iget v2, p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastRestrictionLevel:I

    .line 29
    iget v3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastRestrictionLevel:I

    .line 31
    if-ne v2, v3, :cond_2

    .line 33
    iget-wide v2, p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLevelChangeTime:J

    .line 35
    iget-wide v4, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLevelChangeTime:J

    .line 37
    cmp-long v2, v2, v4

    .line 39
    if-nez v2, :cond_2

    .line 41
    iget v2, p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mReason:I

    .line 43
    iget v3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mReason:I

    .line 45
    if-ne v2, v3, :cond_2

    .line 47
    iget-object v2, p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mPackageName:Ljava/lang/String;

    .line 49
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mPackageName:Ljava/lang/String;

    .line 51
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_2

    .line 57
    iget-object v2, p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastNotificationShownTime:[J

    .line 59
    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastNotificationShownTime:[J

    .line 61
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_2

    .line 67
    iget-object p1, p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mNotificationId:[I

    .line 69
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mNotificationId:[I

    .line 71
    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([I[I)Z

    .line 74
    move-result p0

    .line 75
    if-eqz p0, :cond_2

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    move v0, v1

    .line 79
    :goto_0
    return v0

    .line 80
    :cond_3
    :goto_1
    return v1
.end method

.method public setLastNotificationTime(IJZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastNotificationShownTime:[J

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x2

    .line 6
    new-array v0, v0, [J

    .line 8
    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastNotificationShownTime:[J

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastNotificationShownTime:[J

    .line 12
    aput-wide p2, v0, p1

    .line 14
    if-eqz p4, :cond_1

    .line 16
    iget-object p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->this$1:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    .line 18
    iget-object p2, p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    .line 20
    iget-object p2, p2, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettingsXmlLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 25
    move-result p2

    .line 26
    if-eqz p2, :cond_1

    .line 28
    iget p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mUid:I

    .line 30
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 33
    move-result p0

    .line 34
    invoke-virtual {p1, p0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->schedulePersistToXml(I)V

    .line 37
    :cond_1
    return-void
.end method

.method public setLevelChangeTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLevelChangeTime:J

    .line 3
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x80

    .line 3
    const-string v1, "RestrictionLevel{"

    .line 5
    invoke-static {v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 12
    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const/16 v1, 0x3a

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mPackageName:Ljava/lang/String;

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    const/16 v1, 0x2f

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    iget v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mUid:I

    .line 37
    invoke-static {v1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string/jumbo v1, "} "

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mCurrentRestrictionLevel:I

    .line 52
    invoke-static {v1}, Landroid/app/ActivityManager;->restrictionLevelToName(I)Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const/16 v1, 0x28

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    iget p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mReason:I

    .line 66
    invoke-static {p0}, Landroid/app/usage/UsageStatsManager;->reasonToString(I)Ljava/lang/String;

    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const/16 p0, 0x29

    .line 75
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 82
    return-object p0
.end method

.method public final update(III)I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mCurrentRestrictionLevel:I

    .line 3
    if-eq p1, v0, :cond_0

    .line 5
    iput v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastRestrictionLevel:I

    .line 7
    iput p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mCurrentRestrictionLevel:I

    .line 9
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->this$1:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    .line 11
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    .line 13
    iget-object v1, v1, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    move-result-wide v1

    .line 22
    iput-wide v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLevelChangeTime:J

    .line 24
    const v1, 0xff00

    .line 27
    and-int/2addr p2, v1

    .line 28
    and-int/lit16 p3, p3, 0xff

    .line 30
    or-int/2addr p2, p3

    .line 31
    iput p2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mReason:I

    .line 33
    iget-object p2, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    .line 35
    iget-object p2, p2, Lcom/android/server/am/AppRestrictionController;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    .line 37
    iget p3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mUid:I

    .line 39
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mPackageName:Ljava/lang/String;

    .line 41
    const/4 v1, 0x1

    .line 42
    invoke-virtual {p2, v1, p3, p1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 49
    :cond_0
    iget p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastRestrictionLevel:I

    .line 51
    return p0
.end method
