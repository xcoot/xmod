.class public final Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAutoclickDelaySettingUri:Landroid/net/Uri;

.field public mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

.field public mContentResolver:Landroid/content/ContentResolver;

.field public final mUserId:I


# direct methods
.method public constructor <init>(ILandroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2
    .line 3
    .line 4
    const-string p2, "accessibility_autoclick_delay"

    .line 5
    .line 6
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    iput-object p2, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mAutoclickDelaySettingUri:Landroid/net/Uri;

    .line 11
    .line 12
    iput p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mUserId:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mAutoclickDelaySettingUri:Landroid/net/Uri;

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
    iget-object p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 10
    .line 11
    const/16 p2, 0x258

    .line 12
    .line 13
    iget v0, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mUserId:I

    .line 14
    .line 15
    const-string v1, "accessibility_autoclick_delay"

    .line 16
    .line 17
    invoke-static {p1, v1, p2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iget-object p0, p0, Lcom/android/server/accessibility/AutoclickController$ClickDelayObserver;->mClickScheduler:Lcom/android/server/accessibility/AutoclickController$ClickScheduler;

    .line 22
    .line 23
    iput p1, p0, Lcom/android/server/accessibility/AutoclickController$ClickScheduler;->mDelay:I

    .line 24
    .line 25
    :cond_0
    return-void
.end method
