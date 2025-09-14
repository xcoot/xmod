.class public final Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(ILcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->$r8$classId:I

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 6
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 8
    new-instance p1, Landroid/os/Handler;

    .line 10
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 13
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 16
    return-void

    .line 17
    :pswitch_0
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 19
    new-instance p1, Landroid/os/Handler;

    .line 21
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 24
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 27
    return-void

    .line 28
    :pswitch_1
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 30
    new-instance p1, Landroid/os/Handler;

    .line 32
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 35
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 38
    return-void

    .line 39
    :pswitch_2
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 41
    new-instance p1, Landroid/os/Handler;

    .line 43
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 46
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 49
    return-void

    .line 50
    :pswitch_3
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 52
    new-instance p1, Landroid/os/Handler;

    .line 54
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 57
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 60
    return-void

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 9
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 11
    iget v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 13
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 19
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 21
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    iget p1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 28
    const-string/jumbo v2, "user_setup_complete"

    .line 31
    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_0

    .line 37
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 39
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 44
    move-result-object p1

    .line 45
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 47
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mColorInversionStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 52
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 54
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 59
    move-result-object p1

    .line 60
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 62
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mDaltonizerEnabledStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

    .line 64
    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 67
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 69
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 74
    move-result-object p1

    .line 75
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 77
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mDaltonizerStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

    .line 79
    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 82
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 84
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 89
    move-result-object p1

    .line 90
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 92
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSetupCompleteStateContentObserver:Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;

    .line 94
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 97
    :cond_0
    return-void

    .line 98
    :pswitch_0
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 101
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 103
    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mapplyDaltonizerSettings(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 106
    return-void

    .line 107
    :pswitch_1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 110
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 112
    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mapplyDaltonizerSettings(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 115
    return-void

    .line 116
    :pswitch_2
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 119
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 121
    iget v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 123
    invoke-virtual {p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 126
    move-result-object p1

    .line 127
    const-class v0, Lcom/android/server/display/color/DisplayTransformManager;

    .line 129
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Lcom/android/server/display/color/DisplayTransformManager;

    .line 135
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 137
    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 139
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 142
    move-result-object v1

    .line 143
    const-string/jumbo v2, "user_setup_complete"

    .line 146
    const/4 v3, 0x0

    .line 147
    iget p1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 149
    invoke-static {v1, v2, v3, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 152
    move-result v1

    .line 153
    const/4 v2, 0x1

    .line 154
    if-eqz v1, :cond_1

    .line 156
    move v1, v2

    .line 157
    goto :goto_0

    .line 158
    :cond_1
    move v1, v3

    .line 159
    :goto_0
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 161
    iget-object v4, v4, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 163
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 166
    move-result-object v4

    .line 167
    const-string v5, "accessibility_display_inversion_enabled"

    .line 169
    invoke-static {v4, v5, v3, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 172
    move-result v4

    .line 173
    if-eqz v4, :cond_2

    .line 175
    goto :goto_1

    .line 176
    :cond_2
    move v2, v3

    .line 177
    :goto_1
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 179
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 184
    move-result-object p0

    .line 185
    const-string v4, "aod_show_state"

    .line 187
    invoke-static {p0, v4, v3, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 190
    move-result p0

    .line 191
    if-eqz p0, :cond_3

    .line 193
    if-eqz v2, :cond_3

    .line 195
    goto :goto_2

    .line 196
    :cond_3
    move v3, v2

    .line 197
    :goto_2
    if-nez v1, :cond_5

    .line 199
    if-eqz v3, :cond_4

    .line 201
    sget-object p0, Lcom/android/server/accessibility/AccessibilityManagerService;->MATRIX_INVERT_COLOR:[F

    .line 203
    goto :goto_3

    .line 204
    :cond_4
    const/4 p0, 0x0

    .line 205
    :goto_3
    const/16 p1, 0x12c

    .line 207
    invoke-virtual {v0, p1, p0}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 210
    :cond_5
    return-void

    .line 211
    :pswitch_3
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 214
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AODStateContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 216
    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mapplyColorinversion(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 219
    return-void

    .line 220
    nop

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
