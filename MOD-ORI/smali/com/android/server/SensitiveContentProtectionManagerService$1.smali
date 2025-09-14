.class public final Lcom/android/server/SensitiveContentProtectionManagerService$1;
.super Landroid/media/projection/MediaProjectionManager$Callback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/SensitiveContentProtectionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/SensitiveContentProtectionManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService$1;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/projection/MediaProjectionManager$Callback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onStart(Landroid/media/projection/MediaProjectionInfo;)V
    .locals 3

    .line 1
    const-string v0, "SensitiveContentProtectionManagerService.onProjectionStart"

    .line 2
    .line 3
    const-wide/32 v1, 0x80000

    .line 4
    .line 5
    .line 6
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$1;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    .line 10
    .line 11
    invoke-static {p0, p1}, Lcom/android/server/SensitiveContentProtectionManagerService;->-$$Nest$monProjectionStart(Lcom/android/server/SensitiveContentProtectionManagerService;Landroid/media/projection/MediaProjectionInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method

.method public final onStop(Landroid/media/projection/MediaProjectionInfo;)V
    .locals 2

    .line 1
    const-string p1, "SensitiveContentProtectionManagerService.onProjectionStop"

    .line 2
    .line 3
    const-wide/32 v0, 0x80000

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$1;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/SensitiveContentProtectionManagerService;->onProjectionEnd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method
