.class public final Lcom/android/server/display/OverlayDisplayAdapter$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/display/OverlayDisplayAdapter$1;->this$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$1;->this$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$1;->this$0:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .line 18
    .line 19
    iget-object v2, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/OverlayDisplayWindow;

    .line 20
    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    monitor-exit v0

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    iget-object v2, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mModes:Ljava/util/List;

    .line 28
    .line 29
    iget v1, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mActiveMode:I

    .line 30
    .line 31
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayAdapter$1;->this$0:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/OverlayDisplayWindow;

    .line 42
    .line 43
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    iget v0, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mWidth:I

    .line 45
    .line 46
    iget v2, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mHeight:I

    .line 47
    .line 48
    iget v1, v1, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mDensityDpi:I

    .line 49
    .line 50
    const/4 v3, 0x1

    .line 51
    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/android/server/display/OverlayDisplayWindow;->resize(IIIZ)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void

    .line 55
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    throw p0

    .line 57
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$1;->this$0:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    .line 62
    .line 63
    iget-object v0, v0, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 64
    .line 65
    monitor-enter v0

    .line 66
    :try_start_2
    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayAdapter$1;->this$0:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .line 69
    .line 70
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/OverlayDisplayWindow;

    .line 71
    .line 72
    const/4 v2, 0x0

    .line 73
    iput-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/OverlayDisplayWindow;

    .line 74
    .line 75
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 76
    if-eqz v1, :cond_1

    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/android/server/display/OverlayDisplayWindow;->dismiss()V

    .line 79
    .line 80
    .line 81
    :cond_1
    return-void

    .line 82
    :catchall_1
    move-exception p0

    .line 83
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 84
    throw p0

    .line 85
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$1;->this$0:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .line 88
    .line 89
    iget-object v1, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mModes:Ljava/util/List;

    .line 90
    .line 91
    iget v0, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mActiveMode:I

    .line 92
    .line 93
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;

    .line 98
    .line 99
    new-instance v10, Lcom/android/server/display/OverlayDisplayWindow;

    .line 100
    .line 101
    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$1;->this$0:Ljava/lang/Object;

    .line 102
    .line 103
    move-object v9, v1

    .line 104
    check-cast v9, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .line 105
    .line 106
    iget-object v1, v9, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    .line 107
    .line 108
    iget-object v2, v1, Lcom/android/server/display/DisplayAdapter;->mContext:Landroid/content/Context;

    .line 109
    .line 110
    iget-object v3, v9, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;

    .line 111
    .line 112
    iget v4, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mWidth:I

    .line 113
    .line 114
    iget v5, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mHeight:I

    .line 115
    .line 116
    iget v6, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mDensityDpi:I

    .line 117
    .line 118
    iget v7, v9, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mGravity:I

    .line 119
    .line 120
    iget-object v0, v9, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mFlags:Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;

    .line 121
    .line 122
    iget-boolean v8, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mSecure:Z

    .line 123
    .line 124
    move-object v1, v10

    .line 125
    invoke-direct/range {v1 .. v9}, Lcom/android/server/display/OverlayDisplayWindow;-><init>(Landroid/content/Context;Ljava/lang/String;IIIIZLcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)V

    .line 126
    .line 127
    .line 128
    iget-boolean v0, v10, Lcom/android/server/display/OverlayDisplayWindow;->mWindowVisible:Z

    .line 129
    .line 130
    if-nez v0, :cond_3

    .line 131
    .line 132
    iget-object v0, v10, Lcom/android/server/display/OverlayDisplayWindow;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 133
    .line 134
    iget-object v1, v10, Lcom/android/server/display/OverlayDisplayWindow;->mDisplayListener:Lcom/android/server/display/OverlayDisplayWindow$1;

    .line 135
    .line 136
    const/4 v2, 0x0

    .line 137
    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v10}, Lcom/android/server/display/OverlayDisplayWindow;->updateDefaultDisplayInfo()Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-nez v0, :cond_2

    .line 145
    .line 146
    iget-object v0, v10, Lcom/android/server/display/OverlayDisplayWindow;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 147
    .line 148
    iget-object v1, v10, Lcom/android/server/display/OverlayDisplayWindow;->mDisplayListener:Lcom/android/server/display/OverlayDisplayWindow$1;

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_2
    const/4 v0, 0x0

    .line 155
    iput v0, v10, Lcom/android/server/display/OverlayDisplayWindow;->mLiveTranslationX:F

    .line 156
    .line 157
    iput v0, v10, Lcom/android/server/display/OverlayDisplayWindow;->mLiveTranslationY:F

    .line 158
    .line 159
    const/high16 v0, 0x3f800000    # 1.0f

    .line 160
    .line 161
    iput v0, v10, Lcom/android/server/display/OverlayDisplayWindow;->mLiveScale:F

    .line 162
    .line 163
    invoke-virtual {v10}, Lcom/android/server/display/OverlayDisplayWindow;->updateWindowParams()V

    .line 164
    .line 165
    .line 166
    iget-object v0, v10, Lcom/android/server/display/OverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 167
    .line 168
    iget-object v1, v10, Lcom/android/server/display/OverlayDisplayWindow;->mWindowContent:Landroid/view/View;

    .line 169
    .line 170
    iget-object v2, v10, Lcom/android/server/display/OverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 171
    .line 172
    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    .line 174
    .line 175
    const/4 v0, 0x1

    .line 176
    iput-boolean v0, v10, Lcom/android/server/display/OverlayDisplayWindow;->mWindowVisible:Z

    .line 177
    .line 178
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$1;->this$0:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .line 181
    .line 182
    iget-object v0, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    .line 183
    .line 184
    iget-object v0, v0, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 185
    .line 186
    monitor-enter v0

    .line 187
    :try_start_4
    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayAdapter$1;->this$0:Ljava/lang/Object;

    .line 188
    .line 189
    check-cast p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    .line 190
    .line 191
    iput-object v10, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/OverlayDisplayWindow;

    .line 192
    .line 193
    monitor-exit v0

    .line 194
    return-void

    .line 195
    :catchall_2
    move-exception p0

    .line 196
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 197
    throw p0

    .line 198
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$1;->this$0:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast v0, Lcom/android/server/display/OverlayDisplayAdapter;

    .line 201
    .line 202
    iget-object v0, v0, Lcom/android/server/display/DisplayAdapter;->mContext:Landroid/content/Context;

    .line 203
    .line 204
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    const-string/jumbo v1, "overlay_display_devices"

    .line 209
    .line 210
    .line 211
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    new-instance v2, Lcom/android/server/display/OverlayDisplayAdapter$1$1;

    .line 216
    .line 217
    iget-object v3, p0, Lcom/android/server/display/OverlayDisplayAdapter$1;->this$0:Ljava/lang/Object;

    .line 218
    .line 219
    check-cast v3, Lcom/android/server/display/OverlayDisplayAdapter;

    .line 220
    .line 221
    iget-object v3, v3, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    .line 222
    .line 223
    invoke-direct {v2, p0, v3}, Lcom/android/server/display/OverlayDisplayAdapter$1$1;-><init>(Lcom/android/server/display/OverlayDisplayAdapter$1;Landroid/os/Handler;)V

    .line 224
    .line 225
    .line 226
    const/4 v3, 0x1

    .line 227
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 228
    .line 229
    .line 230
    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayAdapter$1;->this$0:Ljava/lang/Object;

    .line 231
    .line 232
    check-cast p0, Lcom/android/server/display/OverlayDisplayAdapter;

    .line 233
    .line 234
    iget-object v0, p0, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 235
    .line 236
    monitor-enter v0

    .line 237
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayAdapter;->updateOverlayDisplayDevicesLocked()V

    .line 238
    .line 239
    .line 240
    monitor-exit v0

    .line 241
    return-void

    .line 242
    :catchall_3
    move-exception p0

    .line 243
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 244
    throw p0

    .line 245
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
