.class public final Lcom/android/server/input/InputManagerService$InputFilterHost;
.super Landroid/view/IInputFilterHost$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mDisconnected:Z

.field public final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$InputFilterHost;->this$0:Lcom/android/server/input/InputManagerService;

    .line 3
    invoke-direct {p0}, Landroid/view/IInputFilterHost$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final sendInputEvent(Landroid/view/InputEvent;I)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputFilterHost;->this$0:Lcom/android/server/input/InputManagerService;

    .line 3
    const-string v1, "android.permission.INJECT_EVENTS"

    .line 5
    const-string/jumbo v2, "sendInputEvent()"

    .line 8
    sget-boolean v3, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/input/InputManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 17
    const-string/jumbo v0, "event must not be null"

    .line 20
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputFilterHost;->this$0:Lcom/android/server/input/InputManagerService;

    .line 25
    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    .line 27
    monitor-enter v0

    .line 28
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/input/InputManagerService$InputFilterHost;->mDisconnected:Z

    .line 30
    if-nez v1, :cond_0

    .line 32
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$InputFilterHost;->this$0:Lcom/android/server/input/InputManagerService;

    .line 34
    iget-object v1, p0, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 36
    const/high16 p0, 0x4000000

    .line 38
    or-int v9, p2, p0

    .line 40
    const/4 v7, 0x0

    .line 41
    const/4 v8, 0x0

    .line 42
    const/4 v3, 0x0

    .line 43
    const/4 v4, -0x1

    .line 44
    const/4 v5, 0x0

    .line 45
    const/4 v6, 0x0

    .line 46
    move-object v2, p1

    .line 47
    invoke-interface/range {v1 .. v9}, Lcom/android/server/input/NativeInputManagerService;->injectInputEvent(Landroid/view/InputEvent;ZIIIIII)I

    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    :goto_0
    monitor-exit v0

    .line 54
    return-void

    .line 55
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw p0

    .line 57
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 59
    const-string p1, "The INJECT_EVENTS permission is required for injecting input events."

    .line 61
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 64
    throw p0
.end method
