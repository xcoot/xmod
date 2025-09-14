.class public final Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver$1;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$1:Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;Lcom/android/server/smartclip/SpenGestureManagerService$5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver$1;->this$1:Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;

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
    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string/jumbo v0, "pen_digitizer_enabled"

    .line 8
    .line 9
    .line 10
    const/4 v1, -0x2

    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-static {p1, v0, v2, v1}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver$1;->this$1:Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 19
    .line 20
    if-ne p1, v2, :cond_0

    .line 21
    .line 22
    move p1, v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string/jumbo v1, "onSpenDigitizerOnOffChanged : "

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v1, "SpenGestureManagerService"

    .line 44
    .line 45
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->writeDigitizerOnOffCommand(Z)V

    .line 49
    .line 50
    .line 51
    if-ne p1, v2, :cond_1

    .line 52
    .line 53
    new-instance v0, Landroid/os/Bundle;

    .line 54
    .line 55
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v1, "action"

    .line 59
    .line 60
    const-string v2, "digitizer_enable_changed"

    .line 61
    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string v1, "digitizer_enable"

    .line 66
    .line 67
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->startAirCommandSpenTriggerService(Landroid/os/Bundle;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    return-void
.end method
