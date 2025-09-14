.class public final Lcom/android/server/display/mode/RefreshRateModeManager$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/mode/RefreshRateModeManager;


# direct methods
.method public constructor <init>(Lcom/android/server/display/mode/RefreshRateModeManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/mode/RefreshRateModeManager$1;->this$0:Lcom/android/server/display/mode/RefreshRateModeManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFinish(III)V
    .locals 1

    .line 1
    const/4 p2, 0x2

    .line 2
    const/4 v0, 0x1

    .line 3
    if-eq p3, v0, :cond_0

    .line 4
    .line 5
    if-eq p3, p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    if-ne p1, p2, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    const/4 v0, 0x0

    .line 12
    :goto_0
    iget-object p1, p0, Lcom/android/server/display/mode/RefreshRateModeManager$1;->this$0:Lcom/android/server/display/mode/RefreshRateModeManager;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    sget-object p1, Lcom/android/server/display/mode/RefreshRateController;->mIsDisplayPowerModeOnByDisplayType:Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ljava/lang/Boolean;

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-ne v0, p1, :cond_2

    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string p2, "DisplayStateListener#onFinish, isPowerModeOn="

    .line 41
    .line 42
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string p2, ", displayType="

    .line 49
    .line 50
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string p2, "RefreshRateModeManager"

    .line 61
    .line 62
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/android/server/display/mode/RefreshRateModeManager$1;->this$0:Lcom/android/server/display/mode/RefreshRateModeManager;

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    sget-object p1, Lcom/android/server/display/mode/RefreshRateController;->mIsDisplayPowerModeOnByDisplayType:Landroid/util/SparseArray;

    .line 75
    .line 76
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-virtual {p1, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/android/server/display/mode/RefreshRateModeManager$1;->this$0:Lcom/android/server/display/mode/RefreshRateModeManager;

    .line 84
    .line 85
    iget-object p1, p1, Lcom/android/server/display/mode/RefreshRateModeManager;->mHandler:Landroid/os/Handler;

    .line 86
    .line 87
    new-instance p2, Lcom/android/server/display/mode/RefreshRateModeManager$1$$ExternalSyntheticLambda0;

    .line 88
    .line 89
    invoke-direct {p2, p0, v0}, Lcom/android/server/display/mode/RefreshRateModeManager$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/mode/RefreshRateModeManager$1;Z)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
    .line 94
    .line 95
    return-void
.end method
