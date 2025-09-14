.class public final Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;Lcom/android/server/smartclip/SpenGestureManagerService$5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 2
    .line 3
    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "air_cmd_use_minimized"

    .line 10
    .line 11
    const/4 v1, -0x2

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {p1, v0, v2, v1}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v0, "air_button_onoff"

    .line 26
    .line 27
    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const/4 v0, 0x1

    .line 32
    if-ne p1, v0, :cond_0

    .line 33
    .line 34
    move v2, v0

    .line 35
    :cond_0
    invoke-static {p0, v2}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$monFloatingIconSettingChanged(Lcom/android/server/smartclip/SpenGestureManagerService;Z)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
