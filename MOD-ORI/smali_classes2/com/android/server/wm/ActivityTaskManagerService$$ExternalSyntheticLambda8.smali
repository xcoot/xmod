.class public final synthetic Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final synthetic f$1:Landroid/content/res/Configuration;

.field public final synthetic f$2:Landroid/content/res/Configuration;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda8;->f$1:Landroid/content/res/Configuration;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda8;->f$2:Landroid/content/res/Configuration;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda8;->f$1:Landroid/content/res/Configuration;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda8;->f$2:Landroid/content/res/Configuration;

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/wm/DisplayContent;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_UI_MODE_ANIMATION:Z

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/content/res/Configuration;->isNightModeActive()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {p0}, Landroid/content/res/Configuration;->isNightModeActive()Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eq v1, p0, :cond_0

    .line 29
    .line 30
    const v3, 0x10a00ba

    .line 31
    .line 32
    .line 33
    const p0, 0x10a00bb

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move p0, v3

    .line 38
    :goto_0
    if-nez v3, :cond_1

    .line 39
    .line 40
    if-eqz p0, :cond_2

    .line 41
    .line 42
    :cond_1
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 43
    .line 44
    const/4 v1, -0x1

    .line 45
    invoke-virtual {v0, p0, v3, v1, p1}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplay(IIILcom/android/server/wm/DisplayContent;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    return-void
.end method
