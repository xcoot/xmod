.class public final Lcom/android/server/accessibility/autoaction/actiontype/BrightnessAction;
.super Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mType:Ljava/lang/String;

.field public mUserId:I


# virtual methods
.method public final performCornerAction(I)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isFoldedLargeCoverScreen()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/BrightnessAction;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string/jumbo v1, "screen_brightness"

    .line 12
    .line 13
    .line 14
    const-string/jumbo v2, "sub_screen_brightness"

    .line 15
    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    move-object v3, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v3, v1

    .line 22
    :goto_0
    const/4 v4, 0x0

    .line 23
    iget v5, p0, Lcom/android/server/accessibility/autoaction/actiontype/BrightnessAction;->mUserId:I

    .line 24
    .line 25
    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v3, p0, Lcom/android/server/accessibility/autoaction/actiontype/BrightnessAction;->mType:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    const-string/jumbo v6, "reduce_brightness"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-nez v6, :cond_3

    .line 42
    .line 43
    const-string/jumbo v4, "increase_brightness"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    add-int/lit8 v0, v0, 0x11

    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/BrightnessAction;->mContext:Landroid/content/Context;

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    move-object v1, v2

    .line 63
    :cond_1
    const/16 p1, 0xff

    .line 64
    .line 65
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    invoke-static {p0, v1, p1, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 74
    .line 75
    const-string p1, "Wrong Brightness Action Type"

    .line 76
    .line 77
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p0

    .line 81
    :cond_3
    add-int/lit8 v0, v0, -0x11

    .line 82
    .line 83
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/BrightnessAction;->mContext:Landroid/content/Context;

    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    if-eqz p1, :cond_4

    .line 90
    .line 91
    move-object v1, v2

    .line 92
    :cond_4
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    invoke-static {p0, v1, p1, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 97
    .line 98
    .line 99
    :goto_1
    return-void
.end method
