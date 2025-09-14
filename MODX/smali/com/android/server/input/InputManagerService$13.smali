.class public final Lcom/android/server/input/InputManagerService$13;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$13;->this$0:Lcom/android/server/input/InputManagerService;

    .line 6
    return-void
.end method


# virtual methods
.method public final onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 8

    .line 1
    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    .line 3
    const/16 v1, 0x28

    .line 5
    const-string v2, "InputManager"

    .line 7
    const/4 v3, 0x3

    .line 8
    const/4 v4, 0x4

    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x1

    .line 11
    if-ne v0, v1, :cond_0

    .line 13
    iget v1, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    .line 15
    if-eq v1, v4, :cond_1

    .line 17
    :cond_0
    const/16 v1, 0x14

    .line 19
    if-ne v0, v1, :cond_4

    .line 21
    iget v1, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    .line 23
    if-ne v1, v6, :cond_4

    .line 25
    :cond_1
    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    .line 27
    if-ne v0, v4, :cond_2

    .line 29
    goto :goto_0

    .line 30
    :cond_2
    move v6, v5

    .line 31
    :goto_0
    const-class v0, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    .line 33
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    .line 39
    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;->getTouchpadSupportedFeatures()I

    .line 42
    move-result v0

    .line 43
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    .line 46
    move-result p1

    .line 47
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$13;->this$0:Lcom/android/server/input/InputManagerService;

    .line 49
    iget-object v1, v1, Lcom/android/server/input/InputManagerService;->mContext:Landroid/content/Context;

    .line 51
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 54
    move-result-object v1

    .line 55
    const-string/jumbo v4, "dexonpc_connection_state"

    .line 58
    const/4 v7, -0x2

    .line 59
    invoke-static {v1, v4, v5, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 62
    move-result v1

    .line 63
    if-ne v1, v3, :cond_3

    .line 65
    const/16 p1, 0x7d1

    .line 67
    :cond_3
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$13;->this$0:Lcom/android/server/input/InputManagerService;

    .line 69
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 71
    invoke-interface {p0, v6, p1, v0}, Lcom/android/server/input/NativeInputManagerService;->setDexMode(ZII)V

    .line 74
    new-instance p0, Ljava/lang/StringBuilder;

    .line 76
    const-string/jumbo v1, "set dexmode "

    .line 79
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 85
    const-string v1, " displayType "

    .line 87
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    const-string p1, " dexFeature "

    .line 95
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-static {p0, v0, v2}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 101
    goto :goto_2

    .line 102
    :cond_4
    const/16 v1, 0x32

    .line 104
    if-ne v0, v1, :cond_7

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    .line 108
    const-string v1, "STATE_CONFIG_CHANGE_FINISHED = "

    .line 110
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    iget v1, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    .line 115
    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 118
    iget p1, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    .line 120
    if-ne p1, v3, :cond_5

    .line 122
    move v0, v6

    .line 123
    goto :goto_1

    .line 124
    :cond_5
    move v0, v5

    .line 125
    :goto_1
    if-ne p1, v4, :cond_6

    .line 127
    move v5, v6

    .line 128
    :cond_6
    or-int p1, v0, v5

    .line 130
    invoke-static {p1}, Landroid/view/PointerIcon;->setDexMode(Z)V

    .line 133
    invoke-static {}, Landroid/view/PointerIcon;->clearSystemIcons()V

    .line 136
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$13;->this$0:Lcom/android/server/input/InputManagerService;

    .line 138
    iget-object p0, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 140
    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->reloadPointerIcons()V

    .line 143
    :cond_7
    :goto_2
    return-void
.end method
