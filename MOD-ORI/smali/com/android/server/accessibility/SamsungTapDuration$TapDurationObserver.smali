.class public final Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mContentResolver:Landroid/content/ContentResolver;

.field public final mRemoveAnimationSettingUri:Landroid/net/Uri;

.field public final mTapDurationSettingUri:Landroid/net/Uri;

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/accessibility/SamsungTapDuration;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/SamsungTapDuration;ILcom/android/server/accessibility/SamsungTapDuration$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    .line 2
    .line 3
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo p1, "tap_duration_threshold"

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mTapDurationSettingUri:Landroid/net/Uri;

    .line 14
    .line 15
    const-string/jumbo p1, "remove_animations"

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mRemoveAnimationSettingUri:Landroid/net/Uri;

    .line 23
    .line 24
    iput p2, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mUserId:I

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mTapDurationSettingUri:Landroid/net/Uri;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    .line 10
    .line 11
    iget-object p2, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 12
    .line 13
    const v0, 0x3dcccccd    # 0.1f

    .line 14
    .line 15
    .line 16
    iget v1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mUserId:I

    .line 17
    .line 18
    const-string/jumbo v2, "tap_duration_threshold"

    .line 19
    .line 20
    .line 21
    invoke-static {p2, v2, v0, v1}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    iput p2, p1, Lcom/android/server/accessibility/SamsungTapDuration;->mTapDurationThreshold:F

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    .line 28
    .line 29
    iget p1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mTapDurationThreshold:F

    .line 30
    .line 31
    const/high16 p2, 0x447a0000    # 1000.0f

    .line 32
    .line 33
    mul-float/2addr p1, p2

    .line 34
    float-to-long p1, p1

    .line 35
    iput-wide p1, p0, Lcom/android/server/accessibility/SamsungTapDuration;->mTapDurationThresholdMilli:J

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mRemoveAnimationSettingUri:Landroid/net/Uri;

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_3

    .line 45
    .line 46
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 47
    .line 48
    const-string/jumbo p2, "remove_animations"

    .line 49
    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    const/4 p2, 0x1

    .line 57
    if-ne p1, p2, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    move p2, v0

    .line 61
    :goto_0
    const/4 p1, 0x4

    .line 62
    if-ge v0, p1, :cond_3

    .line 63
    .line 64
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTapDuration$TapDurationObserver;->this$0:Lcom/android/server/accessibility/SamsungTapDuration;

    .line 65
    .line 66
    iget-object p1, p1, Lcom/android/server/accessibility/SamsungTapDuration;->mDurationProgress:[Lcom/android/server/accessibility/SamsungTapDurationProgressUI;

    .line 67
    .line 68
    aget-object p1, p1, v0

    .line 69
    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/SamsungTapDurationProgressUI;->setRemoveAnimationEnabled(Z)V

    .line 73
    .line 74
    .line 75
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    :goto_1
    return-void
.end method
