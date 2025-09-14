.class public final Lcom/android/server/sepunion/cover/CoverTestModeUtils$2;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/CoverTestModeUtils;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/CoverTestModeUtils;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils$2;->this$0:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils$2;->this$0:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    .line 2
    .line 3
    sget-boolean p2, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->SHIPPED:Z

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string p2, "cover_test_mode"

    .line 12
    .line 13
    const/4 v0, -0x1

    .line 14
    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils$2;->this$0:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string/jumbo v1, "updateCoverTestMode() sCurrentTestMode = "

    .line 26
    .line 27
    .line 28
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget v1, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestMode:I

    .line 32
    .line 33
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", currentTestMode = "

    .line 37
    .line 38
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    const-string v1, "CoverManager_CoverTestModeUtils"

    .line 49
    .line 50
    invoke-static {v1, p2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    sget p2, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestMode:I

    .line 54
    .line 55
    if-ne p2, p1, :cond_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mCallback:Lcom/android/server/sepunion/cover/CoverTestModeUtils$OnCoverTestModeChanged;

    .line 59
    .line 60
    if-nez v1, :cond_1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const/4 v2, 0x0

    .line 64
    if-eq p2, v0, :cond_2

    .line 65
    .line 66
    invoke-interface {v1, p2, v2}, Lcom/android/server/sepunion/cover/CoverTestModeUtils$OnCoverTestModeChanged;->onCoverTestModeChanged(IZ)V

    .line 67
    .line 68
    .line 69
    :cond_2
    sput p1, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->sCurrentTestMode:I

    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->mTestModeChangeHandler:Lcom/android/server/sepunion/cover/CoverTestModeUtils$1;

    .line 72
    .line 73
    const-wide/16 p1, 0x1f4

    .line 74
    .line 75
    invoke-virtual {p0, v2, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 76
    .line 77
    .line 78
    :goto_0
    return-void
.end method
