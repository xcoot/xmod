.class public final Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;
.super Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAccelerometerRotationUri:Ljava/lang/String;

.field public mContext:Landroid/content/Context;

.field public mUserId:I


# virtual methods
.method public final performCornerAction(I)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mContext:Landroid/content/Context;

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->makeToastForCoverScreen(Landroid/content/Context;Ljava/lang/String;)Z

    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 10
    return-void

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mContext:Landroid/content/Context;

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 16
    move-result-object p1

    .line 17
    const-string/jumbo v0, "com.sec.feature.folder_type"

    .line 20
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 23
    move-result p1

    .line 24
    const/4 v0, 0x1

    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz p1, :cond_1

    .line 28
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mContext:Landroid/content/Context;

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 33
    move-result-object p1

    .line 34
    const-string/jumbo v2, "com.sec.feature.dual_lcd"

    .line 37
    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_1

    .line 43
    move p1, v0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move p1, v1

    .line 46
    :goto_0
    iget-object v2, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mContext:Landroid/content/Context;

    .line 48
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 55
    move-result-object v2

    .line 56
    iget v2, v2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 58
    const/4 v3, 0x2

    .line 59
    if-ne v2, v3, :cond_2

    .line 61
    move v2, v0

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    move v2, v1

    .line 64
    :goto_1
    if-eqz p1, :cond_3

    .line 66
    if-nez v2, :cond_3

    .line 68
    const-string p1, "accelerometer_rotation_second"

    .line 70
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mAccelerometerRotationUri:Ljava/lang/String;

    .line 72
    goto :goto_2

    .line 73
    :cond_3
    const-string p1, "accelerometer_rotation"

    .line 75
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mAccelerometerRotationUri:Ljava/lang/String;

    .line 77
    :goto_2
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mContext:Landroid/content/Context;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 82
    move-result-object p1

    .line 83
    iget-object v2, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mAccelerometerRotationUri:Ljava/lang/String;

    .line 85
    iget v3, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mUserId:I

    .line 87
    invoke-static {p1, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 90
    move-result p1

    .line 91
    if-ne p1, v0, :cond_6

    .line 93
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mContext:Landroid/content/Context;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 102
    move-result-object v2

    .line 103
    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    .line 105
    and-int/lit8 v2, v2, 0x30

    .line 107
    const/16 v3, 0x20

    .line 109
    if-ne v2, v3, :cond_4

    .line 111
    move v1, v0

    .line 112
    :cond_4
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .line 114
    if-eqz v1, :cond_5

    .line 116
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 118
    const v3, 0x1030128

    .line 121
    invoke-direct {v1, p1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 124
    move-object p1, v1

    .line 125
    :cond_5
    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 128
    const p1, 0x1040f3e

    .line 131
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 134
    move-result-object p1

    .line 135
    const v1, 0x10402a6

    .line 138
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 141
    move-result-object p1

    .line 142
    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation$2;

    .line 144
    invoke-direct {v1, p0}, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation$2;-><init>(Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;)V

    .line 147
    const p0, 0x1040f48

    .line 150
    invoke-virtual {p1, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 153
    move-result-object p0

    .line 154
    new-instance p1, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation$1;

    .line 156
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 159
    const/high16 v1, 0x1040000

    .line 161
    invoke-virtual {p0, v1, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 164
    move-result-object p0

    .line 165
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 168
    move-result-object p0

    .line 169
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 172
    move-result-object p0

    .line 173
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 176
    move-result-object p1

    .line 177
    const/16 v1, 0x8e8

    .line 179
    invoke-virtual {p1, v1}, Landroid/view/Window;->setType(I)V

    .line 182
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 185
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 188
    return-void

    .line 189
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->rotateScreen()V

    .line 192
    return-void
.end method

.method public final rotateScreen()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "user_rotation"

    .line 10
    const/4 v2, 0x0

    .line 11
    iget v3, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mUserId:I

    .line 13
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 16
    move-result v0

    .line 17
    const/4 v4, 0x1

    .line 18
    if-nez v0, :cond_0

    .line 20
    move v2, v4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    if-eq v0, v4, :cond_2

    .line 24
    const/4 v4, 0x3

    .line 25
    if-ne v0, v4, :cond_1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move v2, v0

    .line 29
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mContext:Landroid/content/Context;

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 38
    return-void
.end method
