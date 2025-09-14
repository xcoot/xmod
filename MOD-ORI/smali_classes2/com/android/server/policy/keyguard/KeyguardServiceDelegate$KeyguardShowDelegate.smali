.class public final Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;
.super Lcom/android/internal/policy/IKeyguardDrawnCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDrawnListener:Lcom/android/server/policy/PhoneWindowManager$1;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardDrawnCallback$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;->mDrawnListener:Lcom/android/server/policy/PhoneWindowManager$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDrawn()V
    .locals 2

    .line 1
    const-string v0, "KeyguardServiceDelegate"

    .line 2
    .line 3
    const-string v1, "!@BOOT: **** SHOWN CALLED ****"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;->mDrawnListener:Lcom/android/server/policy/PhoneWindowManager$1;

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string v0, "WindowManager"

    .line 17
    .line 18
    const-string v1, "mKeyguardDelegate.ShowListener.onDrawn."

    .line 19
    .line 20
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$1;->this$0:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p0, Lcom/android/server/policy/PhoneWindowManager;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    .line 28
    .line 29
    const/4 v0, 0x5

    .line 30
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method
