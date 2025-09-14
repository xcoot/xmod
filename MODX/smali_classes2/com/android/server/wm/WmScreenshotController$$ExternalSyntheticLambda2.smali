.class public final synthetic Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WmScreenshotController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:[Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WmScreenshotController;Z[Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/WmScreenshotController;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda2;->f$1:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda2;->f$2:[Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/WmScreenshotController;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda2;->f$1:Z

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/WmScreenshotController$$ExternalSyntheticLambda2;->f$2:[Z

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v0, "invalidateForScreenShot, requested for w="

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_4

    .line 19
    .line 20
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    const-string v4, "WindowManager"

    .line 24
    .line 25
    const/4 v5, 0x3

    .line 26
    const/4 v6, 0x2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getColorMode()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eq v2, v6, :cond_0

    .line 34
    .line 35
    if-ne v2, v5, :cond_2

    .line 36
    .line 37
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v8, "isHdrColorMode w="

    .line 40
    .line 41
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v8, " colorMode="

    .line 52
    .line 53
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    move v2, v3

    .line 68
    :cond_2
    :goto_0
    if-eq v2, v6, :cond_3

    .line 69
    .line 70
    if-ne v2, v5, :cond_4

    .line 71
    .line 72
    :cond_3
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 88
    .line 89
    invoke-interface {p1, v1}, Landroid/view/IWindow;->invalidateForScreenShot(Z)V

    .line 90
    .line 91
    .line 92
    const/4 p1, 0x1

    .line 93
    aput-boolean p1, p0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :catch_0
    move-exception p0

    .line 97
    new-instance p1, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string v0, "Exception "

    .line 100
    .line 101
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-static {p0, p1, v4}, Lcom/android/server/audio/AudioServiceExt$ResetSettingsReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :cond_4
    :goto_1
    return-void
.end method
