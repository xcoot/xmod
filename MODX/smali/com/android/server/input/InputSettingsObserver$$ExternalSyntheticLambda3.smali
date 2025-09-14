.class public final synthetic Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/input/InputSettingsObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/InputSettingsObserver;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/input/InputSettingsObserver;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/input/InputSettingsObserver;

    .line 5
    check-cast p1, Ljava/lang/String;

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 10
    iget-object p1, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    move-result-object p1

    .line 16
    const-string/jumbo v0, "enhance_pointer_precision"

    .line 19
    const/4 v1, 0x1

    .line 20
    const/4 v2, -0x2

    .line 21
    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 24
    move-result p1

    .line 25
    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 27
    if-ne p1, v1, :cond_0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v1, 0x0

    .line 31
    :goto_0
    invoke-interface {p0, v1}, Lcom/android/server/input/NativeInputManagerService;->setUseMouseAcceleration(Z)V

    .line 34
    return-void

    .line 35
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 40
    move-result-object p1

    .line 41
    const-string/jumbo v0, "mouse_scrolling_speed"

    .line 44
    const/4 v1, 0x1

    .line 45
    const/4 v2, -0x2

    .line 46
    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 49
    move-result p1

    .line 50
    if-ge p1, v1, :cond_1

    .line 52
    const-string/jumbo v0, "wrong scroll speed : "

    .line 55
    const-string v2, "InputManager"

    .line 57
    invoke-static {p1, v0, v2}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    move v1, p1

    .line 62
    :goto_1
    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 64
    invoke-interface {p0, v1}, Lcom/android/server/input/NativeInputManagerService;->setScrollSpeed(I)V

    .line 67
    return-void

    .line 68
    :pswitch_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    const-string p1, "InputManager"

    .line 73
    const/4 v0, 0x0

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 76
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 79
    move-result-object v1

    .line 80
    const-string/jumbo v2, "primary_mouse_button_option"

    .line 83
    const/4 v3, -0x2

    .line 84
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 87
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    goto :goto_2

    .line 89
    :catch_0
    const-string v1, "Exception primary mouse button"

    .line 91
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    move v1, v0

    .line 95
    :goto_2
    if-eqz v1, :cond_2

    .line 97
    const/4 v2, 0x1

    .line 98
    if-eq v1, v2, :cond_2

    .line 100
    const-string/jumbo v2, "wrong primary mouse button : "

    .line 103
    invoke-static {v1, v2, p1}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 106
    goto :goto_3

    .line 107
    :cond_2
    move v0, v1

    .line 108
    :goto_3
    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 110
    invoke-interface {p0, v0}, Lcom/android/server/input/NativeInputManagerService;->setPrimaryMouseButtonLocation(I)V

    .line 113
    return-void

    .line 114
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 119
    move-result-object p1

    .line 120
    const-string/jumbo v0, "new_dex"

    .line 123
    const/4 v1, 0x0

    .line 124
    const/4 v2, -0x2

    .line 125
    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 128
    move-result p1

    .line 129
    const-string v0, "NEW_DEX state: "

    .line 131
    const-string v2, "InputManager"

    .line 133
    invoke-static {p1, v0, v2}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 136
    const/16 v0, 0x100

    .line 138
    const/4 v2, 0x1

    .line 139
    if-ne p1, v2, :cond_3

    .line 141
    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 143
    const/16 p1, 0x65

    .line 145
    invoke-interface {p0, v2, p1, v0}, Lcom/android/server/input/NativeInputManagerService;->setDexMode(ZII)V

    .line 148
    goto :goto_4

    .line 149
    :cond_3
    const/4 v3, 0x2

    .line 150
    if-ne p1, v3, :cond_4

    .line 152
    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 154
    const/16 p1, 0x66

    .line 156
    invoke-interface {p0, v2, p1, v0}, Lcom/android/server/input/NativeInputManagerService;->setDexMode(ZII)V

    .line 159
    goto :goto_4

    .line 160
    :cond_4
    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 162
    invoke-interface {p0, v1, v1, v1}, Lcom/android/server/input/NativeInputManagerService;->setDexMode(ZII)V

    .line 165
    :goto_4
    return-void

    .line 166
    :pswitch_3
    iget-object p1, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 171
    move-result-object p1

    .line 172
    const-string/jumbo v0, "cover_test_mode"

    .line 175
    const/4 v1, -0x2

    .line 176
    const/4 v2, -0x1

    .line 177
    invoke-static {p1, v0, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 180
    move-result p1

    .line 181
    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 183
    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setCoverTestModeType(I)V

    .line 186
    return-void

    .line 187
    :pswitch_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    const/4 p1, 0x0

    .line 191
    :try_start_1
    iget-object v0, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 193
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 196
    move-result-object v0

    .line 197
    const-string/jumbo v1, "pen_hovering"

    .line 200
    const/4 v2, -0x2

    .line 201
    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 204
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 205
    const/4 v1, 0x1

    .line 206
    if-ne v0, v1, :cond_5

    .line 208
    goto :goto_5

    .line 209
    :catch_1
    move-exception v0

    .line 210
    const-string v1, "Exception getPenHoveringSetting \'false\'"

    .line 212
    const-string v2, "InputManager"

    .line 214
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    :cond_5
    move v1, p1

    .line 218
    :goto_5
    iget-object v0, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 220
    invoke-interface {v0, v1}, Lcom/android/server/input/NativeInputManagerService;->setPenHovering(Z)V

    .line 223
    iget-object v0, p0, Lcom/android/server/input/InputSettingsObserver;->mContext:Landroid/content/Context;

    .line 225
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 228
    move-result-object v0

    .line 229
    const-string/jumbo v2, "com.sec.feature.spen_usp"

    .line 232
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->semGetSystemFeatureLevel(Ljava/lang/String;)I

    .line 235
    move-result v0

    .line 236
    const/4 v2, 0x2

    .line 237
    if-ne v0, v2, :cond_7

    .line 239
    if-nez v1, :cond_6

    .line 241
    iget-object p0, p0, Lcom/android/server/input/InputSettingsObserver;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 243
    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->setShowHovering(Z)V

    .line 246
    goto :goto_6

    .line 247
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/input/InputSettingsObserver;->updateShowHoveringFromSettings()V

    .line 250
    :cond_7
    :goto_6
    return-void

    .line 251
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/server/input/InputSettingsObserver;->updateShowHoveringFromSettings()V

    .line 254
    return-void

    .line 255
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
