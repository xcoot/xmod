.class public final Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

.field public final mAutoActionDelaySettingUri:Landroid/net/Uri;

.field public final mAutoActionTypeSettingUri:Landroid/net/Uri;

.field public mContentResolver:Landroid/content/ContentResolver;

.field public final mCornerActionEnabledSettingUri:Landroid/net/Uri;

.field public final mPauseAutoClickWithSettingUri:Landroid/net/Uri;

.field public final mUserId:I


# direct methods
.method public constructor <init>(ILandroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    const-string p2, "accessibility_auto_action_type"

    .line 6
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 9
    move-result-object p2

    .line 10
    iput-object p2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mAutoActionTypeSettingUri:Landroid/net/Uri;

    .line 12
    const-string p2, "accessibility_auto_action_delay"

    .line 14
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 17
    move-result-object p2

    .line 18
    iput-object p2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mAutoActionDelaySettingUri:Landroid/net/Uri;

    .line 20
    const-string p2, "accessibility_corner_action_enabled"

    .line 22
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 25
    move-result-object p2

    .line 26
    iput-object p2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mCornerActionEnabledSettingUri:Landroid/net/Uri;

    .line 28
    const-string p2, "accessibility_pause_auto_click_with"

    .line 30
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 33
    move-result-object p2

    .line 34
    iput-object p2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mPauseAutoClickWithSettingUri:Landroid/net/Uri;

    .line 36
    iput p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mUserId:I

    .line 38
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mAutoActionTypeSettingUri:Landroid/net/Uri;

    .line 3
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 12
    const-string p2, "accessibility_auto_action_type"

    .line 14
    iget v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mUserId:I

    .line 16
    invoke-static {p1, p2, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 19
    move-result p1

    .line 20
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    .line 22
    iput p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mType:I

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mAutoActionDelaySettingUri:Landroid/net/Uri;

    .line 27
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 33
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 35
    const/16 p2, 0x258

    .line 37
    iget v0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mUserId:I

    .line 39
    const-string v1, "accessibility_auto_action_delay"

    .line 41
    invoke-static {p1, v1, p2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 44
    move-result p1

    .line 45
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    .line 47
    iput p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mDelay:I

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mCornerActionEnabledSettingUri:Landroid/net/Uri;

    .line 52
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_4

    .line 58
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 60
    const-string p2, "accessibility_corner_action_enabled"

    .line 62
    iget v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mUserId:I

    .line 64
    invoke-static {p1, p2, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_2

    .line 70
    const/4 v0, 0x1

    .line 71
    :cond_2
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    .line 73
    if-eqz v0, :cond_3

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    new-instance p1, Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 80
    iget-object p2, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->this$0:Lcom/android/server/accessibility/autoaction/AutoActionController;

    .line 82
    iget-object v0, p2, Lcom/android/server/accessibility/autoaction/AutoActionController;->mContext:Landroid/content/Context;

    .line 84
    iget p2, p2, Lcom/android/server/accessibility/autoaction/AutoActionController;->mUserId:I

    .line 86
    invoke-direct {p1, v0, p2}, Lcom/android/server/accessibility/autoaction/CornerActionController;-><init>(Landroid/content/Context;I)V

    .line 89
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 91
    goto :goto_0

    .line 92
    :cond_3
    const/4 p1, 0x0

    .line 93
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->mCornerActionController:Lcom/android/server/accessibility/autoaction/CornerActionController;

    .line 95
    goto :goto_0

    .line 96
    :cond_4
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mPauseAutoClickWithSettingUri:Landroid/net/Uri;

    .line 98
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 101
    move-result p1

    .line 102
    if-eqz p1, :cond_5

    .line 104
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 106
    const-string p2, "accessibility_pause_auto_click_with"

    .line 108
    iget v1, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mUserId:I

    .line 110
    invoke-static {p1, p2, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 113
    move-result p1

    .line 114
    const/4 p2, -0x1

    .line 115
    if-ne p1, p2, :cond_5

    .line 117
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/AutoActionController$AutoActionObserver;->mActionScheduler:Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;

    .line 119
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/autoaction/AutoActionController$ActionScheduler;->updateIsPauseAutoClick(Z)V

    .line 122
    :cond_5
    :goto_0
    return-void
.end method
