.class public final Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mContentResolver:Landroid/content/ContentResolver;

.field public final mTapDurationSettingsUri:Landroid/net/Uri;

.field public final mTouchBlockingSettingsUri:Landroid/net/Uri;

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/accessibility/SamsungTouchBlocker;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/SamsungTouchBlocker;ILcom/android/server/accessibility/SamsungTouchBlocker$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->this$0:Lcom/android/server/accessibility/SamsungTouchBlocker;

    .line 2
    .line 3
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo p1, "touch_blocking_period"

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mTouchBlockingSettingsUri:Landroid/net/Uri;

    .line 14
    .line 15
    const-string/jumbo p1, "tap_duration_enabled"

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mTapDurationSettingsUri:Landroid/net/Uri;

    .line 23
    .line 24
    iput p2, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mUserId:I

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mTouchBlockingSettingsUri:Landroid/net/Uri;

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
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->this$0:Lcom/android/server/accessibility/SamsungTouchBlocker;

    .line 10
    .line 11
    iget-object p2, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 12
    .line 13
    const-string/jumbo v0, "touch_blocking_period"

    .line 14
    .line 15
    .line 16
    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mUserId:I

    .line 17
    .line 18
    const v2, 0x3dcccccd    # 0.1f

    .line 19
    .line 20
    .line 21
    invoke-static {p2, v0, v2, v1}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    iput p2, p1, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTouchBlockingPeriod:F

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->this$0:Lcom/android/server/accessibility/SamsungTouchBlocker;

    .line 28
    .line 29
    iget p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTouchBlockingPeriod:F

    .line 30
    .line 31
    const/high16 p2, 0x447a0000    # 1000.0f

    .line 32
    .line 33
    mul-float/2addr p1, p2

    .line 34
    float-to-long p1, p1

    .line 35
    iput-wide p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTouchBlockingPeriodMilli:J

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mTapDurationSettingsUri:Landroid/net/Uri;

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->this$0:Lcom/android/server/accessibility/SamsungTouchBlocker;

    .line 47
    .line 48
    iget-object p2, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 49
    .line 50
    const-string/jumbo v0, "tap_duration_enabled"

    .line 51
    .line 52
    .line 53
    iget p0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mUserId:I

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    invoke-static {p2, v0, v1, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    const/4 p2, 0x1

    .line 61
    if-ne p0, p2, :cond_1

    .line 62
    .line 63
    move v1, p2

    .line 64
    :cond_1
    iput-boolean v1, p1, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapDurationEnabled:Z

    .line 65
    .line 66
    :cond_2
    :goto_0
    return-void
.end method
