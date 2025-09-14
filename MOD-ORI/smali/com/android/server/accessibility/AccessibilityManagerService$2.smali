.class public final Lcom/android/server/accessibility/AccessibilityManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public synthetic constructor <init>(ILcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x4

    .line 4
    const/4 v3, -0x1

    .line 5
    const/4 v4, 0x1

    .line 6
    const/4 v5, 0x0

    .line 7
    iget v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->$r8$classId:I

    .line 8
    .line 9
    packed-switch v6, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const-string v6, "android.intent.action.BOOT_COMPLETED"

    .line 17
    .line 18
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v6

    .line 22
    if-eqz v6, :cond_2

    .line 23
    .line 24
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eq p2, v0, :cond_0

    .line 33
    .line 34
    goto/16 :goto_2

    .line 35
    .line 36
    :cond_0
    sget-boolean p2, Landroid/view/accessibility/A11yRune;->A11Y_COLOR_BOOL_SUPPORT_COLOR_FILTER_MDNIE_HW:Z

    .line 37
    .line 38
    if-eqz p2, :cond_1

    .line 39
    .line 40
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 41
    .line 42
    invoke-static {p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mseMdnieHWColorLensState(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$menableColorLens(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 52
    .line 53
    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$menableColorRelumino(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_2

    .line 57
    .line 58
    :cond_2
    const-string v6, "android.intent.action.USER_SWITCHED"

    .line 59
    .line 60
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    if-eqz p2, :cond_6

    .line 65
    .line 66
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 67
    .line 68
    iget-object p2, p2, Lcom/android/server/accessibility/AccessibilityManagerService;->mGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;

    .line 69
    .line 70
    invoke-virtual {p2, p1}, Lcom/android/server/accessibility/GestureWakeup;->checkSettingCondition(Landroid/content/Context;)Z

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    if-eqz p2, :cond_3

    .line 75
    .line 76
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 77
    .line 78
    iget-object p2, p2, Lcom/android/server/accessibility/AccessibilityManagerService;->mGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;

    .line 79
    .line 80
    invoke-virtual {p2}, Lcom/android/server/accessibility/GestureWakeup;->StopGestureWakeup()V

    .line 81
    .line 82
    .line 83
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 84
    .line 85
    iget-object p2, p2, Lcom/android/server/accessibility/AccessibilityManagerService;->mGesturewakeup:Lcom/android/server/accessibility/GestureWakeup;

    .line 86
    .line 87
    invoke-virtual {p2}, Lcom/android/server/accessibility/GestureWakeup;->StartGestureWakeup()Z

    .line 88
    .line 89
    .line 90
    :cond_3
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 91
    .line 92
    iget-object p2, p2, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 93
    .line 94
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    const-string/jumbo v6, "user_setup_complete"

    .line 99
    .line 100
    .line 101
    const/4 v7, -0x2

    .line 102
    invoke-static {p2, v6, v5, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    if-nez p2, :cond_4

    .line 107
    .line 108
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 109
    .line 110
    new-instance v6, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

    .line 111
    .line 112
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 113
    .line 114
    invoke-direct {v6, v4, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;-><init>(ILcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 115
    .line 116
    .line 117
    iput-object v6, p2, Lcom/android/server/accessibility/AccessibilityManagerService;->mColorInversionStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

    .line 118
    .line 119
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 120
    .line 121
    iget-object p2, p2, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 122
    .line 123
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 128
    .line 129
    iget-object v6, v4, Lcom/android/server/accessibility/AccessibilityManagerService;->mColorInversionStateUri:Landroid/net/Uri;

    .line 130
    .line 131
    iget-object v4, v4, Lcom/android/server/accessibility/AccessibilityManagerService;->mColorInversionStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

    .line 132
    .line 133
    invoke-virtual {p2, v6, v5, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 134
    .line 135
    .line 136
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 137
    .line 138
    new-instance v4, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

    .line 139
    .line 140
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 141
    .line 142
    invoke-direct {v4, v2, v6}, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;-><init>(ILcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 143
    .line 144
    .line 145
    iput-object v4, p2, Lcom/android/server/accessibility/AccessibilityManagerService;->mSetupCompleteStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

    .line 146
    .line 147
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 148
    .line 149
    iget-object p2, p2, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 150
    .line 151
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 156
    .line 157
    iget-object v4, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mSetupCompleteUri:Landroid/net/Uri;

    .line 158
    .line 159
    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mSetupCompleteStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

    .line 160
    .line 161
    invoke-virtual {p2, v4, v5, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 162
    .line 163
    .line 164
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 165
    .line 166
    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

    .line 167
    .line 168
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 169
    .line 170
    invoke-direct {v2, v1, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;-><init>(ILcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 171
    .line 172
    .line 173
    iput-object v2, p2, Lcom/android/server/accessibility/AccessibilityManagerService;->mDaltonizerEnabledStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

    .line 174
    .line 175
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 176
    .line 177
    iget-object p2, p2, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 178
    .line 179
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 180
    .line 181
    .line 182
    move-result-object p2

    .line 183
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 184
    .line 185
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mDisplayDaltonizerEnabledUri:Landroid/net/Uri;

    .line 186
    .line 187
    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mDaltonizerEnabledStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

    .line 188
    .line 189
    invoke-virtual {p2, v2, v5, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 190
    .line 191
    .line 192
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 193
    .line 194
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

    .line 195
    .line 196
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 197
    .line 198
    invoke-direct {v1, v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;-><init>(ILcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 199
    .line 200
    .line 201
    iput-object v1, p2, Lcom/android/server/accessibility/AccessibilityManagerService;->mDaltonizerStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

    .line 202
    .line 203
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 204
    .line 205
    iget-object p2, p2, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 206
    .line 207
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 208
    .line 209
    .line 210
    move-result-object p2

    .line 211
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 212
    .line 213
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mDisplayDaltonizerUri:Landroid/net/Uri;

    .line 214
    .line 215
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mDaltonizerStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

    .line 216
    .line 217
    invoke-virtual {p2, v1, v5, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 218
    .line 219
    .line 220
    invoke-static {}, Lcom/android/server/accessibility/Flags;->enableColorCorrectionSaturation()Z

    .line 221
    .line 222
    .line 223
    move-result p2

    .line 224
    if-eqz p2, :cond_4

    .line 225
    .line 226
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 227
    .line 228
    iget-object p2, p2, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 229
    .line 230
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 231
    .line 232
    .line 233
    move-result-object p2

    .line 234
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 235
    .line 236
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mDisplayDaltonizerSaturationLevelUri:Landroid/net/Uri;

    .line 237
    .line 238
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mDaltonizerStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

    .line 239
    .line 240
    invoke-virtual {p2, v1, v5, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 241
    .line 242
    .line 243
    :cond_4
    sget-boolean p2, Landroid/view/accessibility/A11yRune;->A11Y_COLOR_BOOL_SUPPORT_COLOR_FILTER_MDNIE_HW:Z

    .line 244
    .line 245
    if-eqz p2, :cond_5

    .line 246
    .line 247
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 248
    .line 249
    invoke-static {p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mseMdnieHWColorLensState(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 250
    .line 251
    .line 252
    goto :goto_1

    .line 253
    :cond_5
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 254
    .line 255
    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$menableColorLens(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 256
    .line 257
    .line 258
    :goto_1
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 259
    .line 260
    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$menableColorRelumino(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 261
    .line 262
    .line 263
    :cond_6
    :goto_2
    return-void

    .line 264
    :pswitch_0
    const-string p1, "android.companion.virtual.extra.VIRTUAL_DEVICE_ID"

    .line 265
    .line 266
    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 267
    .line 268
    .line 269
    move-result p1

    .line 270
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 271
    .line 272
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 273
    .line 274
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->clearConnections(I)V

    .line 275
    .line 276
    .line 277
    return-void

    .line 278
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 279
    .line 280
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->setNonA11yToolNotificationToMatchSafetyCenter()V

    .line 281
    .line 282
    .line 283
    return-void

    .line 284
    :pswitch_2
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 285
    .line 286
    iget-object v6, v6, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 287
    .line 288
    const-wide/32 v7, 0x10000

    .line 289
    .line 290
    .line 291
    invoke-virtual {v6, v7, v8}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 292
    .line 293
    .line 294
    move-result v6

    .line 295
    if-eqz v6, :cond_7

    .line 296
    .line 297
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 298
    .line 299
    iget-object v6, v6, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 300
    .line 301
    const-string v9, "AccessibilityManagerService.BR.onReceive"

    .line 302
    .line 303
    new-instance v10, Ljava/lang/StringBuilder;

    .line 304
    .line 305
    const-string/jumbo v11, "context="

    .line 306
    .line 307
    .line 308
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    const-string p1, ";intent="

    .line 315
    .line 316
    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    invoke-virtual {v6, v9, v7, v8, p1}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 327
    .line 328
    .line 329
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    const-string v6, "android.intent.action.USER_SWITCHED"

    .line 334
    .line 335
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 336
    .line 337
    .line 338
    move-result v6

    .line 339
    if-eqz v6, :cond_8

    .line 340
    .line 341
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 342
    .line 343
    iput-boolean v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurtainModeIsRunning:Z

    .line 344
    .line 345
    const-string p1, "android.intent.extra.user_handle"

    .line 346
    .line 347
    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 348
    .line 349
    .line 350
    move-result p1

    .line 351
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->switchUser(I)V

    .line 352
    .line 353
    .line 354
    goto/16 :goto_7

    .line 355
    .line 356
    :cond_8
    const-string v6, "android.intent.action.USER_UNLOCKED"

    .line 357
    .line 358
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    move-result v6

    .line 362
    if-eqz v6, :cond_a

    .line 363
    .line 364
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 365
    .line 366
    const-string p1, "android.intent.extra.user_handle"

    .line 367
    .line 368
    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 369
    .line 370
    .line 371
    move-result p1

    .line 372
    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 373
    .line 374
    monitor-enter v6

    .line 375
    :try_start_0
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 376
    .line 377
    invoke-virtual {p2, p1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveProfileParentLocked(I)I

    .line 378
    .line 379
    .line 380
    move-result p1

    .line 381
    iget p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 382
    .line 383
    if-ne p1, p2, :cond_9

    .line 384
    .line 385
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 386
    .line 387
    .line 388
    move-result-object p1

    .line 389
    invoke-virtual {p0, p1, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 390
    .line 391
    .line 392
    goto :goto_3

    .line 393
    :catchall_0
    move-exception p0

    .line 394
    goto :goto_4

    .line 395
    :cond_9
    :goto_3
    monitor-exit v6

    .line 396
    goto/16 :goto_7

    .line 397
    .line 398
    :goto_4
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    throw p0

    .line 400
    :cond_a
    const-string v6, "android.intent.action.USER_REMOVED"

    .line 401
    .line 402
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    move-result v6

    .line 406
    if-eqz v6, :cond_b

    .line 407
    .line 408
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 409
    .line 410
    const-string p1, "android.intent.extra.user_handle"

    .line 411
    .line 412
    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 413
    .line 414
    .line 415
    move-result p1

    .line 416
    invoke-static {p1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mremoveUser(ILcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 417
    .line 418
    .line 419
    goto/16 :goto_7

    .line 420
    .line 421
    :cond_b
    const-string v6, "android.os.action.SETTING_RESTORED"

    .line 422
    .line 423
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    move-result p1

    .line 427
    if-eqz p1, :cond_14

    .line 428
    .line 429
    const-string/jumbo p1, "setting_name"

    .line 430
    .line 431
    .line 432
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object p1

    .line 436
    if-nez p1, :cond_c

    .line 437
    .line 438
    goto/16 :goto_7

    .line 439
    .line 440
    :cond_c
    const-string/jumbo v6, "previous_value"

    .line 441
    .line 442
    .line 443
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v6

    .line 447
    const-string/jumbo v7, "new_value"

    .line 448
    .line 449
    .line 450
    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v7

    .line 454
    const-string/jumbo v8, "restored_from_sdk_int"

    .line 455
    .line 456
    .line 457
    invoke-virtual {p2, v8, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 458
    .line 459
    .line 460
    move-result p2

    .line 461
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 462
    .line 463
    .line 464
    move-result v8

    .line 465
    sparse-switch v8, :sswitch_data_0

    .line 466
    .line 467
    .line 468
    :goto_5
    move v0, v3

    .line 469
    goto :goto_6

    .line 470
    :sswitch_0
    const-string v0, "accessibility_display_magnification_navbar_enabled"

    .line 471
    .line 472
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 473
    .line 474
    .line 475
    move-result p1

    .line 476
    if-nez p1, :cond_d

    .line 477
    .line 478
    goto :goto_5

    .line 479
    :cond_d
    move v0, v2

    .line 480
    goto :goto_6

    .line 481
    :sswitch_1
    const-string v1, "accessibility_button_targets"

    .line 482
    .line 483
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    move-result p1

    .line 487
    if-nez p1, :cond_11

    .line 488
    .line 489
    goto :goto_5

    .line 490
    :sswitch_2
    const-string/jumbo v0, "enabled_accessibility_services"

    .line 491
    .line 492
    .line 493
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 494
    .line 495
    .line 496
    move-result p1

    .line 497
    if-nez p1, :cond_e

    .line 498
    .line 499
    goto :goto_5

    .line 500
    :cond_e
    move v0, v1

    .line 501
    goto :goto_6

    .line 502
    :sswitch_3
    const-string v0, "accessibility_qs_targets"

    .line 503
    .line 504
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 505
    .line 506
    .line 507
    move-result p1

    .line 508
    if-nez p1, :cond_f

    .line 509
    .line 510
    goto :goto_5

    .line 511
    :cond_f
    move v0, v4

    .line 512
    goto :goto_6

    .line 513
    :sswitch_4
    const-string v0, "accessibility_shortcut_target_service"

    .line 514
    .line 515
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 516
    .line 517
    .line 518
    move-result p1

    .line 519
    if-nez p1, :cond_10

    .line 520
    .line 521
    goto :goto_5

    .line 522
    :cond_10
    move v0, v5

    .line 523
    :cond_11
    :goto_6
    packed-switch v0, :pswitch_data_1

    .line 524
    .line 525
    .line 526
    goto :goto_7

    .line 527
    :pswitch_3
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 528
    .line 529
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 530
    .line 531
    monitor-enter p1

    .line 532
    :try_start_1
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 533
    .line 534
    invoke-static {p0, v7, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mrestoreLegacyDisplayMagnificationNavBarIfNeededLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;I)V

    .line 535
    .line 536
    .line 537
    monitor-exit p1

    .line 538
    goto :goto_7

    .line 539
    :catchall_1
    move-exception p0

    .line 540
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 541
    throw p0

    .line 542
    :pswitch_4
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 543
    .line 544
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 545
    .line 546
    monitor-enter p1

    .line 547
    :try_start_2
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 548
    .line 549
    invoke-virtual {p0, v6, v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->restoreAccessibilityButtonTargetsLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    monitor-exit p1

    .line 553
    goto :goto_7

    .line 554
    :catchall_2
    move-exception p0

    .line 555
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 556
    throw p0

    .line 557
    :pswitch_5
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 558
    .line 559
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 560
    .line 561
    monitor-enter p1

    .line 562
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 563
    .line 564
    invoke-virtual {p0, p2, v6, v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->restoreEnabledAccessibilityServicesLocked(ILjava/lang/String;Ljava/lang/String;)V

    .line 565
    .line 566
    .line 567
    monitor-exit p1

    .line 568
    goto :goto_7

    .line 569
    :catchall_3
    move-exception p0

    .line 570
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 571
    throw p0

    .line 572
    :pswitch_6
    invoke-static {}, Landroid/view/accessibility/Flags;->a11yQsShortcut()Z

    .line 573
    .line 574
    .line 575
    move-result p1

    .line 576
    if-nez p1, :cond_12

    .line 577
    .line 578
    goto :goto_7

    .line 579
    :cond_12
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 580
    .line 581
    invoke-static {p0, v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mrestoreAccessibilityQsTargets(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;)V

    .line 582
    .line 583
    .line 584
    goto :goto_7

    .line 585
    :pswitch_7
    invoke-static {}, Landroid/view/accessibility/Flags;->restoreA11yShortcutTargetService()Z

    .line 586
    .line 587
    .line 588
    move-result p1

    .line 589
    if-nez p1, :cond_13

    .line 590
    .line 591
    goto :goto_7

    .line 592
    :cond_13
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 593
    .line 594
    invoke-static {p0, v6, v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mrestoreAccessibilityShortcutTargetService(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    :cond_14
    :goto_7
    return-void

    .line 598
    nop

    .line 599
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    :sswitch_data_0
    .sparse-switch
        -0x6f8248d1 -> :sswitch_4
        -0x3977748a -> :sswitch_3
        -0x2e36ad13 -> :sswitch_2
        -0x87f9bfa -> :sswitch_1
        0x7fe8893c -> :sswitch_0
    .end sparse-switch

    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
