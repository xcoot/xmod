.class public final Lcom/android/server/tv/UinputBridge;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCloseGuard:Ldalvik/system/CloseGuard;

.field public mPtr:J

.field public mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;J)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/tv/UinputBridge;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 18
    iput-wide p2, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    .line 19
    iput-object p1, p0, Lcom/android/server/tv/UinputBridge;->mToken:Landroid/os/IBinder;

    .line 20
    const-string p0, "close"

    invoke-virtual {v0, p0}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Ljava/lang/String;III)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/tv/UinputBridge;->mCloseGuard:Ldalvik/system/CloseGuard;

    const/4 v1, 0x1

    if-lt p3, v1, :cond_3

    if-lt p4, v1, :cond_3

    if-lt p5, v1, :cond_2

    const/16 v1, 0x20

    if-gt p5, v1, :cond_2

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p3, p4, p5}, Lcom/android/server/tv/UinputBridge;->nativeOpen(Ljava/lang/String;Ljava/lang/String;III)J

    move-result-wide p3

    iput-wide p3, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    const-wide/16 v1, 0x0

    cmp-long p3, p3, v1

    if-eqz p3, :cond_0

    .line 4
    iput-object p1, p0, Lcom/android/server/tv/UinputBridge;->mToken:Landroid/os/IBinder;

    .line 5
    const-string p0, "close"

    invoke-virtual {v0, p0}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Could not open uinput device "

    .line 7
    invoke-static {p1, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Token cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Touchpad must support between 1 and 32 pointers."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Touchpad must be at least 1x1."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native nativeClear(J)V
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeGamepadOpen(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private static native nativeOpen(Ljava/lang/String;Ljava/lang/String;III)J
.end method

.method private static native nativeSendGamepadAxisValue(JIF)V
.end method

.method private static native nativeSendGamepadKey(JIZ)V
.end method

.method private static native nativeSendKey(JIZ)V
.end method

.method private static native nativeSendPointerDown(JIII)V
.end method

.method private static native nativeSendPointerSync(J)V
.end method

.method private static native nativeSendPointerUp(JI)V
.end method

.method public static openGamepad(Landroid/os/IBinder;Ljava/lang/String;)Lcom/android/server/tv/UinputBridge;
    .locals 4

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Lcom/android/server/tv/UinputBridge;->nativeGamepadOpen(Ljava/lang/String;Ljava/lang/String;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    cmp-long v2, v0, v2

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    new-instance p1, Lcom/android/server/tv/UinputBridge;

    .line 18
    .line 19
    invoke-direct {p1, p0, v0, v1}, Lcom/android/server/tv/UinputBridge;-><init>(Landroid/os/IBinder;J)V

    .line 20
    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 24
    .line 25
    const-string v0, "Could not open uinput device "

    .line 26
    .line 27
    invoke-static {v0, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p0

    .line 35
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    const-string p1, "Token cannot be null"

    .line 38
    .line 39
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0
.end method


# virtual methods
.method public final clear(Landroid/os/IBinder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/UinputBridge;->mToken:Landroid/os/IBinder;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-wide p0, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    .line 10
    .line 11
    invoke-static {p0, p1}, Lcom/android/server/tv/UinputBridge;->nativeClear(J)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final close(Landroid/os/IBinder;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/UinputBridge;->mToken:Landroid/os/IBinder;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    .line 10
    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    cmp-long v0, v0, v2

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/android/server/tv/UinputBridge;->clear(Landroid/os/IBinder;)V

    .line 18
    .line 19
    .line 20
    iget-wide v0, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/android/server/tv/UinputBridge;->nativeClose(J)V

    .line 23
    .line 24
    .line 25
    iput-wide v2, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/tv/UinputBridge;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 28
    .line 29
    invoke-virtual {p0}, Ldalvik/system/CloseGuard;->close()V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public final finalize()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/UinputBridge;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 3
    .line 4
    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/tv/UinputBridge;->mToken:Landroid/os/IBinder;

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lcom/android/server/tv/UinputBridge;->close(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/tv/UinputBridge;->mToken:Landroid/os/IBinder;

    .line 13
    .line 14
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    iput-object v0, p0, Lcom/android/server/tv/UinputBridge;->mToken:Landroid/os/IBinder;

    .line 20
    .line 21
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 22
    .line 23
    .line 24
    throw v1
.end method

.method public final sendGamepadAxisValue(Landroid/os/IBinder;IF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/UinputBridge;->mToken:Landroid/os/IBinder;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-wide p0, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    .line 10
    .line 11
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/tv/UinputBridge;->nativeSendGamepadAxisValue(JIF)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final sendGamepadKey(IZLandroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/UinputBridge;->mToken:Landroid/os/IBinder;

    .line 2
    .line 3
    invoke-interface {v0, p3}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    .line 10
    .line 11
    invoke-static {v0, v1, p1, p2}, Lcom/android/server/tv/UinputBridge;->nativeSendGamepadKey(JIZ)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final sendKeyDown(Landroid/os/IBinder;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/UinputBridge;->mToken:Landroid/os/IBinder;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-wide p0, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-static {p0, p1, p2, v0}, Lcom/android/server/tv/UinputBridge;->nativeSendKey(JIZ)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final sendKeyUp(Landroid/os/IBinder;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/UinputBridge;->mToken:Landroid/os/IBinder;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-wide p0, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {p0, p1, p2, v0}, Lcom/android/server/tv/UinputBridge;->nativeSendKey(JIZ)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final sendPointerDown(Landroid/os/IBinder;III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/UinputBridge;->mToken:Landroid/os/IBinder;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-wide p0, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    .line 10
    .line 11
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/tv/UinputBridge;->nativeSendPointerDown(JIII)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final sendPointerSync(Landroid/os/IBinder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/UinputBridge;->mToken:Landroid/os/IBinder;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-wide p0, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    .line 10
    .line 11
    invoke-static {p0, p1}, Lcom/android/server/tv/UinputBridge;->nativeSendPointerSync(J)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final sendPointerUp(Landroid/os/IBinder;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/UinputBridge;->mToken:Landroid/os/IBinder;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-wide p0, p0, Lcom/android/server/tv/UinputBridge;->mPtr:J

    .line 10
    .line 11
    invoke-static {p0, p1, p2}, Lcom/android/server/tv/UinputBridge;->nativeSendPointerUp(JI)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
