.class public final Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final HIGH_BRIGHTNESS_MODE_PMS_ENTER_URI:Landroid/net/Uri;

.field public final SCREEN_BRIGHTNESS_MODE_URI:Landroid/net/Uri;

.field public final SCREEN_EXTRA_BRIGHTNESS_URI:Landroid/net/Uri;

.field public final SCREEN_MODE_AUTOMATIC_SETTING_URI:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    .line 10
    .line 11
    const-string p1, "high_brightness_mode_pms_enter"

    .line 12
    .line 13
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->HIGH_BRIGHTNESS_MODE_PMS_ENTER_URI:Landroid/net/Uri;

    .line 18
    .line 19
    const-string/jumbo p1, "screen_mode_automatic_setting"

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->SCREEN_MODE_AUTOMATIC_SETTING_URI:Landroid/net/Uri;

    .line 27
    .line 28
    const-string/jumbo p1, "screen_extra_brightness"

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->SCREEN_EXTRA_BRIGHTNESS_URI:Landroid/net/Uri;

    .line 36
    .line 37
    const-string/jumbo p1, "screen_brightness_mode"

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->SCREEN_BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    .line 2
    .line 3
    sget v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->$r8$clinit:I

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->setting_is_changed()V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->SCREEN_EXTRA_BRIGHTNESS_URI:Landroid/net/Uri;

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 v0, 0x0

    .line 15
    const-string v1, "SemDisplaySolutionManagerService"

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->SCREEN_BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v2, "SEC_FLOATING_FEATURE_LCD_SUPPORT_EXTRA_BRIGHTNESS"

    .line 32
    .line 33
    invoke-virtual {p1, v2, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v2, "mAutoBrightnessModeEnabled : "

    .line 42
    .line 43
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    .line 47
    .line 48
    iget-boolean v2, v2, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoBrightnessModeEnabled:Z

    .line 49
    .line 50
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v2, " , mExtraBrightnessModeEnabled : "

    .line 54
    .line 55
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    .line 59
    .line 60
    iget-boolean v2, v2, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightnessModeEnabled:Z

    .line 61
    .line 62
    invoke-static {v1, p1, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    .line 66
    .line 67
    iget-boolean v2, p1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAutoBrightnessModeEnabled:Z

    .line 68
    .line 69
    if-nez v2, :cond_1

    .line 70
    .line 71
    iget-boolean v2, p1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mExtraBrightnessModeEnabled:Z

    .line 72
    .line 73
    if-eqz v2, :cond_1

    .line 74
    .line 75
    const-string v2, "extra_brightness_on"

    .line 76
    .line 77
    invoke-virtual {p1, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    const-string v2, "extra_brightness_off"

    .line 82
    .line 83
    invoke-virtual {p1, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->setMultipleScreenBrightness(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->SCREEN_MODE_AUTOMATIC_SETTING_URI:Landroid/net/Uri;

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-nez p1, :cond_3

    .line 93
    .line 94
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->HIGH_BRIGHTNESS_MODE_PMS_ENTER_URI:Landroid/net/Uri;

    .line 95
    .line 96
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_7

    .line 101
    .line 102
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string p2, "mHighBrightnessModeEnabled : "

    .line 105
    .line 106
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    .line 110
    .line 111
    iget-boolean p2, p2, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighBrightnessModeEnabled:Z

    .line 112
    .line 113
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string p2, " , mAdaptiveScreenModeEnabled : "

    .line 117
    .line 118
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget-object p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    .line 122
    .line 123
    iget-boolean p2, p2, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    .line 124
    .line 125
    invoke-static {v1, p1, p2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 126
    .line 127
    .line 128
    iget-object p1, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    .line 129
    .line 130
    iget-boolean p2, p1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mHighBrightnessModeEnabled:Z

    .line 131
    .line 132
    if-nez p2, :cond_5

    .line 133
    .line 134
    iget-boolean p2, p1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->mAdaptiveScreenModeEnabled:Z

    .line 135
    .line 136
    if-nez p2, :cond_5

    .line 137
    .line 138
    iget-object p1, p1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_NODE:Ljava/lang/String;

    .line 139
    .line 140
    const/4 p2, 0x1

    .line 141
    invoke-static {p2, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->sysfsWrite(ILjava/lang/String;)Z

    .line 142
    .line 143
    .line 144
    new-instance p1, Ljava/io/File;

    .line 145
    .line 146
    iget-object v0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    .line 147
    .line 148
    iget-object v0, v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_SUB_NODE:Ljava/lang/String;

    .line 149
    .line 150
    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    if-eqz p1, :cond_4

    .line 158
    .line 159
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    .line 160
    .line 161
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_SUB_NODE:Ljava/lang/String;

    .line 162
    .line 163
    invoke-static {p2, p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->sysfsWrite(ILjava/lang/String;)Z

    .line 164
    .line 165
    .line 166
    :cond_4
    const-string p0, "IRC Mode : flat_gamma_mode"

    .line 167
    .line 168
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_5
    iget-object p1, p1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_NODE:Ljava/lang/String;

    .line 173
    .line 174
    invoke-static {v0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->sysfsWrite(ILjava/lang/String;)Z

    .line 175
    .line 176
    .line 177
    new-instance p1, Ljava/io/File;

    .line 178
    .line 179
    iget-object p2, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    .line 180
    .line 181
    iget-object p2, p2, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_SUB_NODE:Ljava/lang/String;

    .line 182
    .line 183
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    if-eqz p1, :cond_6

    .line 191
    .line 192
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService$SettingsObserver;->this$0:Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;

    .line 193
    .line 194
    iget-object p0, p0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->IRC_MODE_SUB_NODE:Ljava/lang/String;

    .line 195
    .line 196
    invoke-static {v0, p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManagerService;->sysfsWrite(ILjava/lang/String;)Z

    .line 197
    .line 198
    .line 199
    :cond_6
    const-string p0, "IRC Mode : moderato_mode"

    .line 200
    .line 201
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    :cond_7
    :goto_1
    return-void
.end method
