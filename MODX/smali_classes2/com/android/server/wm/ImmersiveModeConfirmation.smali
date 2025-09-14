.class public final Lcom/android/server/wm/ImmersiveModeConfirmation;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sConfirmed:Z


# instance fields
.field public mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

.field public final mConfirm:Lcom/android/server/wm/ImmersiveModeConfirmation$1;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

.field public final mPanicThresholdMs:J

.field public mPanicTime:J

.field public mWindowContextRootDisplayAreaId:I

.field public mWindowManager:Landroid/view/WindowManager;

.field public final mWindowToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p3, Landroid/os/Binder;

    .line 5
    .line 6
    invoke-direct {p3}, Landroid/os/Binder;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mWindowToken:Landroid/os/IBinder;

    .line 10
    .line 11
    const/4 p3, -0x1

    .line 12
    iput p3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mWindowContextRootDisplayAreaId:I

    .line 13
    .line 14
    new-instance p3, Lcom/android/server/wm/ImmersiveModeConfirmation$1;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {p3, v0, p0}, Lcom/android/server/wm/ImmersiveModeConfirmation$1;-><init>(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iput-object p3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mConfirm:Lcom/android/server/wm/ImmersiveModeConfirmation$1;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p3}, Landroid/view/Display;->getDisplayId()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v0, p3}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :goto_0
    iput-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    new-instance p3, Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    .line 48
    .line 49
    invoke-direct {p3, p0, p2}, Lcom/android/server/wm/ImmersiveModeConfirmation$H;-><init>(Lcom/android/server/wm/ImmersiveModeConfirmation;Landroid/os/Looper;)V

    .line 50
    .line 51
    .line 52
    iput-object p3, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/wm/ImmersiveModeConfirmation$H;

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    const p3, 0x10e01aa

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const p2, 0x10e00b9

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    int-to-long p1, p1

    .line 76
    iput-wide p1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mPanicThresholdMs:J

    .line 77
    .line 78
    return-void
.end method

.method public static loadSetting(Landroid/content/Context;)Z
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sput-boolean v1, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v3, "immersive_mode_confirmations"

    .line 12
    .line 13
    const/4 v4, -0x2

    .line 14
    invoke-static {p0, v3, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-string p0, "confirmed"

    .line 19
    .line 20
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    sput-boolean p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v4, "Error loading confirmations, value="

    .line 31
    .line 32
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const-string v3, "ImmersiveModeConfirmation"

    .line 43
    .line 44
    invoke-static {v3, v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    :goto_0
    sget-boolean p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->sConfirmed:Z

    .line 48
    .line 49
    if-eq p0, v0, :cond_0

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    :cond_0
    return v1
.end method


# virtual methods
.method public final handleHide()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mWindowManager:Landroid/view/WindowManager;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    :try_start_0
    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v3, "Fail to hide the immersive confirmation window because of "

    .line 18
    .line 19
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "ImmersiveModeConfirmation"

    .line 30
    .line 31
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :goto_0
    iput-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mWindowManager:Landroid/view/WindowManager;

    .line 35
    .line 36
    :cond_0
    iput-object v2, p0, Lcom/android/server/wm/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/wm/ImmersiveModeConfirmation$ClingWindowView;

    .line 37
    .line 38
    :cond_1
    return-void
.end method
