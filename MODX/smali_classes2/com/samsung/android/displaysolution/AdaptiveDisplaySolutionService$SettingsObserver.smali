.class public final Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final BRIGHTNESS_MODE_URI:Landroid/net/Uri;

.field public final BRIGHTNESS_URI:Landroid/net/Uri;

.field public final resolver:Landroid/content/ContentResolver;

.field public final synthetic this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ADSControlHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    .line 13
    .line 14
    const-string/jumbo p1, "screen_brightness"

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    .line 22
    .line 23
    const-string/jumbo p1, "screen_brightness_mode"

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, -0x2

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 12
    .line 13
    iget-object v2, p1, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string/jumbo v3, "screen_brightness"

    .line 20
    .line 21
    .line 22
    invoke-static {v2, v3, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    iget-boolean v3, p1, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mACLwithBrightness:Z

    .line 27
    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->updateAdaptiveControlStatewithBrightness(IZ)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 34
    .line 35
    iget p1, p1, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->AUTO_CURRENT_LIMIT_VERSION:I

    .line 36
    .line 37
    const-string/jumbo v2, "screen_brightness_mode"

    .line 38
    .line 39
    .line 40
    const/4 v3, 0x3

    .line 41
    if-ne p1, v3, :cond_2

    .line 42
    .line 43
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    .line 44
    .line 45
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    .line 52
    .line 53
    invoke-static {p1, v2, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_1

    .line 58
    .line 59
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 60
    .line 61
    iget v4, p1, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mCurrentAutoCurrentLimitValue:I

    .line 62
    .line 63
    if-eqz v4, :cond_2

    .line 64
    .line 65
    invoke-virtual {p1, v3}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->updateAdaptiveControlStateInt(I)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 70
    .line 71
    iget v4, p1, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mCurrentAutoCurrentLimitValue:I

    .line 72
    .line 73
    if-eqz v4, :cond_2

    .line 74
    .line 75
    const/4 v4, 0x1

    .line 76
    invoke-virtual {p1, v4}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->updateAdaptiveControlStateInt(I)V

    .line 77
    .line 78
    .line 79
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 80
    .line 81
    iget p1, p1, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->AUTO_CURRENT_LIMIT_VERSION:I

    .line 82
    .line 83
    const/4 v4, 0x4

    .line 84
    if-ne p1, v4, :cond_3

    .line 85
    .line 86
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_3

    .line 93
    .line 94
    iget-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->resolver:Landroid/content/ContentResolver;

    .line 95
    .line 96
    invoke-static {p1, v2, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-nez p1, :cond_3

    .line 101
    .line 102
    iget-object p0, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    .line 103
    .line 104
    iget p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->mCurrentAutoCurrentLimitValue:I

    .line 105
    .line 106
    if-eqz p1, :cond_3

    .line 107
    .line 108
    invoke-virtual {p0, v3}, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;->updateAdaptiveControlStateInt(I)V

    .line 109
    .line 110
    .line 111
    :cond_3
    return-void
.end method
