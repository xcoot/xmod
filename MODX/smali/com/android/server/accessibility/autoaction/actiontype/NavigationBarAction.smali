.class public final Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction;
.super Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mType:Ljava/lang/String;

.field public mUserId:I


# virtual methods
.method public final performCornerAction(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction;->mType:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, -0x1

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 12
    move-result v4

    .line 13
    sparse-switch v4, :sswitch_data_0

    .line 16
    goto :goto_0

    .line 17
    :sswitch_0
    const-string/jumbo v4, "recents"

    .line 20
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v3, 0x3

    .line 28
    goto :goto_0

    .line 29
    :sswitch_1
    const-string/jumbo v4, "home"

    .line 32
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v3, 0x2

    .line 40
    goto :goto_0

    .line 41
    :sswitch_2
    const-string v4, "back"

    .line 43
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_2

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    move v3, v1

    .line 51
    goto :goto_0

    .line 52
    :sswitch_3
    const-string v4, "accessibility_button"

    .line 54
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_3

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    move v3, v2

    .line 62
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 65
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 67
    const-string p1, "Wrong NavigationBar Action Type"

    .line 69
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 72
    throw p0

    .line 73
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction;->mContext:Landroid/content/Context;

    .line 75
    const/4 v3, 0x0

    .line 76
    invoke-static {v0, v3}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->makeToastForCoverScreen(Landroid/content/Context;Ljava/lang/String;)Z

    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_4

    .line 82
    return-void

    .line 83
    :cond_4
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 85
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 91
    if-eqz v0, :cond_8

    .line 93
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction;->mContext:Landroid/content/Context;

    .line 95
    invoke-static {p0, p1}, Landroid/app/StatusBarManager;->getNaturalBarTypeByDisplayId(Landroid/content/Context;I)I

    .line 98
    move-result p0

    .line 99
    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 101
    iget-object p1, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 103
    iget-object p1, p1, Lcom/android/server/statusbar/StatusBarManagerService;->mBarLock:Ljava/lang/Object;

    .line 105
    monitor-enter p1

    .line 106
    :try_start_0
    iget-object v3, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 108
    iget-object v3, v3, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    .line 110
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    move-result-object v4

    .line 114
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    if-eqz v3, :cond_6

    .line 120
    :try_start_1
    iget-object v3, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 122
    iget-object v3, v3, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    .line 124
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    move-result-object v4

    .line 128
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    move-result-object v3

    .line 132
    check-cast v3, Lcom/android/internal/statusbar/IStatusBar;

    .line 134
    invoke-interface {v3}, Lcom/android/internal/statusbar/IStatusBar;->toggleRecentApps()V

    .line 137
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 139
    iget-object v0, v0, Lcom/android/server/statusbar/StatusBarManagerService;->mBarMap:Landroid/util/ArrayMap;

    .line 141
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 144
    move-result-object v0

    .line 145
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 148
    move-result-object v0

    .line 149
    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 152
    move-result v3

    .line 153
    if-eqz v3, :cond_6

    .line 155
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 158
    move-result-object v3

    .line 159
    check-cast v3, Ljava/util/Map$Entry;

    .line 161
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 164
    move-result-object v4

    .line 165
    check-cast v4, Ljava/lang/Integer;

    .line 167
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 170
    move-result v4

    .line 171
    if-eq v4, p0, :cond_5

    .line 173
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 176
    move-result-object v3

    .line 177
    check-cast v3, Lcom/android/internal/statusbar/IStatusBar;

    .line 179
    if-eqz v3, :cond_5

    .line 181
    invoke-interface {v3, v2, v1}, Lcom/android/internal/statusbar/IStatusBar;->hideRecentApps(ZZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    goto :goto_1

    .line 185
    :catchall_0
    move-exception p0

    .line 186
    goto :goto_2

    .line 187
    :catch_0
    :cond_6
    :try_start_2
    monitor-exit p1

    .line 188
    goto :goto_3

    .line 189
    :goto_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    throw p0

    .line 191
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    .line 193
    const-string v0, "SYSTEM_ACTION_HOME"

    .line 195
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction;->mContext:Landroid/content/Context;

    .line 200
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 203
    goto :goto_3

    .line 204
    :pswitch_2
    new-instance p0, Ljava/lang/Thread;

    .line 206
    new-instance p1, Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction$1;

    .line 208
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 211
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 214
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 217
    goto :goto_3

    .line 218
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction;->mContext:Landroid/content/Context;

    .line 220
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 223
    move-result-object v0

    .line 224
    const-string v3, "accessibility_button_mode"

    .line 226
    iget v4, p0, Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction;->mUserId:I

    .line 228
    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 231
    move-result v0

    .line 232
    if-eq v0, v1, :cond_7

    .line 234
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction;->mContext:Landroid/content/Context;

    .line 236
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    .line 239
    move-result-object p0

    .line 240
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->notifyAccessibilityButtonClicked(I)V

    .line 243
    goto :goto_3

    .line 244
    :cond_7
    const-string/jumbo p1, "com.android.systemui.accessibility.floatingmenu.SHOW"

    .line 247
    const-string/jumbo v0, "com.android.systemui"

    .line 250
    invoke-static {p1, v0}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    move-result-object p1

    .line 254
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction;->mContext:Landroid/content/Context;

    .line 256
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 259
    :cond_8
    :goto_3
    return-void

    .line 260
    nop

    .line 261
    :sswitch_data_0
    .sparse-switch
        -0x74e910bd -> :sswitch_3
        0x2e04e7 -> :sswitch_2
        0x30f4df -> :sswitch_1
        0x40828578 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
