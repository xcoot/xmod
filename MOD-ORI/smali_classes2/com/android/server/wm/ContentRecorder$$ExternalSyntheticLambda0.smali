.class public final synthetic Lcom/android/server/wm/ContentRecorder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ContentRecorder;

.field public final synthetic f$1:Z

.field public final synthetic f$2:[Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ContentRecorder;Z[Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/ContentRecorder$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/ContentRecorder;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/wm/ContentRecorder$$ExternalSyntheticLambda0;->f$1:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/ContentRecorder$$ExternalSyntheticLambda0;->f$2:[Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ContentRecorder$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/ContentRecorder;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/server/wm/ContentRecorder$$ExternalSyntheticLambda0;->f$1:Z

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/ContentRecorder$$ExternalSyntheticLambda0;->f$2:[Z

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_4

    .line 17
    .line 18
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 19
    .line 20
    const-string v2, "ContentRecorder"

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x3

    .line 24
    const/4 v5, 0x2

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getColorMode()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eq v0, v5, :cond_0

    .line 32
    .line 33
    if-ne v0, v4, :cond_2

    .line 34
    .line 35
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v7, "isHdrColorMode w="

    .line 38
    .line 39
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v7, " colorMode="

    .line 50
    .line 51
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    move v0, v3

    .line 66
    :cond_2
    :goto_0
    if-eq v0, v5, :cond_3

    .line 67
    .line 68
    if-ne v0, v4, :cond_4

    .line 69
    .line 70
    :cond_3
    :try_start_0
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 71
    .line 72
    invoke-interface {p1, v1}, Landroid/view/IWindow;->invalidateForScreenShot(Z)V

    .line 73
    .line 74
    .line 75
    const/4 p1, 0x1

    .line 76
    aput-boolean p1, p0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :catch_0
    move-exception p0

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v0, "Exception "

    .line 83
    .line 84
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-static {p0, p1, v2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_4
    :goto_1
    return-void
.end method
